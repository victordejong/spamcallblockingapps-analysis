package com.privacystar.core.p011ui.intro;

import io.realm.RealmChangeListener;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.PrivacyNoticeFragment$sam$io_realm_RealmChangeListener$0 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/PrivacyNoticeFragment$sam$io_realm_RealmChangeListener$0.class */
final class PrivacyNoticeFragment$sam$io_realm_RealmChangeListener$0 implements RealmChangeListener {
    private final /* synthetic */ Function1 function;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PrivacyNoticeFragment$sam$io_realm_RealmChangeListener$0(Function1 function1) {
        this.function = function1;
    }

    @Override // io.realm.RealmChangeListener
    public final /* synthetic */ void onChange(Object obj) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(obj), "invoke(...)");
    }
}
