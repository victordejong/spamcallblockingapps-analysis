package p193e.p194a.p195a.p269n.p270j;

import android.database.ContentObserver;
import android.os.Handler;
/* renamed from: e.a.a.n.j.u */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/u.class */
public final class C7040u extends ContentObserver {

    /* renamed from: a */
    public final /* synthetic */ C7041v f22704a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7040u(C7041v c7041v, Handler handler) {
        super(handler);
        this.f22704a = c7041v;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        this.f22704a.m30251Jj();
    }
}
