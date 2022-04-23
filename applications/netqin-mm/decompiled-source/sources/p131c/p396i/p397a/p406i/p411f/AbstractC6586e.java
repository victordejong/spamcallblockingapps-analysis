package p131c.p396i.p397a.p406i.p411f;

import android.os.SystemClock;
import android.view.ViewGroup;
import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p398e.C6506b;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p417j.C6614a;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: c.i.a.i.f.e */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/e.class */
public abstract class AbstractC6586e<AdData> extends AbstractC6580b<AdData> {

    /* renamed from: d */
    public C6506b f20391d;

    /* renamed from: c.i.a.i.f.e$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/e$a.class */
    public class RunnableC6587a implements Runnable {
        public RunnableC6587a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC6586e eVar = AbstractC6586e.this;
            C6549b.m20532a(new C6550c(eVar.f20385b, 301, String.valueOf(eVar.f20391d.m20633e())));
        }
    }

    public AbstractC6586e(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    @Override // p131c.p396i.p397a.p406i.p411f.AbstractC6580b
    /* renamed from: a */
    public void mo20446a() {
        if (this.f20385b != null) {
            C6618e a = C6618e.m20334a();
            a.m20331a("key_place_frequency_" + this.f20385b.getPlaceId(), SystemClock.elapsedRealtime());
            C6614a.m20367a(new RunnableC6587a());
        }
    }

    @Override // p131c.p396i.p397a.p406i.p411f.AbstractC6580b
    /* renamed from: a */
    public boolean mo20445a(ViewGroup viewGroup, AbstractC6514f<AdData> fVar) {
        if (fVar == null || fVar.m20609b() == null || fVar.m20609b().size() == 0) {
            return false;
        }
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
        this.f20391d = (C6506b) fVar;
        return mo20439a((AbstractC6586e<AdData>) fVar.m20609b().get(0));
    }

    /* renamed from: a */
    public abstract boolean mo20439a(AdData addata);
}
