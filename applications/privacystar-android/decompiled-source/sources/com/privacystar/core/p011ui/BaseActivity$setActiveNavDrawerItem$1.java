package com.privacystar.core.p011ui;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.BaseActivity$setActiveNavDrawerItem$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/BaseActivity$setActiveNavDrawerItem$1.class */
final class BaseActivity$setActiveNavDrawerItem$1 extends MutablePropertyReference0 {
    BaseActivity$setActiveNavDrawerItem$1(BaseActivity baseActivity) {
        super(baseActivity);
    }

    @Override // kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        return BaseActivity.access$getNavDrawerItemViews$p((BaseActivity) this.receiver);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public String getName() {
        return "navDrawerItemViews";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(BaseActivity.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return "getNavDrawerItemViews()[Landroid/view/View;";
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(@Nullable Object obj) {
        ((BaseActivity) this.receiver).navDrawerItemViews = (View[]) obj;
    }
}
