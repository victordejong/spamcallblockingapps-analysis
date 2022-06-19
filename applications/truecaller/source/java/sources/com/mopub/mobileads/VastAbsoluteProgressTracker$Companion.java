package com.mopub.mobileads;

import com.tenor.android.core.constant.StringConstant;
import java.util.List;
import kotlin.Metadata;
import s1.f0.v;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tR\u001e\u0010\f\u001a\n \u000b*\u0004\u0018\u00010\n0\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;", "", "", "progressValue", "", "isAbsoluteTracker", "(Ljava/lang/String;)Z", "", "parseAbsoluteOffset", "(Ljava/lang/String;)Ljava/lang/Integer;", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "absolutePattern", "Ljava/util/regex/Pattern;", "", "serialVersionUID", "J", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTracker$Companion.class */
public final class VastAbsoluteProgressTracker$Companion {
    private VastAbsoluteProgressTracker$Companion() {
    }

    public /* synthetic */ VastAbsoluteProgressTracker$Companion(f fVar) {
        this();
    }

    public final boolean isAbsoluteTracker(String str) {
        boolean z = false;
        if (!(str == null || str.length() == 0)) {
            z = false;
            if (VastAbsoluteProgressTracker.access$getAbsolutePattern$cp().matcher(str).matches()) {
                z = true;
            }
        }
        return z;
    }

    public final Integer parseAbsoluteOffset(String str) {
        Integer num = null;
        if (str != null) {
            List U = v.U(str, new String[]{StringConstant.COLON}, false, 0, 6);
            if (!(U.size() == 3)) {
                U = null;
            }
            num = null;
            if (U != null) {
                num = Integer.valueOf((Integer.parseInt((String) U.get(1)) * 60 * 1000) + (Integer.parseInt((String) U.get(0)) * 60 * 60 * 1000) + ((int) (Float.parseFloat((String) U.get(2)) * 1000)));
            }
        }
        return num;
    }
}
