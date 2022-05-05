package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\b\u0003\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010#\n\u0002\b\u0002\u001a;\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0002\"\u0010\b\u0001\u0010\u0001*\n\u0012\u0006\b��\u0012\u0002H\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0001H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0006\u001a7\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\b\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0086@ø\u0001��¢\u0006\u0002\u0010\n\u001a7\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\f\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\rH\u0086@ø\u0001��¢\u0006\u0002\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, m815d2 = {"toCollection", "C", ExifInterface.GPS_DIRECTION_TRUE, "", "Lkotlinx/coroutines/flow/Flow;", "destination", "(Lkotlinx/coroutines/flow/Flow;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toList", "", "", "(Lkotlinx/coroutines/flow/Flow;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toSet", "", "", "(Lkotlinx/coroutines/flow/Flow;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__CollectionKt.class */
public final /* synthetic */ class FlowKt__CollectionKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, C extends java.util.Collection<? super T>> java.lang.Object toCollection(kotlinx.coroutines.flow.Flow<? extends T> r4, final C r5, p626l.p634w.AbstractC15044d<? super C> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1
            if (r0 == 0) goto L_0x0028
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1 r0 = (kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.label
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0028
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.label = r1
            r0 = r7
            r6 = r0
            goto L_0x0031
        L_0x0028:
            kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1 r0 = new kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r6 = r0
        L_0x0031:
            r0 = r6
            java.lang.Object r0 = r0.result
            r7 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r9 = r0
            r0 = r6
            int r0 = r0.label
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0075
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x006b
            r0 = r6
            java.lang.Object r0 = r0.L$2
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r4 = r0
            r0 = r6
            java.lang.Object r0 = r0.L$1
            java.util.Collection r0 = (java.util.Collection) r0
            r5 = r0
            r0 = r6
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r4 = r0
            r0 = r7
            p626l.C14982l.m653a(r0)
            goto L_0x00a6
        L_0x006b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0075:
            r0 = r7
            p626l.C14982l.m653a(r0)
            kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$$inlined$collect$1 r0 = new kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$$inlined$collect$1
            r1 = r0
            r2 = r5
            r1.<init>()
            r7 = r0
            r0 = r6
            r1 = r4
            r0.L$0 = r1
            r0 = r6
            r1 = r5
            r0.L$1 = r1
            r0 = r6
            r1 = r4
            r0.L$2 = r1
            r0 = r6
            r1 = 1
            r0.label = r1
            r0 = r4
            r1 = r7
            r2 = r6
            java.lang.Object r0 = r0.collect(r1, r2)
            r1 = r9
            if (r0 != r1) goto L_0x00a6
            r0 = r9
            return r0
        L_0x00a6:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__CollectionKt.toCollection(kotlinx.coroutines.flow.Flow, java.util.Collection, l.w.d):java.lang.Object");
    }

    public static final <T> Object toList(Flow<? extends T> flow, List<T> list, AbstractC15044d<? super List<? extends T>> dVar) {
        return FlowKt.toCollection(flow, list, dVar);
    }

    public static /* synthetic */ Object toList$default(Flow flow, List list, AbstractC15044d dVar, int i, Object obj) {
        if ((i & 1) != 0) {
            list = new ArrayList();
        }
        return FlowKt.toList(flow, list, dVar);
    }

    public static final <T> Object toSet(Flow<? extends T> flow, Set<T> set, AbstractC15044d<? super Set<? extends T>> dVar) {
        return FlowKt.toCollection(flow, set, dVar);
    }

    public static /* synthetic */ Object toSet$default(Flow flow, Set set, AbstractC15044d dVar, int i, Object obj) {
        if ((i & 1) != 0) {
            set = new LinkedHashSet();
        }
        return FlowKt.toSet(flow, set, dVar);
    }
}
