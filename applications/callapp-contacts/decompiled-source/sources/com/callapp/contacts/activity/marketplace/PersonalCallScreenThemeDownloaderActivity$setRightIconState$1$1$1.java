package com.callapp.contacts.activity.marketplace;

import android.text.SpannableString;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.ProgressCardView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setRightIconState$1$1$1.class */
final class PersonalCallScreenThemeDownloaderActivity$setRightIconState$1$1$1 extends r implements Function0<v> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ProgressCardView f13187a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalCallScreenThemeDownloaderActivity$setRightIconState$1$1$1(ProgressCardView progressCardView) {
        super(0);
        this.f13187a = progressCardView;
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* synthetic */ v invoke() {
        this.f13187a.setRightButtonStyle(ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131100211), ThemeUtils.getColor(2131100211), new SpannableString(Activities.getString(2131887487)));
        this.f13187a.setIsRightButtonClickable(false);
        return v.f38654a;
    }
}
