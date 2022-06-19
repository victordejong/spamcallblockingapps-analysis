package com.truecaller.service.contact;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.AbstractServiceC26412a0;
import p193e.p194a.p1396y4.p1397f.C21797b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/truecaller/service/contact/RefreshContactIndexingService;", "Ln3/k/a/a0;", "Landroid/content/Intent;", "intent", "Ls1/s;", "onHandleWork", "(Landroid/content/Intent;)V", "<init>", "()V", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/contact/RefreshContactIndexingService.class */
public final class RefreshContactIndexingService extends AbstractServiceC26412a0 {

    /* renamed from: com.truecaller.service.contact.RefreshContactIndexingService$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/contact/RefreshContactIndexingService$a.class */
    public static final class C4472a {

        /* renamed from: a */
        public final Context f14779a;

        public C4472a(Context context) {
            l.e(context, AnalyticsConstants.CONTEXT);
            this.f14779a = context;
        }
    }

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i
    public void onHandleWork(Intent intent) {
        long[] longArrayExtra;
        l.e(intent, "intent");
        try {
            TrueApp m36032b0 = TrueApp.m36032b0();
            l.d(m36032b0, "TrueApp.getApp()");
            if (!m36032b0.mo28540W()) {
                return;
            }
            String action = intent.getAction();
            if (action != null) {
                int hashCode = action.hashCode();
                if (hashCode != 759309553) {
                    if (hashCode == 1874572677 && action.equals("RefreshContactIndexingService.action.sync")) {
                        ContentResolver contentResolver = getContentResolver();
                        l.d(contentResolver, "contentResolver");
                        new C21797b(contentResolver, new C4472a(this)).m9053b(intent.getBooleanExtra("RefreshContactIndexingService.extra.rebuild_all", false));
                    }
                } else if (action.equals("RefreshContactIndexingService.action.rebuild") && (longArrayExtra = intent.getLongArrayExtra("RefreshContactIndexingService.extra.scopes")) != null) {
                    ContentResolver contentResolver2 = getContentResolver();
                    l.d(contentResolver2, "contentResolver");
                    C21797b c21797b = new C21797b(contentResolver2, new C4472a(this));
                    l.d(longArrayExtra, "it");
                    c21797b.m9054a(longArrayExtra);
                }
            }
        } catch (Throwable th) {
        }
    }
}
