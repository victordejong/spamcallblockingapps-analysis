package p193e.p194a.p1221t.p1230b.p1231c.p1232k;

import android.os.Handler;
import android.telephony.PhoneStateListener;
import com.truecaller.android.sdk.TrueException;
import java.util.Objects;
import p193e.p194a.p1221t.p1230b.p1231c.p1233l.C20376e;
/* renamed from: e.a.t.b.c.k.d */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/k/d.class */
public class C20370d extends PhoneStateListener {

    /* renamed from: a */
    public final C20376e f57230a;

    public C20370d(C20376e c20376e) {
        this.f57230a = c20376e;
    }

    @Override // android.telephony.PhoneStateListener
    public void onCallStateChanged(int i, String str) {
        super.onCallStateChanged(i, str);
        if (i == 1) {
            C20376e c20376e = this.f57230a;
            Objects.requireNonNull(c20376e);
            if (str != null && str.length() != 0) {
                c20376e.f57246k = str;
                c20376e.m11222d(false);
                return;
            }
            Handler handler = c20376e.f57244i;
            if (handler != null) {
                handler.removeCallbacks(c20376e.f57243h);
                c20376e.f57244i = null;
            }
            c20376e.f57234a.onRequestFailure(4, new TrueException(4, TrueException.TYPE_MISSING_PERMISSIONS_MESSAGE));
        }
    }
}
