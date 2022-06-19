package com.truecaller.videocallerid.p187ui.onboarding;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p947k.p948a.p949a.AbstractC15605g;
import p193e.p194a.p947k.p948a.p949a.C15597b;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/videocallerid/ui/onboarding/VideoIdOnboardingBottomSheetActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.onboarding.VideoIdOnboardingBottomSheetActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/onboarding/VideoIdOnboardingBottomSheetActivity.class */
public final class VideoIdOnboardingBottomSheetActivity extends AbstractC15605g {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        VideoIdOnboardingBottomSheetActivity.super.onCreate(bundle);
        if (bundle != null) {
            return;
        }
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        Parcelable parcelableExtra = getIntent().getParcelableExtra("ARG_ONBOARDING_DATA");
        Parcelable parcelable = parcelableExtra;
        if (!(parcelableExtra instanceof VideoCallerIdBottomSheetOnboardingData)) {
            parcelable = null;
        }
        if (((VideoCallerIdBottomSheetOnboardingData) parcelable) == null) {
            finish();
            return;
        }
        Objects.requireNonNull(C15597b.f44117i);
        new C15597b().show(getSupportFragmentManager(), "VideoIdOnboardingBottomSheet");
    }
}
