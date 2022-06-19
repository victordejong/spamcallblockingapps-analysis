package p233s6;

import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.StringReader;
import p243t6.C4422f;
import p276w6.C4740a;
/* renamed from: s6.l */
/* loaded from: classes-dex2jar.jar:s6/l.class */
public final class C4317l {
    /* renamed from: a */
    public AbstractC4314i m1107a(String str) throws JsonSyntaxException {
        try {
            C4740a c4740a = new C4740a(new StringReader(str));
            AbstractC4314i m1106b = m1106b(c4740a);
            if (!(m1106b instanceof C4315j) && c4740a.m524Z() != 10) {
                throw new JsonSyntaxException("Did not consume the entire document.");
            }
            return m1106b;
        } catch (MalformedJsonException e) {
            throw new JsonSyntaxException(e);
        } catch (IOException e2) {
            throw new JsonIOException(e2);
        } catch (NumberFormatException e3) {
            throw new JsonSyntaxException(e3);
        }
    }

    /* renamed from: b */
    public AbstractC4314i m1106b(C4740a c4740a) throws JsonIOException, JsonSyntaxException {
        boolean z = c4740a.f14604b;
        c4740a.f14604b = true;
        try {
            try {
                AbstractC4314i m941a = C4422f.m941a(c4740a);
                c4740a.f14604b = z;
                return m941a;
            } catch (OutOfMemoryError e) {
                throw new JsonParseException("Failed parsing JSON source: " + c4740a + " to Json", e);
            } catch (StackOverflowError e2) {
                throw new JsonParseException("Failed parsing JSON source: " + c4740a + " to Json", e2);
            }
        } catch (Throwable th) {
            c4740a.f14604b = z;
            throw th;
        }
    }
}
