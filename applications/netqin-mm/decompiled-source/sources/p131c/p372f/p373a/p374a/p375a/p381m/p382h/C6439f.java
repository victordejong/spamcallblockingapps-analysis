package p131c.p372f.p373a.p374a.p375a.p381m.p382h;

import android.content.Context;
import com.integralads.avid.library.inmobi.session.internal.MediaType;
import com.integralads.avid.library.inmobi.session.internal.SessionType;
import p131c.p372f.p373a.p374a.p375a.p381m.C6433g;
import p131c.p372f.p373a.p374a.p375a.p386o.C6460b;
/* renamed from: c.f.a.a.a.m.h.f */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/f.class */
public class C6439f extends AbstractC6438e {

    /* renamed from: n */
    public C6460b f20119n = new C6460b(this, m5450c());

    public C6439f(Context context, String str, C6433g gVar) {
        super(context, str, gVar);
    }

    @Override // com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession
    /* renamed from: e */
    public MediaType mo5447e() {
        return MediaType.VIDEO;
    }

    @Override // com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession
    /* renamed from: g */
    public SessionType mo5445g() {
        return SessionType.MANAGED_VIDEO;
    }

    @Override // com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession
    /* renamed from: m */
    public void mo5439m() {
        this.f20119n.m20915u();
        super.mo5439m();
    }

    /* renamed from: v */
    public C6460b m20877v() {
        return this.f20119n;
    }
}
