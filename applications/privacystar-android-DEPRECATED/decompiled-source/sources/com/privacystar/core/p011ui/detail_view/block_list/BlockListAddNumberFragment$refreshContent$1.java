package com.privacystar.core.p011ui.detail_view.block_list;

import android.widget.EditText;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockListAddNumberFragment$refreshContent$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockListAddNumberFragment$refreshContent$1.class */
final class BlockListAddNumberFragment$refreshContent$1 extends MutablePropertyReference0 {
    BlockListAddNumberFragment$refreshContent$1(BlockListAddNumberFragment blockListAddNumberFragment) {
        super(blockListAddNumberFragment);
    }

    @Override // kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        return BlockListAddNumberFragment.access$getInputNumberET$p((BlockListAddNumberFragment) this.receiver);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public String getName() {
        return "inputNumberET";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(BlockListAddNumberFragment.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return "getInputNumberET()Landroid/widget/EditText;";
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(@Nullable Object obj) {
        ((BlockListAddNumberFragment) this.receiver).inputNumberET = (EditText) obj;
    }
}
