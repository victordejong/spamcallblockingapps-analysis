package p193e.p194a.p1049l4;

import android.content.Context;
import com.truecaller.presence.RingerModeListenerWorker;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1868v.AbstractC27012l0;
/* renamed from: e.a.l4.s */
/* loaded from: classes12-dex2jar.jar:e/a/l4/s.class */
public final class C17430s<T> implements AbstractC27012l0<C26855x> {

    /* renamed from: a */
    public final /* synthetic */ Context f48808a;

    public C17430s(Context context) {
        this.f48808a = context;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(C26855x c26855x) {
        C26855x c26855x2 = c26855x;
        String str = "Work info is received:" + c26855x2;
        C26855x.EnumC26856a enumC26856a = c26855x2 != null ? c26855x2.f75110b : null;
        if (enumC26856a == null) {
            return;
        }
        int ordinal = enumC26856a.ordinal();
        if (ordinal != 2 && ordinal != 3) {
            return;
        }
        RingerModeListenerWorker.m34794n(this.f48808a);
    }
}
