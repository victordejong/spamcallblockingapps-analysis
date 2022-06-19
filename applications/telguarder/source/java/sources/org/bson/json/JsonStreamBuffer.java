package org.bson.json;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonStreamBuffer.class */
class JsonStreamBuffer implements JsonBuffer {
    private char[] buffer;
    private int bufferCount;
    private int bufferStartPos;
    private boolean eof;
    private final int initialBufferSize;
    private int lastChar;
    private final List<Integer> markedPositions;
    private int position;
    private final Reader reader;
    private boolean reuseLastChar;

    public JsonStreamBuffer(Reader reader) {
        this(reader, 16);
    }

    JsonStreamBuffer(Reader reader, int i) {
        this.markedPositions = new ArrayList();
        this.initialBufferSize = i;
        this.reader = reader;
        resetBuffer();
    }

    private void addToBuffer(char c) {
        if (!this.markedPositions.isEmpty()) {
            int i = this.bufferCount;
            char[] cArr = this.buffer;
            if (i == cArr.length) {
                char[] cArr2 = new char[cArr.length * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i);
                this.buffer = cArr2;
            }
            char[] cArr3 = this.buffer;
            int i2 = this.bufferCount;
            cArr3[i2] = c;
            this.bufferCount = i2 + 1;
        }
    }

    private void resetBuffer() {
        this.bufferStartPos = -1;
        this.bufferCount = 0;
        this.buffer = new char[this.initialBufferSize];
    }

    @Override // org.bson.json.JsonBuffer
    public void discard(int i) {
        int indexOf = this.markedPositions.indexOf(Integer.valueOf(i));
        if (indexOf == -1) {
            return;
        }
        List<Integer> list = this.markedPositions;
        list.subList(indexOf, list.size()).clear();
    }

    @Override // org.bson.json.JsonBuffer
    public int getPosition() {
        return this.position;
    }

    @Override // org.bson.json.JsonBuffer
    public int mark() {
        if (this.bufferCount == 0) {
            this.bufferStartPos = this.position;
        }
        if (!this.markedPositions.contains(Integer.valueOf(this.position))) {
            this.markedPositions.add(Integer.valueOf(this.position));
        }
        return this.position;
    }

    @Override // org.bson.json.JsonBuffer
    public int read() {
        if (!this.eof) {
            if (this.reuseLastChar) {
                this.reuseLastChar = false;
                int i = this.lastChar;
                this.lastChar = -1;
                this.position++;
                return i;
            }
            int i2 = this.position;
            int i3 = this.bufferStartPos;
            if (i2 - i3 < this.bufferCount) {
                char c = this.buffer[i2 - i3];
                this.lastChar = c;
                this.position = i2 + 1;
                return c;
            }
            if (this.markedPositions.isEmpty()) {
                resetBuffer();
            }
            try {
                int read = this.reader.read();
                if (read != -1) {
                    this.lastChar = read;
                    addToBuffer((char) read);
                }
                this.position++;
                if (read == -1) {
                    this.eof = true;
                }
                return read;
            } catch (IOException e) {
                throw new JsonParseException(e);
            }
        }
        throw new JsonParseException("Trying to read past EOF.");
    }

    @Override // org.bson.json.JsonBuffer
    public void reset(int i) {
        if (i <= this.position) {
            int indexOf = this.markedPositions.indexOf(Integer.valueOf(i));
            if (indexOf == -1) {
                throw new IllegalArgumentException("mark invalidated");
            }
            if (i != this.position) {
                this.reuseLastChar = false;
            }
            List<Integer> list = this.markedPositions;
            list.subList(indexOf, list.size()).clear();
            this.position = i;
            return;
        }
        throw new IllegalStateException("mark cannot reset ahead of position, only back");
    }

    @Override // org.bson.json.JsonBuffer
    public void unread(int i) {
        this.eof = false;
        if (i == -1 || this.lastChar != i) {
            return;
        }
        this.reuseLastChar = true;
        this.position--;
    }
}
