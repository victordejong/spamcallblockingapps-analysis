package p020b.p070r.p071a;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;
/* renamed from: b.r.a.b */
/* loaded from: classes-dex2jar.jar:b/r/a/b.class */
public interface AbstractC1772b extends Closeable {
    /* renamed from: G */
    void mo28919G();

    /* renamed from: H */
    void mo28918H(String str, Object[] objArr);

    /* renamed from: M */
    Cursor mo28917M(String str);

    /* renamed from: O */
    void mo28916O();

    /* renamed from: S */
    Cursor mo28915S(AbstractC1779e abstractC1779e);

    /* renamed from: V */
    boolean mo28914V();

    String getPath();

    /* renamed from: h */
    void mo28912h();

    boolean isOpen();

    /* renamed from: m */
    List<Pair<String, String>> mo28911m();

    /* renamed from: n */
    void mo28910n(String str);

    /* renamed from: s */
    AbstractC1780f mo28909s(String str);

    /* renamed from: x */
    Cursor mo28908x(AbstractC1779e abstractC1779e, CancellationSignal cancellationSignal);
}
