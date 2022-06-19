package com.callapp.contacts.activity.marketplace;

import android.text.SpannableString;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.ProgressCardView;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
/* renamed from: com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity$setRightIconState$1$1$1 */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setRightIconState$1$1$1.class */
final class C6742xce604e64 extends AbstractC18526r implements Function0<C20128v> {

    /* renamed from: a */
    final /* synthetic */ ProgressCardView f23477a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6742xce604e64(ProgressCardView progressCardView) {
        super(0);
        this.f23477a = progressCardView;
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* synthetic */ C20128v invoke() {
        this.f23477a.setRightButtonStyle(ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131100211), ThemeUtils.getColor(2131100211), new SpannableString(Activities.getString(2131887487)));
        this.f23477a.setIsRightButtonClickable(false);
        return C20128v.f66529a;
    }
}
