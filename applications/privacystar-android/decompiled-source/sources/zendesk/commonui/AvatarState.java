package zendesk.commonui;

import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/AvatarState.class */
public class AvatarState {
    final String avatarLetter;
    final Integer avatarRes;
    final String avatarUrl;
    final Object uniqueIdentifier;

    public AvatarState(@NonNull Object obj, @Nullable String str, @Nullable String str2, @DrawableRes int i) {
        this.uniqueIdentifier = obj;
        this.avatarRes = Integer.valueOf(i);
        this.avatarLetter = str;
        this.avatarUrl = str2;
    }
}
