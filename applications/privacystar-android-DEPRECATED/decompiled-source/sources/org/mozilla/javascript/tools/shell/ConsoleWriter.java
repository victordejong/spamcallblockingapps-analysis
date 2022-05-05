package org.mozilla.javascript.tools.shell;

import java.io.OutputStream;
import javax.swing.SwingUtilities;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/ConsoleWriter.class */
class ConsoleWriter extends OutputStream {
    private StringBuffer buffer = new StringBuffer();
    private ConsoleTextArea textArea;

    public ConsoleWriter(ConsoleTextArea consoleTextArea) {
        this.textArea = consoleTextArea;
    }

    private void flushBuffer() {
        String stringBuffer = this.buffer.toString();
        this.buffer.setLength(0);
        SwingUtilities.invokeLater(new ConsoleWrite(this.textArea, stringBuffer));
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        synchronized (this) {
            if (this.buffer.length() > 0) {
                flushBuffer();
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        synchronized (this) {
            this.buffer.append((char) i);
            if (i == 10) {
                flushBuffer();
            }
        }
    }

    public void write(char[] cArr, int i, int i2) {
        synchronized (this) {
            while (i < i2) {
                this.buffer.append(cArr[i]);
                if (cArr[i] == '\n') {
                    flushBuffer();
                }
                i++;
            }
        }
    }
}
