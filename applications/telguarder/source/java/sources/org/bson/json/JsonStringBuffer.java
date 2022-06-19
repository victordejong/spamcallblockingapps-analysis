package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonStringBuffer.class */
class JsonStringBuffer implements JsonBuffer {
    private final String buffer;
    private boolean eof;
    private int position;

    public JsonStringBuffer(String str) {
        this.buffer = str;
    }

    @Override // org.bson.json.JsonBuffer
    public void discard(int i) {
    }

    @Override // org.bson.json.JsonBuffer
    public int getPosition() {
        return this.position;
    }

    @Override // org.bson.json.JsonBuffer
    public int mark() {
        return this.position;
    }

    @Override // org.bson.json.JsonBuffer
    public int read() {
        if (!this.eof) {
            if (this.position >= this.buffer.length()) {
                this.eof = true;
                return -1;
            }
            String str = this.buffer;
            int i = this.position;
            this.position = i + 1;
            return str.charAt(i);
        }
        throw new JsonParseException("Trying to read past EOF.");
    }

    @Override // org.bson.json.JsonBuffer
    public void reset(int i) {
        if (i <= this.position) {
            this.position = i;
            return;
        }
        throw new IllegalStateException("mark cannot reset ahead of position, only back");
    }

    @Override // org.bson.json.JsonBuffer
    public void unread(int i) {
        this.eof = false;
        if (i == -1 || this.buffer.charAt(this.position - 1) != i) {
            return;
        }
        this.position--;
    }
}
