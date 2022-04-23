package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import android.database.sqlite.SQLiteDatabase;
import com.mopub.common.Constants;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0;
/* renamed from: c.d.b.b.i.y.k.m */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/m.class */
public final /* synthetic */ class C2666m implements C2639b0.AbstractC2641b {

    /* renamed from: a */
    public final long f9797a;

    public C2666m(long j) {
        this.f9797a = j;
    }

    /* renamed from: a */
    public static C2639b0.AbstractC2641b m29313a(long j) {
        return new C2666m(j);
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0.AbstractC2641b
    public Object apply(Object obj) {
        Integer valueOf;
        valueOf = Integer.valueOf(((SQLiteDatabase) obj).delete(Constants.VIDEO_TRACKING_EVENTS_KEY, "timestamp_ms < ?", new String[]{String.valueOf(this.f9797a)}));
        return valueOf;
    }
}
