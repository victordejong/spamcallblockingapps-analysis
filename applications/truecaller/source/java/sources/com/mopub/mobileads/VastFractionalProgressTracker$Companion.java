package com.mopub.mobileads;

import kotlin.Metadata;
import s1.f0.r;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\t\u001a\u0004\u0018\u00010\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nR\u001e\u0010\r\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/mopub/mobileads/VastFractionalProgressTracker$Companion;", "", "", "progressValue", "", "isPercentageTracker", "(Ljava/lang/String;)Z", "", "videoDuration", "parsePercentageOffset", "(Ljava/lang/String;I)Ljava/lang/Integer;", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "percentagePattern", "Ljava/util/regex/Pattern;", "", "serialVersionUID", "J", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTracker$Companion.class */
public final class VastFractionalProgressTracker$Companion {
    private VastFractionalProgressTracker$Companion() {
    }

    public /* synthetic */ VastFractionalProgressTracker$Companion(f fVar) {
        this();
    }

    public final boolean isPercentageTracker(String str) {
        boolean z = false;
        if (!(str == null || str.length() == 0)) {
            z = false;
            if (VastFractionalProgressTracker.access$getPercentagePattern$cp().matcher(str).matches()) {
                z = true;
            }
        }
        return z;
    }

    public final Integer parsePercentageOffset(String str, int i) {
        Integer num;
        if (str != null) {
            num = Integer.valueOf((int) Math.rint((Float.parseFloat(r.t(str, "%", "", false, 4)) * i) / 100.0f));
        } else {
            num = null;
        }
        return num;
    }
}
