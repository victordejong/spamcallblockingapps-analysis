package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import android.database.sqlite.SQLiteDatabase;
import com.mopub.common.Constants;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0;
/* renamed from: h.i.a.b.j.y.k.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/m.class */
public final /* synthetic */ class C6683m implements C6656b0.AbstractC6658b {

    /* renamed from: a */
    public final long f16564a;

    public C6683m(long j) {
        this.f16564a = j;
    }

    /* renamed from: a */
    public static C6656b0.AbstractC6658b m22078a(long j) {
        return new C6683m(j);
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0.AbstractC6658b
    public Object apply(Object obj) {
        Integer valueOf;
        valueOf = Integer.valueOf(((SQLiteDatabase) obj).delete(Constants.VIDEO_TRACKING_EVENTS_KEY, "timestamp_ms < ?", new String[]{String.valueOf(this.f16564a)}));
        return valueOf;
    }
}
