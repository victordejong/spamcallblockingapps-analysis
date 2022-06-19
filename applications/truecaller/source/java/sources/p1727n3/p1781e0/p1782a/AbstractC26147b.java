package p1727n3.p1781e0.p1782a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.os.CancellationSignal;
import java.io.Closeable;
/* renamed from: n3.e0.a.b */
/* loaded from: classes-dex2jar.jar:n3/e0/a/b.class */
public interface AbstractC26147b extends Closeable {
    /* renamed from: H */
    Cursor mo2671H(AbstractC26153e abstractC26153e, CancellationSignal cancellationSignal);

    /* renamed from: J1 */
    AbstractC26154f mo2670J1(String str);

    /* renamed from: M */
    void mo2669M();

    /* renamed from: S0 */
    void mo2668S0(String str) throws SQLException;

    /* renamed from: U1 */
    Cursor mo2667U1(String str);

    /* renamed from: X */
    Cursor mo2666X(AbstractC26153e abstractC26153e);

    /* renamed from: X1 */
    boolean mo2665X1();

    /* renamed from: b1 */
    void mo2663b1();

    /* renamed from: c1 */
    void mo2662c1(String str, Object[] objArr) throws SQLException;

    /* renamed from: e2 */
    boolean mo2660e2();

    /* renamed from: f1 */
    void mo2659f1();

    boolean isOpen();

    /* renamed from: s0 */
    long mo2658s0(String str, int i, ContentValues contentValues) throws SQLException;

    /* renamed from: w */
    void mo2657w();
}
