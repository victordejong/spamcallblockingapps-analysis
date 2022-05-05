package org.mozilla.javascript.tools.debugger;

import java.awt.Font;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.swing.JTextArea;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.text.BadLocationException;
import javax.swing.text.Document;
import javax.swing.text.Segment;
import org.apache.commons.p018io.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/EvalTextArea.class */
public class EvalTextArea extends JTextArea implements KeyListener, DocumentListener {
    private static final long serialVersionUID = -3918033649601064194L;
    private SwingGui debugGui;
    private int outputMark;
    private int historyIndex = -1;
    private List<String> history = Collections.synchronizedList(new ArrayList());

    public EvalTextArea(SwingGui swingGui) {
        this.debugGui = swingGui;
        Document document = getDocument();
        document.addDocumentListener(this);
        addKeyListener(this);
        setLineWrap(true);
        setFont(new Font("Monospaced", 0, 12));
        append("% ");
        this.outputMark = document.getLength();
    }

    private void returnPressed() {
        synchronized (this) {
            Document document = getDocument();
            int length = document.getLength();
            Segment segment = new Segment();
            try {
                document.getText(this.outputMark, length - this.outputMark, segment);
            } catch (BadLocationException e) {
                e.printStackTrace();
            }
            String segment2 = segment.toString();
            if (this.debugGui.dim.stringIsCompilableUnit(segment2)) {
                if (segment2.trim().length() > 0) {
                    this.history.add(segment2);
                    this.historyIndex = this.history.size();
                }
                append(IOUtils.LINE_SEPARATOR_UNIX);
                String eval = this.debugGui.dim.eval(segment2);
                if (eval.length() > 0) {
                    append(eval);
                    append(IOUtils.LINE_SEPARATOR_UNIX);
                }
                append("% ");
                this.outputMark = document.getLength();
            } else {
                append(IOUtils.LINE_SEPARATOR_UNIX);
            }
        }
    }

    public void changedUpdate(DocumentEvent documentEvent) {
        synchronized (this) {
        }
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

    public void select(int i, int i2) {
        EvalTextArea.super.select(i, i2);
    }

    public void write(String str) {
        synchronized (this) {
            insert(str, this.outputMark);
            this.outputMark += str.length();
            select(this.outputMark, this.outputMark);
        }
    }
}
