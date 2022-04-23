package org.mozilla.javascript.tools.idswitch;

import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/idswitch/FileBody.class */
public class FileBody {
    private char[] buffer = new char[16384];
    private int bufferEnd;
    ReplaceItem firstReplace;
    ReplaceItem lastReplace;
    private int lineBegin;
    private int lineEnd;
    private int lineNumber;
    private int nextLineStart;

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem.class */
    private static class ReplaceItem {
        int begin;
        int end;
        ReplaceItem next;
        String replacement;

        ReplaceItem(int i, int i2, String str) {
            this.begin = i;
            this.end = i2;
            this.replacement = str;
        }
    }

    private static boolean equals(String str, char[] cArr, int i, int i2) {
        if (str.length() != i2 - i) {
            return false;
        }
        int i3 = 0;
        int i4 = i;
        while (i4 != i2) {
            if (cArr[i4] != str.charAt(i3)) {
                return false;
            }
            i4++;
            i3++;
        }
        return true;
    }

    public char[] getBuffer() {
        return this.buffer;
    }

    public int getLineBegin() {
        return this.lineBegin;
    }

    public int getLineEnd() {
        return this.lineEnd;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public boolean nextLine() {
        int i;
        char c = 0;
        if (this.nextLineStart == this.bufferEnd) {
            this.lineNumber = 0;
            return false;
        }
        int i2 = this.nextLineStart;
        while (true) {
            if (i2 == this.bufferEnd) {
                break;
            }
            c = this.buffer[i2];
            c = c;
            if (c == '\n') {
                break;
            } else if (c == '\r') {
                c = c;
                break;
            } else {
                i2++;
            }
        }
        this.lineBegin = this.nextLineStart;
        this.lineEnd = i2;
        if (i2 == this.bufferEnd) {
            this.nextLineStart = i2;
        } else if (c == '\r' && (i = i2 + 1) != this.bufferEnd && this.buffer[i] == '\n') {
            this.nextLineStart = i2 + 2;
        } else {
            this.nextLineStart = i2 + 1;
        }
        this.lineNumber++;
        return true;
    }

    public void readData(Reader reader) throws IOException {
        int length = this.buffer.length;
        int i = 0;
        while (true) {
            int read = reader.read(this.buffer, i, length - i);
            if (read < 0) {
                this.bufferEnd = i;
                return;
            }
            int i2 = i + read;
            i = i2;
            if (length == i2) {
                length *= 2;
                char[] cArr = new char[length];
                System.arraycopy(this.buffer, 0, cArr, 0, i2);
                this.buffer = cArr;
                i = i2;
            }
        }
    }

    public boolean setReplacement(int i, int i2, String str) {
        if (equals(str, this.buffer, i, i2)) {
            return false;
        }
        ReplaceItem replaceItem = new ReplaceItem(i, i2, str);
        if (this.firstReplace == null) {
            this.lastReplace = replaceItem;
            this.firstReplace = replaceItem;
            return true;
        } else if (i < this.firstReplace.begin) {
            replaceItem.next = this.firstReplace;
            this.firstReplace = replaceItem;
            return true;
        } else {
            ReplaceItem replaceItem2 = this.firstReplace;
            ReplaceItem replaceItem3 = replaceItem2.next;
            while (true) {
                if (replaceItem3 == null) {
                    break;
                } else if (i < replaceItem3.begin) {
                    replaceItem.next = replaceItem3;
                    replaceItem2.next = replaceItem;
                    break;
                } else {
                    replaceItem3 = replaceItem3.next;
                    replaceItem2 = replaceItem3;
                }
            }
            if (replaceItem3 != null) {
                return true;
            }
            this.lastReplace.next = replaceItem;
            return true;
        }
    }

    public void startLineLoop() {
        this.lineNumber = 0;
        this.nextLineStart = 0;
        this.lineEnd = 0;
        this.lineBegin = 0;
    }

    public boolean wasModified() {
        return this.firstReplace != null;
    }

    public void writeData(Writer writer) throws IOException {
        int i = 0;
        for (ReplaceItem replaceItem = this.firstReplace; replaceItem != null; replaceItem = replaceItem.next) {
            int i2 = replaceItem.begin - i;
            if (i2 > 0) {
                writer.write(this.buffer, i, i2);
            }
            writer.write(replaceItem.replacement);
            i = replaceItem.end;
        }
        int i3 = this.bufferEnd - i;
        if (i3 != 0) {
            writer.write(this.buffer, i, i3);
        }
    }

    public void writeInitialData(Writer writer) throws IOException {
        writer.write(this.buffer, 0, this.bufferEnd);
    }
}
