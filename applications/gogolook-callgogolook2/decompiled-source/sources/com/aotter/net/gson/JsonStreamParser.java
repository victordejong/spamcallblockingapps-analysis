package com.aotter.net.gson;

import com.aotter.net.gson.internal.Streams;
import com.aotter.net.gson.stream.JsonReader;
import com.aotter.net.gson.stream.JsonToken;
import com.aotter.net.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/JsonStreamParser.class */
public final class JsonStreamParser implements Iterator<JsonElement> {
    public final Object lock;
    public final JsonReader parser;

    public JsonStreamParser(Reader reader) {
        this.parser = new JsonReader(reader);
        this.parser.setLenient(true);
        this.lock = new Object();
    }

    public JsonStreamParser(String str) {
        this(new StringReader(str));
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        boolean z;
        synchronized (this.lock) {
            try {
                z = this.parser.peek() != JsonToken.END_DOCUMENT;
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
        return z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public JsonElement next() {
        if (hasNext()) {
            try {
                return Streams.parse(this.parser);
            } catch (JsonParseException e) {
                Throwable th = e;
                if (e.getCause() instanceof EOFException) {
                    th = new NoSuchElementException();
                }
                throw th;
            } catch (OutOfMemoryError e2) {
                throw new JsonParseException("Failed parsing JSON source to Json", e2);
            } catch (StackOverflowError e3) {
                throw new JsonParseException("Failed parsing JSON source to Json", e3);
            }
        } else {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
