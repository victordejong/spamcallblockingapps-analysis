package p193e.p194a.p1159q4;

import android.os.AsyncTask;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.log.AssertionUtil;
import com.truecaller.referrals.data.entities.RedeemCodeResponse;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p1334w.p1336b.p1338d.C21183a;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import w3.c.a.a.a.h;
/* renamed from: e.a.q4.e0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/e0.class */
public class AsyncTaskC19632e0 extends AsyncTask<Void, Void, RedeemCodeResponse> {

    /* renamed from: a */
    public final AbstractC21179b f54559a;

    /* renamed from: b */
    public final WeakReference<AbstractC19633a> f54560b;

    /* renamed from: c */
    public final C21183a f54561c;

    /* renamed from: e.a.q4.e0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/q4/e0$a.class */
    public interface AbstractC19633a {
        /* renamed from: Bd */
        void mo13071Bd(RedeemCodeResponse redeemCodeResponse);

        /* renamed from: S9 */
        void mo13054S9(String str);
    }

    public AsyncTaskC19632e0(AbstractC21179b abstractC21179b, C21183a c21183a, AbstractC19633a abstractC19633a) {
        this.f54559a = abstractC21179b;
        this.f54561c = c21183a;
        this.f54560b = abstractC19633a != null ? new WeakReference<>(abstractC19633a) : null;
    }

    @Override // android.os.AsyncTask
    public RedeemCodeResponse doInBackground(Void[] voidArr) {
        RedeemCodeResponse redeemCodeResponse;
        try {
            C21183a c21183a = this.f54561c;
            String string = this.f54559a.getString("redeemCode");
            Objects.requireNonNull(c21183a);
            redeemCodeResponse = (RedeemCodeResponse) ((C21183a.AbstractC21184a) C8367d.m28633a(KnownEndpoints.REFERRAL, C21183a.AbstractC21184a.class)).m10162b(string).execute().b;
        } catch (IOException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            redeemCodeResponse = null;
        }
        return redeemCodeResponse;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(RedeemCodeResponse redeemCodeResponse) {
        AbstractC19633a abstractC19633a;
        RedeemCodeResponse redeemCodeResponse2 = redeemCodeResponse;
        boolean z = false;
        boolean z2 = redeemCodeResponse2 != null && h.e(RedeemCodeResponse.Status.SUCCESS.name(), redeemCodeResponse2.f14473c);
        if (z2) {
            this.f54559a.mo13033c("codeRedeemed", true);
        }
        if (redeemCodeResponse2 != null) {
            String str = redeemCodeResponse2.f14473c;
            if (str != null) {
                try {
                    int ordinal = RedeemCodeResponse.Status.valueOf(str).ordinal();
                    if (ordinal == 0 || ordinal == 1 || ordinal == 3 || ordinal == 4 || ordinal == 5 || ordinal == 6 || ordinal == 7) {
                        z = true;
                    }
                } catch (IllegalArgumentException e) {
                }
            }
            if (z) {
                this.f54559a.remove("redeemCode");
            }
        }
        WeakReference<AbstractC19633a> weakReference = this.f54560b;
        if (weakReference == null || (abstractC19633a = weakReference.get()) == null) {
            return;
        }
        if (redeemCodeResponse2 == null) {
            abstractC19633a.mo13054S9(null);
        } else if (!z2 && !h.e(RedeemCodeResponse.Status.CANNOT_GRANT_PREMIUM.name(), redeemCodeResponse2.f14473c)) {
            abstractC19633a.mo13054S9(redeemCodeResponse2.f14471a);
        } else if (!z2) {
        } else {
            abstractC19633a.mo13071Bd(redeemCodeResponse2);
        }
    }
}
