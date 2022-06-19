package p193e.p194a.p1334w.p1336b;

import android.os.AsyncTask;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.log.AssertionUtil;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p193e.p194a.p1334w.p1336b.p1337c.C21180a;
import p193e.p194a.p1334w.p1336b.p1338d.C21183a;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
/* renamed from: e.a.w.b.a */
/* loaded from: classes12-dex2jar.jar:e/a/w/b/a.class */
public class AsyncTaskC21177a extends AsyncTask<Void, Void, C21180a> {

    /* renamed from: a */
    public final AbstractC21179b f59354a;

    /* renamed from: b */
    public final C21183a f59355b;

    /* renamed from: c */
    public final WeakReference<AbstractC21178a> f59356c;

    /* renamed from: e.a.w.b.a$a */
    /* loaded from: classes12-dex2jar.jar:e/a/w/b/a$a.class */
    public interface AbstractC21178a {
        /* renamed from: af */
        void mo10166af();

        /* renamed from: e4 */
        void mo10165e4(C21180a c21180a);
    }

    public AsyncTaskC21177a(AbstractC21179b abstractC21179b, C21183a c21183a, AbstractC21178a abstractC21178a) {
        this.f59354a = abstractC21179b;
        this.f59355b = c21183a;
        this.f59356c = new WeakReference<>(abstractC21178a);
    }

    @Override // android.os.AsyncTask
    public C21180a doInBackground(Void[] voidArr) {
        C21180a c21180a;
        try {
            Objects.requireNonNull(this.f59355b);
            c21180a = (C21180a) ((C21183a.AbstractC21184a) C8367d.m28633a(KnownEndpoints.REFERRAL, C21183a.AbstractC21184a.class)).m10163a().execute().b;
        } catch (IOException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            c21180a = null;
        }
        return c21180a;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(C21180a c21180a) {
        C21180a c21180a2 = c21180a;
        if (c21180a2 != null) {
            this.f59354a.mo13034b("referralCode", c21180a2.f59358a);
            this.f59354a.mo13034b("referralLink", c21180a2.f59359b);
        }
        AbstractC21178a abstractC21178a = this.f59356c.get();
        if (abstractC21178a == null) {
            return;
        }
        if (c21180a2 == null) {
            abstractC21178a.mo10166af();
        } else {
            abstractC21178a.mo10165e4(c21180a2);
        }
    }
}
