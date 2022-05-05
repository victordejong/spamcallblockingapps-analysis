package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��@\n��\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u001a\u009b\u0001\u0010��\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052b\u0010\u0006\u001a^\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0015\u0012\u0013\u0018\u0001H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002H\u00030\u0007H\u0087\b\u001a´\u0001\u0010\u000f\u001a\u0002H\u0010\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b��\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102b\u0010\u0006\u001a^\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0015\u0012\u0013\u0018\u0001H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u0002H\u00030\u0007H\u0087\b¢\u0006\u0002\u0010\u0013\u001aI\u0010\u0014\u001a\u0002H\u0010\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0016\b\u0002\u0010\u0010*\u0010\u0012\u0006\b��\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00150\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u0010H\u0007¢\u0006\u0002\u0010\u0016\u001a¼\u0001\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u000526\u0010\u0018\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u00192K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u001aH\u0087\b\u001a|\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u001b\u001a\u0002H\u000326\u0010\u0006\u001a2\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u0019H\u0087\b¢\u0006\u0002\u0010\u001c\u001aÕ\u0001\u0010\u001d\u001a\u0002H\u0010\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b��\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u001026\u0010\u0018\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u00192K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u001aH\u0087\b¢\u0006\u0002\u0010\u001e\u001a\u0090\u0001\u0010\u001d\u001a\u0002H\u0010\"\u0004\b��\u0010\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u0003\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b��\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102\u0006\u0010\u001b\u001a\u0002H\u000326\u0010\u0006\u001a2\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u00030\u0019H\u0087\b¢\u0006\u0002\u0010\u001f\u001a\u0088\u0001\u0010 \u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H!0\u0001\"\u0004\b��\u0010!\"\b\b\u0001\u0010\u0004*\u0002H!\"\u0004\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H!¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H!0\u001aH\u0087\b\u001a¡\u0001\u0010\"\u001a\u0002H\u0010\"\u0004\b��\u0010!\"\b\b\u0001\u0010\u0004*\u0002H!\"\u0004\b\u0002\u0010\u0002\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b��\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H!0\u0011*\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u00102K\u0010\u0006\u001aG\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u0011H!¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H!0\u001aH\u0087\b¢\u0006\u0002\u0010#¨\u0006$"}, m254d2 = {"aggregate", "", "K", "R", "T", "Lkotlin/collections/Grouping;", "operation", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "key", "accumulator", "element", "", "first", "aggregateTo", "M", "", FirebaseAnalytics.Param.DESTINATION, "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function4;)Ljava/util/Map;", "eachCountTo", "", "(Lkotlin/collections/Grouping;Ljava/util/Map;)Ljava/util/Map;", "fold", "initialValueSelector", "Lkotlin/Function2;", "Lkotlin/Function3;", "initialValue", "(Lkotlin/collections/Grouping;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", "foldTo", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;", "(Lkotlin/collections/Grouping;Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", "reduce", "S", "reduceTo", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/collections/GroupingKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/GroupingKt__GroupingKt.class */
class GroupingKt__GroupingKt extends GroupingKt__GroupingJVMKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @kotlin.SinceKotlin(version = "1.1")
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, K, R> java.util.Map<K, R> aggregate(@org.jetbrains.annotations.NotNull kotlin.collections.Grouping<T, ? extends K> r8, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function4<? super K, ? super R, ? super T, ? super java.lang.Boolean, ? extends R> r9) {
        /*
            r0 = r8
            java.lang.String r1 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r9
            java.lang.String r1 = "operation"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r1 = r0
            r1.<init>()
            java.util.Map r0 = (java.util.Map) r0
            r10 = r0
            r0 = r8
            java.util.Iterator r0 = r0.sourceIterator()
            r11 = r0
        L_0x001e:
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0079
            r0 = r11
            java.lang.Object r0 = r0.next()
            r12 = r0
            r0 = r8
            r1 = r12
            java.lang.Object r0 = r0.keyOf(r1)
            r13 = r0
            r0 = r10
            r1 = r13
            java.lang.Object r0 = r0.get(r1)
            r14 = r0
            r0 = r14
            if (r0 != 0) goto L_0x0059
            r0 = r10
            r1 = r13
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0059
            r0 = 1
            r15 = r0
            goto L_0x005c
        L_0x0059:
            r0 = 0
            r15 = r0
        L_0x005c:
            r0 = r10
            r1 = r13
            r2 = r9
            r3 = r13
            r4 = r14
            r5 = r12
            r6 = r15
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)
            java.lang.Object r2 = r2.invoke(r3, r4, r5, r6)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x001e
        L_0x0079:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.aggregate(kotlin.collections.Grouping, kotlin.jvm.functions.Function4):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @kotlin.SinceKotlin(version = "1.1")
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, K, R, M extends java.util.Map<? super K, R>> M aggregateTo(@org.jetbrains.annotations.NotNull kotlin.collections.Grouping<T, ? extends K> r8, @org.jetbrains.annotations.NotNull M r9, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function4<? super K, ? super R, ? super T, ? super java.lang.Boolean, ? extends R> r10) {
        /*
            r0 = r8
            java.lang.String r1 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r9
            java.lang.String r1 = "destination"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r10
            java.lang.String r1 = "operation"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r8
            java.util.Iterator r0 = r0.sourceIterator()
            r11 = r0
        L_0x0019:
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0074
            r0 = r11
            java.lang.Object r0 = r0.next()
            r12 = r0
            r0 = r8
            r1 = r12
            java.lang.Object r0 = r0.keyOf(r1)
            r13 = r0
            r0 = r9
            r1 = r13
            java.lang.Object r0 = r0.get(r1)
            r14 = r0
            r0 = r14
            if (r0 != 0) goto L_0x0054
            r0 = r9
            r1 = r13
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0054
            r0 = 1
            r15 = r0
            goto L_0x0057
        L_0x0054:
            r0 = 0
            r15 = r0
        L_0x0057:
            r0 = r9
            r1 = r13
            r2 = r10
            r3 = r13
            r4 = r14
            r5 = r12
            r6 = r15
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)
            java.lang.Object r2 = r2.invoke(r3, r4, r5, r6)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0019
        L_0x0074:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.aggregateTo(kotlin.collections.Grouping, java.util.Map, kotlin.jvm.functions.Function4):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, M extends Map<? super K, Integer>> M eachCountTo(@NotNull Grouping<T, ? extends K> receiver$0, @NotNull M destination) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Iterator<T> sourceIterator = receiver$0.sourceIterator();
        while (sourceIterator.hasNext()) {
            Object keyOf = receiver$0.keyOf(sourceIterator.next());
            int i = destination.get(keyOf);
            if (i == null && !destination.containsKey(keyOf)) {
                i = 0;
            }
            destination.put(keyOf, Integer.valueOf(((Number) i).intValue() + 1));
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @kotlin.SinceKotlin(version = "1.1")
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, K, R> java.util.Map<K, R> fold(@org.jetbrains.annotations.NotNull kotlin.collections.Grouping<T, ? extends K> r6, R r7, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super R, ? super T, ? extends R> r8) {
        /*
            r0 = r6
            java.lang.String r1 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r8
            java.lang.String r1 = "operation"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r1 = r0
            r1.<init>()
            java.util.Map r0 = (java.util.Map) r0
            r9 = r0
            r0 = r6
            java.util.Iterator r0 = r0.sourceIterator()
            r10 = r0
        L_0x001f:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x007d
            r0 = r10
            java.lang.Object r0 = r0.next()
            r11 = r0
            r0 = r6
            r1 = r11
            java.lang.Object r0 = r0.keyOf(r1)
            r12 = r0
            r0 = r9
            r1 = r12
            java.lang.Object r0 = r0.get(r1)
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x005c
            r0 = r9
            r1 = r12
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x005c
            r0 = 1
            r14 = r0
            goto L_0x005f
        L_0x005c:
            r0 = 0
            r14 = r0
        L_0x005f:
            r0 = r14
            if (r0 == 0) goto L_0x0067
            r0 = r7
            r13 = r0
        L_0x0067:
            r0 = r9
            r1 = r12
            r2 = r8
            r3 = r13
            r4 = r11
            java.lang.Object r2 = r2.invoke(r3, r4)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x001f
        L_0x007d:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.fold(kotlin.collections.Grouping, java.lang.Object, kotlin.jvm.functions.Function2):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @kotlin.SinceKotlin(version = "1.1")
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, K, R> java.util.Map<K, R> fold(@org.jetbrains.annotations.NotNull kotlin.collections.Grouping<T, ? extends K> r7, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super K, ? super T, ? extends R> r8, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function3<? super K, ? super R, ? super T, ? extends R> r9) {
        /*
            r0 = r7
            java.lang.String r1 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r8
            java.lang.String r1 = "initialValueSelector"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r9
            java.lang.String r1 = "operation"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r1 = r0
            r1.<init>()
            java.util.Map r0 = (java.util.Map) r0
            r10 = r0
            r0 = r7
            java.util.Iterator r0 = r0.sourceIterator()
            r11 = r0
        L_0x0025:
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x008e
            r0 = r11
            java.lang.Object r0 = r0.next()
            r12 = r0
            r0 = r7
            r1 = r12
            java.lang.Object r0 = r0.keyOf(r1)
            r13 = r0
            r0 = r10
            r1 = r13
            java.lang.Object r0 = r0.get(r1)
            r14 = r0
            r0 = r14
            if (r0 != 0) goto L_0x0062
            r0 = r10
            r1 = r13
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0062
            r0 = 1
            r15 = r0
            goto L_0x0065
        L_0x0062:
            r0 = 0
            r15 = r0
        L_0x0065:
            r0 = r15
            if (r0 == 0) goto L_0x0076
            r0 = r8
            r1 = r13
            r2 = r12
            java.lang.Object r0 = r0.invoke(r1, r2)
            r14 = r0
        L_0x0076:
            r0 = r10
            r1 = r13
            r2 = r9
            r3 = r13
            r4 = r14
            r5 = r12
            java.lang.Object r2 = r2.invoke(r3, r4, r5)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0025
        L_0x008e:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.fold(kotlin.collections.Grouping, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @kotlin.SinceKotlin(version = "1.1")
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, K, R, M extends java.util.Map<? super K, R>> M foldTo(@org.jetbrains.annotations.NotNull kotlin.collections.Grouping<T, ? extends K> r6, @org.jetbrains.annotations.NotNull M r7, R r8, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super R, ? super T, ? extends R> r9) {
        /*
            r0 = r6
            java.lang.String r1 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r7
            java.lang.String r1 = "destination"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r9
            java.lang.String r1 = "operation"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r6
            java.util.Iterator r0 = r0.sourceIterator()
            r10 = r0
        L_0x001a:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0078
            r0 = r10
            java.lang.Object r0 = r0.next()
            r11 = r0
            r0 = r6
            r1 = r11
            java.lang.Object r0 = r0.keyOf(r1)
            r12 = r0
            r0 = r7
            r1 = r12
            java.lang.Object r0 = r0.get(r1)
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x0057
            r0 = r7
            r1 = r12
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0057
            r0 = 1
            r14 = r0
            goto L_0x005a
        L_0x0057:
            r0 = 0
            r14 = r0
        L_0x005a:
            r0 = r14
            if (r0 == 0) goto L_0x0062
            r0 = r8
            r13 = r0
        L_0x0062:
            r0 = r7
            r1 = r12
            r2 = r9
            r3 = r13
            r4 = r11
            java.lang.Object r2 = r2.invoke(r3, r4)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x001a
        L_0x0078:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.foldTo(kotlin.collections.Grouping, java.util.Map, java.lang.Object, kotlin.jvm.functions.Function2):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @kotlin.SinceKotlin(version = "1.1")
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, K, R, M extends java.util.Map<? super K, R>> M foldTo(@org.jetbrains.annotations.NotNull kotlin.collections.Grouping<T, ? extends K> r7, @org.jetbrains.annotations.NotNull M r8, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super K, ? super T, ? extends R> r9, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function3<? super K, ? super R, ? super T, ? extends R> r10) {
        /*
            r0 = r7
            java.lang.String r1 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r8
            java.lang.String r1 = "destination"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r9
            java.lang.String r1 = "initialValueSelector"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r10
            java.lang.String r1 = "operation"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
            r0 = r7
            java.util.Iterator r0 = r0.sourceIterator()
            r11 = r0
        L_0x0020:
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0089
            r0 = r11
            java.lang.Object r0 = r0.next()
            r12 = r0
            r0 = r7
            r1 = r12
            java.lang.Object r0 = r0.keyOf(r1)
            r13 = r0
            r0 = r8
            r1 = r13
            java.lang.Object r0 = r0.get(r1)
            r14 = r0
            r0 = r14
            if (r0 != 0) goto L_0x005d
            r0 = r8
            r1 = r13
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x005d
            r0 = 1
            r15 = r0
            goto L_0x0060
        L_0x005d:
            r0 = 0
            r15 = r0
        L_0x0060:
            r0 = r15
            if (r0 == 0) goto L_0x0071
            r0 = r9
            r1 = r13
            r2 = r12
            java.lang.Object r0 = r0.invoke(r1, r2)
            r14 = r0
        L_0x0071:
            r0 = r8
            r1 = r13
            r2 = r10
            r3 = r13
            r4 = r14
            r5 = r12
            java.lang.Object r2 = r2.invoke(r3, r4, r5)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0020
        L_0x0089:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.GroupingKt__GroupingKt.foldTo(kotlin.collections.Grouping, java.util.Map, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <S, T extends S, K> Map<K, S> reduce(@NotNull Grouping<T, ? extends K> receiver$0, @NotNull Function3<? super K, ? super S, ? super T, ? extends S> operation) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator sourceIterator = receiver$0.sourceIterator();
        while (sourceIterator.hasNext()) {
            Object obj = (Object) sourceIterator.next();
            Object obj2 = (Object) receiver$0.keyOf(obj);
            Object obj3 = (Object) linkedHashMap.get(obj2);
            if (!(obj3 == 0 && !linkedHashMap.containsKey(obj2))) {
                obj = (Object) operation.invoke(obj2, obj3, obj);
            }
            linkedHashMap.put(obj2, obj);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <S, T extends S, K, M extends Map<? super K, S>> M reduceTo(@NotNull Grouping<T, ? extends K> receiver$0, @NotNull M destination, @NotNull Function3<? super K, ? super S, ? super T, ? extends S> operation) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        Iterator sourceIterator = receiver$0.sourceIterator();
        while (sourceIterator.hasNext()) {
            Object obj = (Object) sourceIterator.next();
            Object obj2 = (Object) receiver$0.keyOf(obj);
            Object obj3 = (Object) destination.get(obj2);
            if (!(obj3 == 0 && !destination.containsKey(obj2))) {
                obj = (Object) operation.invoke(obj2, obj3, obj);
            }
            destination.put(obj2, obj);
        }
        return destination;
    }
}
