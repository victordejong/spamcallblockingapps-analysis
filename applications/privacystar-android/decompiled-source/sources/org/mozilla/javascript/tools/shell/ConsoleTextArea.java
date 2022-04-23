package org.mozilla.javascript.tools.shell;

import java.awt.Font;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JTextArea;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.text.BadLocationException;
import javax.swing.text.Document;
import javax.swing.text.Segment;
import org.apache.commons.p018io.IOUtils;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/ConsoleTextArea.class */
public class ConsoleTextArea extends JTextArea implements KeyListener, DocumentListener {
    static final long serialVersionUID = 8557083244830872961L;
    private PrintWriter inPipe;
    private int historyIndex = -1;
    private int outputMark = 0;
    private List<String> history = new ArrayList();
    private ConsoleWriter console1 = new ConsoleWriter(this);
    private ConsoleWriter console2 = new ConsoleWriter(this);
    private PrintStream out = new PrintStream((OutputStream) this.console1, true);
    private PrintStream err = new PrintStream((OutputStream) this.console2, true);

    /* renamed from: in */
    private PipedInputStream f849in = new PipedInputStream();

    public ConsoleTextArea(String[] strArr) {
        PipedOutputStream pipedOutputStream = new PipedOutputStream();
        this.inPipe = new PrintWriter(pipedOutputStream);
        try {
            pipedOutputStream.connect(this.f849in);
        } catch (IOException e) {
            e.printStackTrace();
        }
        getDocument().addDocumentListener(this);
        addKeyListener(this);
        setLineWrap(true);
        setFont(new Font("Monospaced", 0, 12));
    }

    public void changedUpdate(DocumentEvent documentEvent) {
        synchronized (this) {
        }
    }

    public void eval(String str) {
        this.inPipe.write(str);
        this.inPipe.write(IOUtils.LINE_SEPARATOR_UNIX);
        this.inPipe.flush();
        this.console1.flush();
    }

    public PrintStream getErr() {
        return this.err;
    }

    public InputStream getIn() {
        return this.f849in;
    }

    public PrintStream getOut() {
        return this.out;
    }

    public void insertUpdate(DocumentEvent documentEvent) {
        synchronized (this) {
            int length = documentEvent.getLength();
            if (this.outputMark > documentEvent.getOffset()) {
                this.outputMark += length;
            }
        }
    }

    public void keyPressed(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 8 || keyCode == 37) {
            if (this.outputMark == getCaretPosition()) {
                keyEvent.consume();
            }
        } else if (keyCode == 36) {
            int caretPosition = getCaretPosition();
            if (caretPosition == this.outputMark) {
                keyEvent.consume();
            } else if (caretPosition > this.outputMark && !keyEvent.isControlDown()) {
                if (keyEvent.isShiftDown()) {
                    moveCaretPosition(this.outputMark);
                } else {
                    setCaretPosition(this.outputMark);
                }
                keyEvent.consume();
            }
        } else if (keyCode == 10) {
            returnPressed();
            keyEvent.consume();
        } else if (keyCode == 38) {
            this.historyIndex--;
            if (this.historyIndex >= 0) {
                if (this.historyIndex >= this.history.size()) {
                    this.historyIndex = this.history.size() - 1;
                }
                if (this.historyIndex >= 0) {
                    String str = this.history.get(this.historyIndex);
                    replaceRange(str, this.outputMark, getDocument().getLength());
                    int length = this.outputMark + str.length();
                    select(length, length);
                } else {
                    this.historyIndex++;
                }
            } else {
                this.historyIndex++;
            }
            keyEvent.consume();
        } else if (keyCode == 40) {
            int i = this.outputMark;
            int i2 = i;
            if (this.history.size() > 0) {
                this.historyIndex++;
                if (this.historyIndex < 0) {
                    this.historyIndex = 0;
                }
                int length2 = getDocument().getLength();
                if (this.historyIndex < this.history.size()) {
                    String str2 = this.history.get(this.historyIndex);
                    replaceRange(str2, this.outputMark, length2);
                    i2 = str2.length() + this.outputMark;
                } else {
                    this.historyIndex = this.history.size();
                    replaceRange("", this.outputMark, length2);
                    i2 = i;
                }
            }
            select(i2, i2);
            keyEvent.consume();
        }
    }

    public void keyReleased(KeyEvent keyEvent) {
        synchronized (this) {
        }
    }

    public void keyTyped(KeyEvent keyEvent) {
        if (keyEvent.getKeyChar() == '\b') {
            if (this.outputMark == getCaretPosition()) {
                keyEvent.consume();
            }
        } else if (getCaretPosition() < this.outputMark) {
            setCaretPosition(this.outputMark);
        }
    }

    public void postUpdateUI() {
        synchronized (this) {
            requestFocus();
            setCaret(getCaret());
            select(this.outputMark, this.outputMark);
        }
    }

    public void removeUpdate(DocumentEvent documentEvent) {
        synchronized (this) {
            int length = documentEvent.getLength();
            int offset = documentEvent.getOffset();
            if (this.outputMark > offset) {
                if (this.outputMark >= offset + length) {
                    this.outputMark -= length;
                } else {
                    this.outputMark = offset;
                }
            }
        }
    }

    void returnPressed() {
        synchronized (this) {
            Document document = getDocument();
            int length = document.getLength();
            Segment segment = new Segment();
            try {
                document.getText(this.outputMark, length - this.outputMark, segment);
            } catch (BadLocationException e) {
                e.printStackTrace();
            }
            if (segment.count > 0) {
                this.history.add(segment.toString());
            }
            this.historyIndex = this.history.size();
            this.inPipe.write(segment.array, segment.offset, segment.count);
            append(IOUtils.LINE_SEPARATOR_UNIX);
            this.outputMark = document.getLength();
            this.inPipe.write(IOUtils.LINE_SEPARATOR_UNIX);
            this.inPipe.flush();
            this.console1.flush();
        }
    }

    public void select(int i, int i2) {
        requestFocus();
        ConsoleTextArea.super.select(i, i2);
    }

    public void write(String str) {
        synchronized (this) {
            insert(str, this.outputMark);
            this.outputMark += str.length();
            select(this.outputMark, this.outputMark);
        }
    }
}
