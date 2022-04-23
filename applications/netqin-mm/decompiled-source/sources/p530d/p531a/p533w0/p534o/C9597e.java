package p530d.p531a.p533w0.p534o;

import com.android.volley.Request;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: d.a.w0.o.e */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/e.class */
public final class C9597e {

    /* renamed from: a */
    public static final String[] f36628a = new String[0];

    /* renamed from: b */
    public static final Charset f36629b = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: a */
    public static <T> List<T> m2280a(T[] tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* renamed from: a */
    public static <T> List<T> m2279a(T[] tArr, T[] tArr2) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            int length = tArr2.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    T t2 = tArr2[i];
                    if (t.equals(t2)) {
                        arrayList.add(t2);
                        break;
                    }
                    i++;
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> T[] m2281a(Class<T> cls, T[] tArr, T[] tArr2) {
        List a = m2279a(tArr, tArr2);
        return (T[]) a.toArray((Object[]) Array.newInstance((Class<?>) cls, a.size()));
    }
}
