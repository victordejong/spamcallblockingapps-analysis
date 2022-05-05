package kotlinx.coroutines.selects;

import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 ��H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "", "R", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$1.class */
public final class UnbiasedSelectBuilderImpl$invoke$1 extends AbstractC15150l implements AbstractC15107a<C14989s> {
    public final /* synthetic */ AbstractC15118l $block;
    public final /* synthetic */ SelectClause0 $this_invoke;
    public final /* synthetic */ UnbiasedSelectBuilderImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnbiasedSelectBuilderImpl$invoke$1(UnbiasedSelectBuilderImpl unbiasedSelectBuilderImpl, SelectClause0 selectClause0, AbstractC15118l lVar) {
        super(0);
        this.this$0 = unbiasedSelectBuilderImpl;
        this.$this_invoke = selectClause0;
        this.$block = lVar;
    }

    @Override // p626l.p641z.p642c.AbstractC15107a
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$this_invoke.registerSelectClause0(this.this$0.getInstance(), this.$block);
    }
}
