package com.google.gson.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.bind.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/k.class */
public final class k {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/k$a.class */
    public static final class a extends Writer {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f32809a;

        /* renamed from: b  reason: collision with root package name */
        private final C0525a f32810b = new C0525a();

        /* renamed from: com.google.gson.internal.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/k$a$a.class */
        static final class C0525a implements CharSequence {

            /* renamed from: a  reason: collision with root package name */
            char[] f32811a;

            C0525a() {
            }

            @Override // java.lang.CharSequence
            public final char charAt(int i) {
                return this.f32811a[i];
            }

            @Override // java.lang.CharSequence
            public final int length() {
                return this.f32811a.length;
            }

            @Override // java.lang.CharSequence
            public final CharSequence subSequence(int i, int i2) {
                return new String(this.f32811a, i, i2 - i);
            }
        }

        a(Appendable appendable) {
            this.f32809a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }

        @Override // java.io.Writer
        public final void write(int i) throws IOException {
            this.f32809a.append((char) i);
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) throws IOException {
            this.f32810b.f32811a = cArr;
            this.f32809a.append(this.f32810b, i, i2 + i);
        }
    }

    private k() {
        throw new UnsupportedOperationException();
    }

    public static JsonElement a(JsonReader jsonReader) throws JsonParseException {
        boolean z;
        EOFException e;
        try {
            try {
                jsonReader.peek();
                z = false;
                try {
                    return j.X.read(jsonReader);
                } catch (EOFException e2) {
                    e = e2;
                    if (z) {
                        return JsonNull.INSTANCE;
                    }
                    throw new JsonSyntaxException(e);
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (MalformedJsonException e4) {
            throw new JsonSyntaxException(e4);
        } catch (IOException e5) {
            throw new JsonIOException(e5);
        } catch (NumberFormatException e6) {
            throw new JsonSyntaxException(e6);
        }
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    public static void a(JsonElement jsonElement, JsonWriter jsonWriter) throws IOException {
        j.X.write(jsonWriter, jsonElement);
    }
}
