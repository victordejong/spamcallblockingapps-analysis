package com.truecaller.videocallerid.p187ui.onboarding;

import android.os.Bundle;
import com.truecaller.videocallerid.utils.OnboardingType;
import java.io.Serializable;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p947k.p948a.p949a.AbstractC15602d;
import p193e.p194a.p947k.p948a.p949a.AbstractC15607i;
import p193e.p194a.p947k.p948a.p949a.p950a.C15591a;
import s1.f0.r;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\n\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdOnboardingActivity;", "Ln3/b/a/h;", "Le/a/k/a/a/i;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDismiss", "()V", "<init>", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.onboarding.VideoCallerIdOnboardingActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/onboarding/VideoCallerIdOnboardingActivity.class */
public final class VideoCallerIdOnboardingActivity extends AbstractC15602d implements AbstractC15607i {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        VideoCallerIdOnboardingActivity.super.onCreate(bundle);
        if (bundle != null) {
            return;
        }
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        Serializable serializableExtra = getIntent().getSerializableExtra("ARG_VID_ONBOARDING_TYPE");
        Serializable serializable = serializableExtra;
        if (!(serializableExtra instanceof OnboardingType)) {
            serializable = null;
        }
        OnboardingType onboardingType = (OnboardingType) serializable;
        String stringExtra = getIntent().getStringExtra("ARG_CONTACT_NAME");
        if (onboardingType != null) {
            if (!(stringExtra == null || r.p(stringExtra))) {
                C26907a c26907a = new C26907a(getSupportFragmentManager());
                l.e(onboardingType, "onboardingType");
                l.e(stringExtra, "contactName");
                Bundle bundle2 = new Bundle();
                bundle2.putSerializable("ARG_VID_ONBOARDING_TYPE", onboardingType);
                bundle2.putString("ARG_CONTACT_NAME", stringExtra);
                C15591a c15591a = new C15591a();
                c15591a.setArguments(bundle2);
                c26907a.mo1122k(0, c15591a, C15591a.class.getSimpleName(), 1);
                c26907a.mo1127f();
                return;
            }
        }
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p947k.p948a.p949a.AbstractC15607i
    public void onDismiss() {
        finish();
    }
}
