package zendesk.commonui;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.zendesk.func.ZFunc1;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/AvatarContainer.class */
public class AvatarContainer extends FrameLayout {
    private static final List<Integer> AVATAR_VIEW_IDS = Arrays.asList(Integer.valueOf(C2633R.C2636id.zui_first_avatar), Integer.valueOf(C2633R.C2636id.zui_second_avatar), Integer.valueOf(C2633R.C2636id.zui_third_avatar), Integer.valueOf(C2633R.C2636id.zui_fourth_avatar), Integer.valueOf(C2633R.C2636id.zui_fifth_avatar));
    private List<AvatarView> avatarViews;

    public AvatarContainer(@NonNull Context context) {
        super(context);
        init(context);
    }

    public AvatarContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public AvatarContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    @RequiresApi(api = 21)
    public AvatarContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }

    private void init(Context context) {
        inflate(context, C2633R.C2637layout.zui_view_avatar_container, this);
        this.avatarViews = CollectionUtils.map(AVATAR_VIEW_IDS, new ZFunc1<Integer, AvatarView>() { // from class: zendesk.commonui.AvatarContainer.1
            public AvatarView apply(Integer num) {
                return (AvatarView) AvatarContainer.this.findViewById(num.intValue());
            }
        });
    }

    @VisibleForTesting
    void render(@NonNull AvatarView avatarView, @Nullable AvatarState avatarState) {
        if (avatarState == null) {
            avatarView.setVisibility(8);
        } else if (!StringUtils.isEmpty(avatarState.avatarLetter) || !StringUtils.isEmpty(avatarState.avatarUrl)) {
            if (StringUtils.hasLength(avatarState.avatarLetter)) {
                avatarView.showLetter(avatarState.avatarLetter, avatarState.uniqueIdentifier);
            }
            if (StringUtils.hasLength(avatarState.avatarUrl)) {
                avatarView.showImage(avatarState.avatarUrl);
            }
        } else {
            avatarView.showDefault(avatarState.avatarRes.intValue(), avatarState.uniqueIdentifier);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showAvatars(List<AvatarState> list) {
        int size = this.avatarViews.size();
        int size2 = list.size();
        if (size2 != size) {
            if (size2 > size) {
                list = list.subList(0, size);
            } else {
                list = new LinkedList<>(list);
                while (list.size() != size) {
                    list.add(0, null);
                }
            }
        }
        int i = size - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            render(this.avatarViews.get(i2), list.get(i - i2));
        }
    }
}
