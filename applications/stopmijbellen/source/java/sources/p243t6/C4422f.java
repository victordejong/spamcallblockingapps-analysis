package p243t6;

import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import p233s6.AbstractC4314i;
import p233s6.C4315j;
import p254u6.C4500f;
import p276w6.C4740a;
/* renamed from: t6.f */
/* loaded from: classes-dex2jar.jar:t6/f.class */
public final class C4422f {
    /* renamed from: a */
    public static AbstractC4314i m941a(C4740a c4740a) throws JsonParseException {
        boolean z;
        EOFException e;
        try {
            try {
                c4740a.m524Z();
                z = false;
                try {
                    return ((C4500f.C4524u) C4500f.f13901B).m865M(c4740a);
                } catch (EOFException e2) {
                    e = e2;
                    if (!z) {
                        throw new JsonSyntaxException(e);
                    }
                    return C4315j.f13469a;
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
}
