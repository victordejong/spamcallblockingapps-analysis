package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a2\u0010��\u001a\u00020\u00012\u001f\b\u0004\u0010\u0002\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0006H\u0087Hø\u0001��¢\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, m815d2 = {"whileSelect", "", "builder", "Lkotlin/Function1;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/WhileSelectKt.class */
public final class WhileSelectKt {
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a2 -> B:27:0x00a8). Please submit an issue!!! */
    @kotlinx.coroutines.ExperimentalCoroutinesApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object whileSelect(p626l.p641z.p642c.AbstractC15118l<? super kotlinx.coroutines.selects.SelectBuilder<? super java.lang.Boolean>, p626l.C14989s> r4, p626l.p634w.AbstractC15044d<? super p626l.C14989s> r5) {
        /*
            r0 = r5
            boolean r0 = r0 instanceof kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1
            if (r0 == 0) goto L_0x0025
            r0 = r5
            kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1 r0 = (kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1) r0
            r6 = r0
            r0 = r6
            int r0 = r0.label
            r7 = r0
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r6
            r1 = r7
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.label = r1
            r0 = r6
            r5 = r0
            goto L_0x002e
        L_0x0025:
            kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1 r0 = new kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r5 = r0
        L_0x002e:
            r0 = r5
            java.lang.Object r0 = r0.result
            r6 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r8 = r0
            r0 = r5
            int r0 = r0.label
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x005f
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0055
            r0 = r5
            java.lang.Object r0 = r0.L$0
            l.z.c.l r0 = (p626l.p641z.p642c.AbstractC15118l) r0
            r4 = r0
            r0 = r6
            p626l.C14982l.m653a(r0)
            goto L_0x00a8
        L_0x0055:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x005f:
            r0 = r6
            p626l.C14982l.m653a(r0)
        L_0x0063:
            r0 = r5
            r1 = r4
            r0.L$0 = r1
            r0 = r5
            r1 = 1
            r0.label = r1
            kotlinx.coroutines.selects.SelectBuilderImpl r0 = new kotlinx.coroutines.selects.SelectBuilderImpl
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r6 = r0
            r0 = r4
            r1 = r6
            java.lang.Object r0 = r0.invoke(r1)     // Catch: all -> 0x0081
            goto L_0x0089
        L_0x0081:
            r9 = move-exception
            r0 = r6
            r1 = r9
            r0.handleBuilderException(r1)
        L_0x0089:
            r0 = r6
            java.lang.Object r0 = r0.getResult()
            r9 = r0
            r0 = r9
            java.lang.Object r1 = p626l.p634w.p635j.C15064c.m478a()
            if (r0 != r1) goto L_0x009b
            r0 = r5
            p626l.p634w.p636k.p637a.C15072h.m462c(r0)
        L_0x009b:
            r0 = r9
            r6 = r0
            r0 = r9
            r1 = r8
            if (r0 != r1) goto L_0x00a8
            r0 = r8
            return r0
        L_0x00a8:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x00b5
            goto L_0x0063
        L_0x00b5:
            l.s r0 = p626l.C14989s.f33022a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.WhileSelectKt.whileSelect(l.z.c.l, l.w.d):java.lang.Object");
    }

    @ExperimentalCoroutinesApi
    public static final Object whileSelect$$forInline(AbstractC15118l lVar, AbstractC15044d dVar) {
        Object result;
        do {
            C15148j.m388c(0);
            SelectBuilderImpl selectBuilderImpl = new SelectBuilderImpl(dVar);
            try {
                lVar.invoke(selectBuilderImpl);
            } catch (Throwable th) {
                selectBuilderImpl.handleBuilderException(th);
            }
            result = selectBuilderImpl.getResult();
            if (result == C15064c.m478a()) {
                C15072h.m462c(dVar);
            }
            C15148j.m388c(1);
        } while (((Boolean) result).booleanValue());
        return C14989s.f33022a;
    }
}
