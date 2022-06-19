package com.google.gson.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.bind.C16010j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
/* renamed from: com.google.gson.internal.k */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/k.class */
public final class C16080k {

    /* renamed from: com.google.gson.internal.k$a */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/k$a.class */
    public static final class C16081a extends Writer {

        /* renamed from: a */
        private final Appendable f56839a;

        /* renamed from: b */
        private final C16082a f56840b = new C16082a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.gson.internal.k$a$a */
        /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/k$a$a.class */
        public static final class C16082a implements CharSequence {

            /* renamed from: a */
            char[] f56841a;

            C16082a() {
            }

            @Override // java.lang.CharSequence
            public final char charAt(int i) {
                return this.f56841a[i];
            }

            @Override // java.lang.CharSequence
            public final int length() {
                return this.f56841a.length;
            }

            @Override // java.lang.CharSequence
            public final CharSequence subSequence(int i, int i2) {
                return new String(this.f56841a, i, i2 - i);
            }
        }

        C16081a(Appendable appendable) {
            this.f56839a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }

        @Override // java.io.Writer
        public final void write(int i) throws IOException {
            this.f56839a.append((char) i);
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) throws IOException {
            this.f56840b.f56841a = cArr;
            this.f56839a.append(this.f56840b, i, i2 + i);
        }
    }

    private C16080k() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static JsonElement m7868a(JsonReader jsonReader) throws JsonParseException {
        boolean z;
        EOFException e;
        try {
            try {
                jsonReader.peek();
                z = false;
                try {
                    return C16010j.f56726X.read(jsonReader);
                } catch (EOFException e2) {
                    e = e2;
                    if (!z) {
                        throw new JsonSyntaxException(e);
                    }
                    return JsonNull.INSTANCE;
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

    /* renamed from: a */
    public static Writer m7867a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new C16081a(appendable);
    }

    /* renamed from: a */
    public static void m7869a(JsonElement jsonElement, JsonWriter jsonWriter) throws IOException {
        C16010j.f56726X.write(jsonWriter, jsonElement);
    }
}
