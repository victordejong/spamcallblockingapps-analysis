package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.internal.base.zap;
/* renamed from: e.m.a.f.e.a.a.o */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/o.class */
public final class HandlerC24935o extends zap {

    /* renamed from: a */
    public final /* synthetic */ zaaz f69856a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC24935o(zaaz zaazVar, Looper looper) {
        super(looper);
        this.f69856a = zaazVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i != 2) {
                return;
            }
            zaaz.m38987y(this.f69856a);
            return;
        }
        zaaz zaazVar = this.f69856a;
        zaazVar.f5809b.lock();
        try {
            if (zaazVar.m38990v()) {
                zaazVar.m39002A();
            }
        } finally {
            zaazVar.f5809b.unlock();
        }
    }
}
