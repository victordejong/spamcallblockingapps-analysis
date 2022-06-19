package com.truecaller.suspension.p181ui;

import android.content.Intent;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p786g0.p787a.AbstractC14332g;
import p193e.p194a.p786g0.p787a.C14320a;
import s1.g;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\b\u0007\u0018�� \u00122\u00020\u0001:\u0001\u0013B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\u001f\u0010\f\u001a\u0004\u0018\u00010\u00078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001f\u0010\u000f\u001a\u0004\u0018\u00010\u00078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\t\u001a\u0004\b\u000e\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/truecaller/suspension/ui/SuspensionActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "e", "Ls1/g;", "getName", "()Ljava/lang/String;", AnalyticsConstants.NAME, "d", "getEmail", AnalyticsConstants.EMAIL, "<init>", "()V", "f", C22021b.f61237c, "account-suspension_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.suspension.ui.SuspensionActivity */
/* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/ui/SuspensionActivity.class */
public final class SuspensionActivity extends AbstractC14332g {

    /* renamed from: f */
    public static final C4590b f15170f = new C4590b(null);

    /* renamed from: d */
    public final g f15171d = C25225a.m3978P1(new C4589a(0, this));

    /* renamed from: e */
    public final g f15172e = C25225a.m3978P1(new C4589a(1, this));

    /* renamed from: com.truecaller.suspension.ui.SuspensionActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/suspension/ui/SuspensionActivity$a.class */
    public static final class C4589a extends m implements a<String> {

        /* renamed from: b */
        public final /* synthetic */ int f15173b;

        /* renamed from: c */
        public final /* synthetic */ Object f15174c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4589a(int i, Object obj) {
            super(0);
            this.f15173b = i;
            this.f15174c = obj;
        }

        /* JADX WARN: Type inference failed for: r0v18, types: [com.truecaller.suspension.ui.SuspensionActivity, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r0v7, types: [com.truecaller.suspension.ui.SuspensionActivity, android.app.Activity] */
        public final Object invoke() {
            int i = this.f15173b;
            String str = null;
            if (i == 0) {
                Intent intent = ((SuspensionActivity) this.f15174c).getIntent();
                String str2 = null;
                if (intent != null) {
                    str2 = intent.getStringExtra("android.intent.extra.EMAIL");
                }
                return str2;
            } else if (i != 1) {
                throw null;
            } else {
                Intent intent2 = ((SuspensionActivity) this.f15174c).getIntent();
                if (intent2 != null) {
                    str = intent2.getStringExtra("android.intent.extra.USER");
                }
                return str;
            }
        }
    }

    /* renamed from: com.truecaller.suspension.ui.SuspensionActivity$b */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/ui/SuspensionActivity$b.class */
    public static final class C4590b {
        public C4590b(f fVar) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        SuspensionActivity.super.onCreate(bundle);
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            C14320a.C14322c c14322c = C14320a.f41410k;
            String str = (String) this.f15172e.getValue();
            String str2 = (String) this.f15171d.getValue();
            Objects.requireNonNull(c14322c);
            C14320a c14320a = new C14320a();
            Bundle bundle2 = new Bundle();
            bundle2.putString("android.intent.extra.USER", str);
            bundle2.putString("android.intent.extra.EMAIL", str2);
            c14320a.setArguments(bundle2);
            c26907a.m1120m(16908290, c14320a, null);
            c26907a.mo1127f();
        }
    }
}
