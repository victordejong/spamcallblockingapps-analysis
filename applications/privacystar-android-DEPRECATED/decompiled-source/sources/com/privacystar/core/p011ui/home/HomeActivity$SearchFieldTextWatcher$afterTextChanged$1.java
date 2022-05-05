package com.privacystar.core.p011ui.home;

import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.home.HomeActivity$SearchFieldTextWatcher$afterTextChanged$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeActivity$SearchFieldTextWatcher$afterTextChanged$1.class */
final class HomeActivity$SearchFieldTextWatcher$afterTextChanged$1 extends MutablePropertyReference0 {
    HomeActivity$SearchFieldTextWatcher$afterTextChanged$1(HomeActivity homeActivity) {
        super(homeActivity);
    }

    @Override // kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        return HomeActivity.access$getSuggestionArrayAdapter$p((HomeActivity) this.receiver);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public String getName() {
        return "suggestionArrayAdapter";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(HomeActivity.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return "getSuggestionArrayAdapter()Lcom/privacystar/core/ui/home/HomeActivityHistoryArrayAdapter;";
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(@Nullable Object obj) {
        ((HomeActivity) this.receiver).suggestionArrayAdapter = (HomeActivityHistoryArrayAdapter) obj;
    }
}
