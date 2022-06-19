package com.truecaller.bizmon.p152ui.profile;

import com.truecaller.bizmon.C3478R;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/bizmon/ui/profile/BusinessSize;", "", "", "option", "I", "getOption", "()I", "<init>", "(Ljava/lang/String;II)V", "MICRO", "SMALL", "MEDIUM", "LARGE", "ENTERPRISE", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.ui.profile.BusinessSize */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/BusinessSize.class */
public enum BusinessSize {
    MICRO(C3478R.string.BusinessProfile_SizeMicro),
    SMALL(C3478R.string.BusinessProfile_SizeSmall),
    MEDIUM(C3478R.string.BusinessProfile_SizeMedium),
    LARGE(C3478R.string.BusinessProfile_SizeLarge),
    ENTERPRISE(C3478R.string.BusinessProfile_SizeEnterprise);
    
    private final int option;

    BusinessSize(int i) {
        this.option = i;
    }

    public final int getOption() {
        return this.option;
    }
}
