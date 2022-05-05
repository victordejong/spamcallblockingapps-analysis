package com.privacystar.core.p011ui.detail_view.approved_list;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Regex;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\r\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\n¢\u0006\u0002\b\b¨\u0006\t"}, m254d2 = {"<anonymous>", "", "charSequence", "", "<anonymous parameter 1>", "", "<anonymous parameter 2>", "<anonymous parameter 3>", "invoke", "com/privacystar/core/ui/detail_view/approved_list/ApprovedListAddNumberFragment$onCreateView$1$1"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAddNumberFragment$onCreateView$$inlined$also$lambda$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/approved_list/ApprovedListAddNumberFragment$onCreateView$$inlined$also$lambda$1.class */
final class C1610x2a272059 extends Lambda implements Function4<CharSequence, Integer, Integer, Integer, Unit> {
    final /* synthetic */ ApprovedListAddNumberFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1610x2a272059(ApprovedListAddNumberFragment approvedListAddNumberFragment) {
        super(4);
        this.this$0 = approvedListAddNumberFragment;
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Unit invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
        invoke(charSequence, num.intValue(), num2.intValue(), num3.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable CharSequence charSequence, int i, int i2, int i3) {
        String obj;
        String replace = (charSequence == null || (obj = charSequence.toString()) == null) ? null : new Regex("[^0-9]").replace(obj, "");
        Timber.m37d("text: " + replace, new Object[0]);
        if (replace == null || replace.length() < 10 || replace.length() > 15) {
            this.this$0.disableButton();
        } else {
            this.this$0.enableButton();
        }
    }
}
