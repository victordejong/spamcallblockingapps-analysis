package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0010\r\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\f\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0019\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b:\u001a#\u0010\u0005\u001a\u00020\u0004*\u00020��2\u0006\u0010\u0001\u001a\u00020��2\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a#\u0010\u0007\u001a\u00020\u0004*\u00020��2\u0006\u0010\u0001\u001a\u00020��2\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0006\u001a&\u0010\n\u001a\u00020\u0002*\u00020��2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\n\u0010\u000b\u001a&\u0010\n\u001a\u00020\u0002*\u00020��2\u0006\u0010\u0001\u001a\u00020��2\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\n\u0010\f\u001a\u001c\u0010\n\u001a\u00020\u0002*\u00020��2\u0006\u0010\u000e\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\n\u0010\u000f\u001a#\u0010\u0010\u001a\u00020\u0002*\u00020��2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u000b\u001a#\u0010\u0010\u001a\u00020\u0002*\u00020��2\u0006\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\f\u001aA\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0016*\u00020��2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018\u001aG\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0016*\u00020��2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001a\u0010\u001b\u001aA\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0016*\u00020��2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u0018\u001a\u0019\u0010\u001e\u001a\u00020\u0002*\u00020��2\u0006\u0010\u001d\u001a\u00020\u0014¢\u0006\u0004\b\u001e\u0010\u001f\u001a9\u0010$\u001a\u00028\u0001\"\f\b��\u0010 *\u00020��*\u00028\u0001\"\u0004\b\u0001\u0010!*\u00028��2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\"H\u0087\bø\u0001��¢\u0006\u0004\b$\u0010%\u001a9\u0010&\u001a\u00028\u0001\"\f\b��\u0010 *\u00020��*\u00028\u0001\"\u0004\b\u0001\u0010!*\u00028��2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\"H\u0087\bø\u0001��¢\u0006\u0004\b&\u0010%\u001a-\u0010'\u001a\u00020\u0014*\u00020��2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b'\u0010(\u001a=\u0010'\u001a\u00020\u0014*\u00020��2\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0019\u001a\u00020\u0002H\u0002¢\u0006\u0004\b*\u0010+\u001a-\u0010'\u001a\u00020\u0014*\u00020��2\u0006\u0010,\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b'\u0010-\u001a-\u00100\u001a\u00020\u0014*\u00020��2\u0006\u0010/\u001a\u00020.2\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b0\u00101\u001a3\u00100\u001a\u00020\u0014*\u00020��2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b0\u00102\u001a\u0014\u00103\u001a\u00020\u0002*\u00020��H\u0087\b¢\u0006\u0004\b3\u00104\u001a\u0014\u00105\u001a\u00020\u0002*\u00020��H\u0087\b¢\u0006\u0004\b5\u00104\u001a\u0014\u00106\u001a\u00020\u0002*\u00020��H\u0087\b¢\u0006\u0004\b6\u00104\u001a'\u00107\u001a\u00020\u0002*\u0004\u0018\u00010��H\u0087\b\u0082\u0002\u000e\n\f\b��\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010��¢\u0006\u0004\b7\u00104\u001a'\u00108\u001a\u00020\u0002*\u0004\u0018\u00010��H\u0087\b\u0082\u0002\u000e\n\f\b��\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010��¢\u0006\u0004\b8\u00104\u001a\u0014\u0010:\u001a\u000209*\u00020��H\u0086\u0002¢\u0006\u0004\b:\u0010;\u001a-\u0010<\u001a\u00020\u0014*\u00020��2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b<\u0010(\u001a-\u0010<\u001a\u00020\u0014*\u00020��2\u0006\u0010,\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b<\u0010-\u001a-\u0010=\u001a\u00020\u0014*\u00020��2\u0006\u0010/\u001a\u00020.2\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b=\u00101\u001a3\u0010=\u001a\u00020\u0014*\u00020��2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b=\u00102\u001a\u0017\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00040>*\u00020��¢\u0006\u0004\b?\u0010@\u001a\u0017\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00040A*\u00020��¢\u0006\u0004\bB\u0010C\u001a\u001c\u0010D\u001a\u00020\u0002*\u00020��2\u0006\u0010\u000e\u001a\u00020\rH\u0087\f¢\u0006\u0004\bD\u0010\u000f\u001a\u0016\u0010E\u001a\u00020\u0004*\u0004\u0018\u00010\u0004H\u0087\b¢\u0006\u0004\bE\u0010F\u001a#\u0010I\u001a\u00020��*\u00020��2\u0006\u0010G\u001a\u00020\u00142\b\b\u0002\u0010H\u001a\u00020\b¢\u0006\u0004\bI\u0010J\u001a#\u0010I\u001a\u00020\u0004*\u00020\u00042\u0006\u0010G\u001a\u00020\u00142\b\b\u0002\u0010H\u001a\u00020\b¢\u0006\u0004\bI\u0010K\u001a#\u0010L\u001a\u00020��*\u00020��2\u0006\u0010G\u001a\u00020\u00142\b\b\u0002\u0010H\u001a\u00020\b¢\u0006\u0004\bL\u0010J\u001a#\u0010L\u001a\u00020\u0004*\u00020\u00042\u0006\u0010G\u001a\u00020\u00142\b\b\u0002\u0010H\u001a\u00020\b¢\u0006\u0004\bL\u0010K\u001aG\u0010S\u001a\b\u0012\u0004\u0012\u00020P0>*\u00020��2\u000e\u0010N\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040M2\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010O\u001a\u00020\u0014H\u0002¢\u0006\u0004\bQ\u0010R\u001a?\u0010S\u001a\b\u0012\u0004\u0012\u00020P0>*\u00020��2\u0006\u0010N\u001a\u00020.2\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010O\u001a\u00020\u0014H\u0002¢\u0006\u0004\bQ\u0010T\u001a;\u0010W\u001a\u00020\u0002*\u00020��2\u0006\u0010U\u001a\u00020\u00142\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010V\u001a\u00020\u00142\u0006\u0010G\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u0002H��¢\u0006\u0004\bW\u0010X\u001a\u0019\u0010Z\u001a\u00020��*\u00020��2\u0006\u0010Y\u001a\u00020��¢\u0006\u0004\bZ\u0010[\u001a\u0019\u0010Z\u001a\u00020\u0004*\u00020\u00042\u0006\u0010Y\u001a\u00020��¢\u0006\u0004\bZ\u0010\\\u001a!\u0010]\u001a\u00020��*\u00020��2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u0014¢\u0006\u0004\b]\u0010^\u001a\u0019\u0010]\u001a\u00020��*\u00020��2\u0006\u0010_\u001a\u00020P¢\u0006\u0004\b]\u0010`\u001a$\u0010]\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u0014H\u0087\b¢\u0006\u0004\b]\u0010a\u001a\u001c\u0010]\u001a\u00020\u0004*\u00020\u00042\u0006\u0010_\u001a\u00020PH\u0087\b¢\u0006\u0004\b]\u0010b\u001a\u0019\u0010c\u001a\u00020��*\u00020��2\u0006\u0010\u0011\u001a\u00020��¢\u0006\u0004\bc\u0010[\u001a\u0019\u0010c\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0011\u001a\u00020��¢\u0006\u0004\bc\u0010\\\u001a\u0019\u0010e\u001a\u00020��*\u00020��2\u0006\u0010d\u001a\u00020��¢\u0006\u0004\be\u0010[\u001a!\u0010e\u001a\u00020��*\u00020��2\u0006\u0010Y\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020��¢\u0006\u0004\be\u0010f\u001a\u0019\u0010e\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020��¢\u0006\u0004\be\u0010\\\u001a!\u0010e\u001a\u00020\u0004*\u00020\u00042\u0006\u0010Y\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020��¢\u0006\u0004\be\u0010g\u001a5\u0010k\u001a\u00020\u0004*\u00020��2\u0006\u0010\u000e\u001a\u00020\r2\u0014\b\b\u0010j\u001a\u000e\u0012\u0004\u0012\u00020i\u0012\u0004\u0012\u00020��0hH\u0087\bø\u0001��¢\u0006\u0004\bk\u0010l\u001a$\u0010k\u001a\u00020\u0004*\u00020��2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010m\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\bk\u0010n\u001a+\u0010p\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\b2\u0006\u0010m\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0004\bp\u0010q\u001a+\u0010p\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\u00042\u0006\u0010m\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0004\bp\u0010r\u001a+\u0010s\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\b2\u0006\u0010m\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0004\bs\u0010q\u001a+\u0010s\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\u00042\u0006\u0010m\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0004\bs\u0010r\u001a+\u0010t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\b2\u0006\u0010m\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0004\bt\u0010q\u001a+\u0010t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\u00042\u0006\u0010m\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0004\bt\u0010r\u001a+\u0010u\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\b2\u0006\u0010m\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0004\bu\u0010q\u001a+\u0010u\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\u00042\u0006\u0010m\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0004\bu\u0010r\u001a$\u0010v\u001a\u00020\u0004*\u00020��2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010m\u001a\u00020\u0004H\u0087\b¢\u0006\u0004\bv\u0010n\u001a)\u0010w\u001a\u00020��*\u00020��2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u00142\u0006\u0010m\u001a\u00020��¢\u0006\u0004\bw\u0010x\u001a!\u0010w\u001a\u00020��*\u00020��2\u0006\u0010_\u001a\u00020P2\u0006\u0010m\u001a\u00020��¢\u0006\u0004\bw\u0010y\u001a,\u0010w\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u00142\u0006\u0010m\u001a\u00020��H\u0087\b¢\u0006\u0004\bw\u0010z\u001a$\u0010w\u001a\u00020\u0004*\u00020\u00042\u0006\u0010_\u001a\u00020P2\u0006\u0010m\u001a\u00020��H\u0087\b¢\u0006\u0004\bw\u0010{\u001a?\u0010|\u001a\b\u0012\u0004\u0012\u00020\u00040A*\u00020��2\u0012\u0010N\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040M\"\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010O\u001a\u00020\u0014¢\u0006\u0004\b|\u0010}\u001a7\u0010|\u001a\b\u0012\u0004\u0012\u00020\u00040A*\u00020��2\n\u0010N\u001a\u00020.\"\u00020\b2\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010O\u001a\u00020\u0014¢\u0006\u0004\b|\u0010~\u001a2\u0010|\u001a\b\u0012\u0004\u0012\u00020\u00040A*\u00020��2\u0006\u0010d\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010O\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u007f\u0010\u0080\u0001\u001a-\u0010|\u001a\b\u0012\u0004\u0012\u00020\u00040A*\u00020��2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010O\u001a\u00020\u0014H\u0087\b¢\u0006\u0005\b|\u0010\u0081\u0001\u001aB\u0010\u0082\u0001\u001a\b\u0012\u0004\u0012\u00020\u00040>*\u00020��2\u0012\u0010N\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040M\"\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010O\u001a\u00020\u0014¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a:\u0010\u0082\u0001\u001a\b\u0012\u0004\u0012\u00020\u00040>*\u00020��2\n\u0010N\u001a\u00020.\"\u00020\b2\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010O\u001a\u00020\u0014¢\u0006\u0006\b\u0082\u0001\u0010\u0084\u0001\u001a%\u0010\u0085\u0001\u001a\u00020\u0002*\u00020��2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0005\b\u0085\u0001\u0010\u000b\u001a%\u0010\u0085\u0001\u001a\u00020\u0002*\u00020��2\u0006\u0010Y\u001a\u00020��2\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0005\b\u0085\u0001\u0010\f\u001a.\u0010\u0085\u0001\u001a\u00020\u0002*\u00020��2\u0006\u0010Y\u001a\u00020��2\u0006\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a\u001b\u0010\u0087\u0001\u001a\u00020��*\u00020��2\u0006\u0010_\u001a\u00020P¢\u0006\u0005\b\u0087\u0001\u0010`\u001a)\u0010\u0087\u0001\u001a\u00020��*\u00020\u00042\u0007\u0010\u0088\u0001\u001a\u00020\u00142\u0007\u0010\u0089\u0001\u001a\u00020\u0014H\u0087\b¢\u0006\u0006\b\u0087\u0001\u0010\u008a\u0001\u001a)\u0010\u008b\u0001\u001a\u00020\u0004*\u00020��2\u0006\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010)\u001a\u00020\u0014H\u0087\b¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001\u001a\u001c\u0010\u008b\u0001\u001a\u00020\u0004*\u00020��2\u0006\u0010_\u001a\u00020P¢\u0006\u0006\b\u008b\u0001\u0010\u008d\u0001\u001a\u001b\u0010\u008b\u0001\u001a\u00020\u0004*\u00020\u00042\u0006\u0010_\u001a\u00020P¢\u0006\u0005\b\u008b\u0001\u0010b\u001a&\u0010\u008e\u0001\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\b2\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a&\u0010\u008e\u0001\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0006\b\u008e\u0001\u0010\u0090\u0001\u001a&\u0010\u0091\u0001\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\b2\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0006\b\u0091\u0001\u0010\u008f\u0001\u001a&\u0010\u0091\u0001\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0006\b\u0091\u0001\u0010\u0090\u0001\u001a&\u0010\u0092\u0001\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\b2\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0006\b\u0092\u0001\u0010\u008f\u0001\u001a&\u0010\u0092\u0001\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0006\b\u0092\u0001\u0010\u0090\u0001\u001a&\u0010\u0093\u0001\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\b2\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0006\b\u0093\u0001\u0010\u008f\u0001\u001a&\u0010\u0093\u0001\u001a\u00020\u0004*\u00020\u00042\u0006\u0010d\u001a\u00020\u00042\b\b\u0002\u0010o\u001a\u00020\u0004¢\u0006\u0006\b\u0093\u0001\u0010\u0090\u0001\u001a\u0014\u0010\u0094\u0001\u001a\u00020��*\u00020��¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001\u001a/\u0010\u0094\u0001\u001a\u00020��*\u00020��2\u0013\u0010\u0096\u0001\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020hH\u0086\bø\u0001��¢\u0006\u0006\b\u0094\u0001\u0010\u0097\u0001\u001a \u0010\u0094\u0001\u001a\u00020��*\u00020��2\n\u0010/\u001a\u00020.\"\u00020\b¢\u0006\u0006\b\u0094\u0001\u0010\u0098\u0001\u001a\u0016\u0010\u0094\u0001\u001a\u00020\u0004*\u00020\u0004H\u0087\b¢\u0006\u0005\b\u0094\u0001\u0010F\u001a/\u0010\u0094\u0001\u001a\u00020\u0004*\u00020\u00042\u0013\u0010\u0096\u0001\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020hH\u0086\bø\u0001��¢\u0006\u0006\b\u0094\u0001\u0010\u0099\u0001\u001a \u0010\u0094\u0001\u001a\u00020\u0004*\u00020\u00042\n\u0010/\u001a\u00020.\"\u00020\b¢\u0006\u0006\b\u0094\u0001\u0010\u009a\u0001\u001a\u0014\u0010\u009b\u0001\u001a\u00020��*\u00020��¢\u0006\u0006\b\u009b\u0001\u0010\u0095\u0001\u001a/\u0010\u009b\u0001\u001a\u00020��*\u00020��2\u0013\u0010\u0096\u0001\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020hH\u0086\bø\u0001��¢\u0006\u0006\b\u009b\u0001\u0010\u0097\u0001\u001a \u0010\u009b\u0001\u001a\u00020��*\u00020��2\n\u0010/\u001a\u00020.\"\u00020\b¢\u0006\u0006\b\u009b\u0001\u0010\u0098\u0001\u001a\u0016\u0010\u009b\u0001\u001a\u00020\u0004*\u00020\u0004H\u0087\b¢\u0006\u0005\b\u009b\u0001\u0010F\u001a/\u0010\u009b\u0001\u001a\u00020\u0004*\u00020\u00042\u0013\u0010\u0096\u0001\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020hH\u0086\bø\u0001��¢\u0006\u0006\b\u009b\u0001\u0010\u0099\u0001\u001a \u0010\u009b\u0001\u001a\u00020\u0004*\u00020\u00042\n\u0010/\u001a\u00020.\"\u00020\b¢\u0006\u0006\b\u009b\u0001\u0010\u009a\u0001\u001a\u0014\u0010\u009c\u0001\u001a\u00020��*\u00020��¢\u0006\u0006\b\u009c\u0001\u0010\u0095\u0001\u001a/\u0010\u009c\u0001\u001a\u00020��*\u00020��2\u0013\u0010\u0096\u0001\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020hH\u0086\bø\u0001��¢\u0006\u0006\b\u009c\u0001\u0010\u0097\u0001\u001a \u0010\u009c\u0001\u001a\u00020��*\u00020��2\n\u0010/\u001a\u00020.\"\u00020\b¢\u0006\u0006\b\u009c\u0001\u0010\u0098\u0001\u001a\u0016\u0010\u009c\u0001\u001a\u00020\u0004*\u00020\u0004H\u0087\b¢\u0006\u0005\b\u009c\u0001\u0010F\u001a/\u0010\u009c\u0001\u001a\u00020\u0004*\u00020\u00042\u0013\u0010\u0096\u0001\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020hH\u0086\bø\u0001��¢\u0006\u0006\b\u009c\u0001\u0010\u0099\u0001\u001a \u0010\u009c\u0001\u001a\u00020\u0004*\u00020\u00042\n\u0010/\u001a\u00020.\"\u00020\b¢\u0006\u0006\b\u009c\u0001\u0010\u009a\u0001\"\u001a\u0010\u009f\u0001\u001a\u00020P*\u00020��8F@\u0006¢\u0006\b\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001\"\u001a\u0010¢\u0001\u001a\u00020\u0014*\u00020��8F@\u0006¢\u0006\b\u001a\u0006\b \u0001\u0010¡\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006£\u0001"}, d2 = {"", "other", "", "ignoreCase", "", "commonPrefixWith", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;", "commonSuffixWith", "", "char", "contains", "(Ljava/lang/CharSequence;CZ)Z", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z", "Lkotlin/text/Regex;", "regex", "(Ljava/lang/CharSequence;Lkotlin/text/Regex;)Z", "endsWith", "suffix", "", "strings", "", "startIndex", "Lkotlin/Pair;", "findAnyOf", "(Ljava/lang/CharSequence;Ljava/util/Collection;IZ)Lkotlin/Pair;", "last", "findAnyOf$StringsKt__StringsKt", "(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lkotlin/Pair;", "findLastAnyOf", FirebaseAnalytics.Param.INDEX, "hasSurrogatePairAt", "(Ljava/lang/CharSequence;I)Z", "C", "R", "Lkotlin/Function0;", "defaultValue", "ifBlank", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ifEmpty", "indexOf", "(Ljava/lang/CharSequence;CIZ)I", "endIndex", "indexOf$StringsKt__StringsKt", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I", "string", "(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I", "", "chars", "indexOfAny", "(Ljava/lang/CharSequence;[CIZ)I", "(Ljava/lang/CharSequence;Ljava/util/Collection;IZ)I", "isEmpty", "(Ljava/lang/CharSequence;)Z", "isNotBlank", "isNotEmpty", "isNullOrBlank", "isNullOrEmpty", "Lkotlin/collections/CharIterator;", "iterator", "(Ljava/lang/CharSequence;)Lkotlin/collections/CharIterator;", "lastIndexOf", "lastIndexOfAny", "Lkotlin/sequences/Sequence;", "lineSequence", "(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;", "", "lines", "(Ljava/lang/CharSequence;)Ljava/util/List;", "matches", "orEmpty", "(Ljava/lang/String;)Ljava/lang/String;", Name.LENGTH, "padChar", "padEnd", "(Ljava/lang/CharSequence;IC)Ljava/lang/CharSequence;", "(Ljava/lang/String;IC)Ljava/lang/String;", "padStart", "", "delimiters", "limit", "Lkotlin/ranges/IntRange;", "rangesDelimitedBy$StringsKt__StringsKt", "(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;", "rangesDelimitedBy", "(Ljava/lang/CharSequence;[CIZI)Lkotlin/sequences/Sequence;", "thisOffset", "otherOffset", "regionMatchesImpl", "(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z", "prefix", "removePrefix", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;", "removeRange", "(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;", "range", "(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/CharSequence;", "(Ljava/lang/String;II)Ljava/lang/String;", "(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;", "removeSuffix", "delimiter", "removeSurrounding", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;", "Lkotlin/Function1;", "Lkotlin/text/MatchResult;", "transform", "replace", "(Ljava/lang/CharSequence;Lkotlin/text/Regex;Lkotlin/Function1;)Ljava/lang/String;", "replacement", "(Ljava/lang/CharSequence;Lkotlin/text/Regex;Ljava/lang/String;)Ljava/lang/String;", "missingDelimiterValue", "replaceAfter", "(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replaceAfterLast", "replaceBefore", "replaceBeforeLast", "replaceFirst", "replaceRange", "(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;", "(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "(Ljava/lang/String;IILjava/lang/CharSequence;)Ljava/lang/String;", "(Ljava/lang/String;Lkotlin/ranges/IntRange;Ljava/lang/CharSequence;)Ljava/lang/String;", "split", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;", "(Ljava/lang/CharSequence;[CZI)Ljava/util/List;", "split$StringsKt__StringsKt", "(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;", "(Ljava/lang/CharSequence;Lkotlin/text/Regex;I)Ljava/util/List;", "splitToSequence", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;", "(Ljava/lang/CharSequence;[CZI)Lkotlin/sequences/Sequence;", "startsWith", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Z", "subSequence", "start", "end", "(Ljava/lang/String;II)Ljava/lang/CharSequence;", "substring", "(Ljava/lang/CharSequence;II)Ljava/lang/String;", "(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;", "substringAfter", "(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "substringAfterLast", "substringBefore", "substringBeforeLast", "trim", "(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "predicate", "(Ljava/lang/CharSequence;Lkotlin/Function1;)Ljava/lang/CharSequence;", "(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;", "(Ljava/lang/String;Lkotlin/Function1;)Ljava/lang/String;", "(Ljava/lang/String;[C)Ljava/lang/String;", "trimEnd", "trimStart", "getIndices", "(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;", "indices", "getLastIndex", "(Ljava/lang/CharSequence;)I", "lastIndex", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/text/StringsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__StringsKt.class */
public class StringsKt__StringsKt extends StringsKt__StringsJVMKt {
    /* renamed from: A0 */
    public static /* synthetic */ String m1476A0(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return m1422z0(str, c, str2);
    }

    @NotNull
    /* renamed from: B0 */
    public static final String m1475B0(@NotNull String substringBefore, char c, @NotNull String missingDelimiterValue) {
        int T;
        Intrinsics.m1830e(substringBefore, "$this$substringBefore");
        Intrinsics.m1830e(missingDelimiterValue, "missingDelimiterValue");
        T = m1454T(substringBefore, c, 0, false, 6, null);
        if (T != -1) {
            missingDelimiterValue = substringBefore.substring(0, T);
            Intrinsics.m1831d(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    @NotNull
    /* renamed from: C0 */
    public static final String m1474C0(@NotNull String substringBefore, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        int U;
        Intrinsics.m1830e(substringBefore, "$this$substringBefore");
        Intrinsics.m1830e(delimiter, "delimiter");
        Intrinsics.m1830e(missingDelimiterValue, "missingDelimiterValue");
        U = m1453U(substringBefore, delimiter, 0, false, 6, null);
        if (U != -1) {
            missingDelimiterValue = substringBefore.substring(0, U);
            Intrinsics.m1831d(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    /* renamed from: D0 */
    public static /* synthetic */ String m1472D0(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return m1475B0(str, c, str2);
    }

    /* renamed from: E */
    public static final boolean m1471E(@NotNull CharSequence contains, char c, boolean z) {
        int T;
        Intrinsics.m1830e(contains, "$this$contains");
        T = m1454T(contains, c, 0, z, 2, null);
        return T >= 0;
    }

    /* renamed from: E0 */
    public static /* synthetic */ String m1470E0(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return m1474C0(str, str2, str3);
    }

    /* renamed from: F */
    public static final boolean m1469F(@NotNull CharSequence contains, @NotNull CharSequence other, boolean z) {
        boolean z2;
        int U;
        Intrinsics.m1830e(contains, "$this$contains");
        Intrinsics.m1830e(other, "other");
        if (other instanceof String) {
            U = m1453U(contains, (String) other, 0, z, 2, null);
            if (U >= 0) {
                z2 = true;
            }
            z2 = false;
        } else {
            if (m1455S(contains, other, 0, contains.length(), z, false, 16, null) >= 0) {
                z2 = true;
            }
            z2 = false;
        }
        return z2;
    }

    @NotNull
    /* renamed from: F0 */
    public static CharSequence m1468F0(@NotNull CharSequence trim) {
        Intrinsics.m1830e(trim, "$this$trim");
        int length = trim.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean c = CharsKt__CharJVMKt.m1573c(trim.charAt(!z ? i : length));
            if (!z) {
                if (!c) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!c) {
                break;
            } else {
                length--;
            }
        }
        return trim.subSequence(i, length + 1);
    }

    /* renamed from: G */
    public static /* synthetic */ boolean m1467G(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m1471E(charSequence, c, z);
    }

    /* renamed from: H */
    public static /* synthetic */ boolean m1466H(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m1469F(charSequence, charSequence2, z);
    }

    /* renamed from: I */
    public static final boolean m1465I(@NotNull CharSequence endsWith, @NotNull CharSequence suffix, boolean z) {
        boolean o;
        Intrinsics.m1830e(endsWith, "$this$endsWith");
        Intrinsics.m1830e(suffix, "suffix");
        if (z || !(endsWith instanceof String) || !(suffix instanceof String)) {
            return m1439i0(endsWith, endsWith.length() - suffix.length(), suffix, 0, suffix.length(), z);
        }
        o = StringsKt__StringsJVMKt.m1488o((String) endsWith, (String) suffix, false, 2, null);
        return o;
    }

    /* renamed from: J */
    public static /* synthetic */ boolean m1464J(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m1465I(charSequence, charSequence2, z);
    }

    @Nullable
    /* renamed from: K */
    public static final Pair<Integer, String> m1463K(@NotNull CharSequence findAnyOf, @NotNull Collection<String> strings, int i, boolean z) {
        Intrinsics.m1830e(findAnyOf, "$this$findAnyOf");
        Intrinsics.m1830e(strings, "strings");
        return m1462L(findAnyOf, strings, i, z, false);
    }

    /* renamed from: L */
    public static final Pair<Integer, String> m1462L(CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        IntProgression intProgression;
        Object obj;
        Object obj2;
        int d;
        int b;
        Pair<Integer, String> pair = null;
        if (z || collection.size() != 1) {
            if (!z2) {
                b = RangesKt___RangesKt.m1713b(i, 0);
                intProgression = new IntRange(b, charSequence.length());
            } else {
                d = RangesKt___RangesKt.m1711d(i, m1459O(charSequence));
                intProgression = RangesKt___RangesKt.m1708g(d, 0);
            }
            if (charSequence instanceof String) {
                int f = intProgression.m1738f();
                int g = intProgression.m1737g();
                int h = intProgression.m1736h();
                if (h >= 0) {
                    if (f > g) {
                        return null;
                    }
                } else if (f < g) {
                    return null;
                }
                while (true) {
                    Iterator<T> it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj2 = null;
                            break;
                        }
                        obj2 = it.next();
                        String str = (String) obj2;
                        if (StringsKt__StringsJVMKt.m1484s(str, 0, (String) charSequence, f, str.length(), z)) {
                            break;
                        }
                    }
                    String str2 = (String) obj2;
                    if (str2 != null) {
                        return TuplesKt.m2469a(Integer.valueOf(f), str2);
                    }
                    if (f == g) {
                        return null;
                    }
                    f += h;
                }
            } else {
                int f2 = intProgression.m1738f();
                int g2 = intProgression.m1737g();
                int h2 = intProgression.m1736h();
                if (h2 >= 0) {
                    if (f2 > g2) {
                        return null;
                    }
                } else if (f2 < g2) {
                    return null;
                }
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        String str3 = (String) obj;
                        if (m1439i0(str3, 0, charSequence, f2, str3.length(), z)) {
                            break;
                        }
                    }
                    String str4 = (String) obj;
                    if (str4 != null) {
                        return TuplesKt.m2469a(Integer.valueOf(f2), str4);
                    }
                    if (f2 == g2) {
                        return null;
                    }
                    f2 += h2;
                }
            }
        } else {
            String str5 = (String) CollectionsKt.m2203O(collection);
            int U = !z2 ? m1453U(charSequence, str5, i, false, 4, null) : m1447a0(charSequence, str5, i, false, 4, null);
            if (U >= 0) {
                pair = TuplesKt.m2469a(Integer.valueOf(U), str5);
            }
            return pair;
        }
    }

    /* renamed from: M */
    public static /* synthetic */ Pair m1461M(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m1463K(charSequence, collection, i, z);
    }

    @NotNull
    /* renamed from: N */
    public static final IntRange m1460N(@NotNull CharSequence indices) {
        Intrinsics.m1830e(indices, "$this$indices");
        return new IntRange(0, indices.length() - 1);
    }

    /* renamed from: O */
    public static final int m1459O(@NotNull CharSequence lastIndex) {
        Intrinsics.m1830e(lastIndex, "$this$lastIndex");
        return lastIndex.length() - 1;
    }

    /* renamed from: P */
    public static final int m1458P(@NotNull CharSequence indexOf, char c, int i, boolean z) {
        Intrinsics.m1830e(indexOf, "$this$indexOf");
        return (z || !(indexOf instanceof String)) ? m1452V(indexOf, new char[]{c}, i, z) : ((String) indexOf).indexOf(c, i);
    }

    /* renamed from: Q */
    public static final int m1457Q(@NotNull CharSequence indexOf, @NotNull String string, int i, boolean z) {
        Intrinsics.m1830e(indexOf, "$this$indexOf");
        Intrinsics.m1830e(string, "string");
        return (z || !(indexOf instanceof String)) ? m1455S(indexOf, string, i, indexOf.length(), z, false, 16, null) : ((String) indexOf).indexOf(string, i);
    }

    /* renamed from: R */
    private static final int m1456R(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        IntProgression intProgression;
        int d;
        int b;
        int b2;
        int d2;
        if (!z2) {
            b2 = RangesKt___RangesKt.m1713b(i, 0);
            d2 = RangesKt___RangesKt.m1711d(i2, charSequence.length());
            intProgression = new IntRange(b2, d2);
        } else {
            d = RangesKt___RangesKt.m1711d(i, m1459O(charSequence));
            b = RangesKt___RangesKt.m1713b(i2, 0);
            intProgression = RangesKt___RangesKt.m1708g(d, b);
        }
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int f = intProgression.m1738f();
            int g = intProgression.m1737g();
            int h = intProgression.m1736h();
            if (h >= 0) {
                if (f > g) {
                    return -1;
                }
            } else if (f < g) {
                return -1;
            }
            while (!m1439i0(charSequence2, 0, charSequence, f, charSequence2.length(), z)) {
                if (f == g) {
                    return -1;
                }
                f += h;
            }
            return f;
        }
        int f2 = intProgression.m1738f();
        int g2 = intProgression.m1737g();
        int h2 = intProgression.m1736h();
        if (h2 >= 0) {
            if (f2 > g2) {
                return -1;
            }
        } else if (f2 < g2) {
            return -1;
        }
        while (!StringsKt__StringsJVMKt.m1484s((String) charSequence2, 0, (String) charSequence, f2, charSequence2.length(), z)) {
            if (f2 == g2) {
                return -1;
            }
            f2 += h2;
        }
        return f2;
    }

    /* renamed from: S */
    static /* synthetic */ int m1455S(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return m1456R(charSequence, charSequence2, i, i2, z, z2);
    }

    /* renamed from: T */
    public static /* synthetic */ int m1454T(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m1458P(charSequence, c, i, z);
    }

    /* renamed from: U */
    public static /* synthetic */ int m1453U(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m1457Q(charSequence, str, i, z);
    }

    /* renamed from: V */
    public static final int m1452V(@NotNull CharSequence indexOfAny, @NotNull char[] chars, int i, boolean z) {
        int b;
        boolean z2;
        char N;
        Intrinsics.m1830e(indexOfAny, "$this$indexOfAny");
        Intrinsics.m1830e(chars, "chars");
        if (z || chars.length != 1 || !(indexOfAny instanceof String)) {
            b = RangesKt___RangesKt.m1713b(i, 0);
            int O = m1459O(indexOfAny);
            if (b > O) {
                return -1;
            }
            while (true) {
                char charAt = indexOfAny.charAt(b);
                int length = chars.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z2 = false;
                        break;
                    } else if (CharsKt__CharKt.m1572d(chars[i2], charAt, z)) {
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z2) {
                    return b;
                }
                if (b == O) {
                    return -1;
                }
                b++;
            }
        } else {
            N = ArraysKt___ArraysKt.m2247N(chars);
            return ((String) indexOfAny).indexOf(N, i);
        }
    }

    @NotNull
    /* renamed from: W */
    public static final CharIterator m1451W(@NotNull final CharSequence iterator) {
        Intrinsics.m1830e(iterator, "$this$iterator");
        return new CharIterator() { // from class: kotlin.text.StringsKt__StringsKt$iterator$1

            /* renamed from: f */
            private int f21050f;

            @Override // kotlin.collections.CharIterator
            /* renamed from: b */
            public char mo1421b() {
                CharSequence charSequence = iterator;
                int i = this.f21050f;
                this.f21050f = i + 1;
                return charSequence.charAt(i);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f21050f < iterator.length();
            }
        };
    }

    /* renamed from: X */
    public static final int m1450X(@NotNull CharSequence lastIndexOf, char c, int i, boolean z) {
        Intrinsics.m1830e(lastIndexOf, "$this$lastIndexOf");
        return (z || !(lastIndexOf instanceof String)) ? m1446b0(lastIndexOf, new char[]{c}, i, z) : ((String) lastIndexOf).lastIndexOf(c, i);
    }

    /* renamed from: Y */
    public static final int m1449Y(@NotNull CharSequence lastIndexOf, @NotNull String string, int i, boolean z) {
        Intrinsics.m1830e(lastIndexOf, "$this$lastIndexOf");
        Intrinsics.m1830e(string, "string");
        return (z || !(lastIndexOf instanceof String)) ? m1456R(lastIndexOf, string, i, 0, z, true) : ((String) lastIndexOf).lastIndexOf(string, i);
    }

    /* renamed from: Z */
    public static /* synthetic */ int m1448Z(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = m1459O(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m1450X(charSequence, c, i, z);
    }

    /* renamed from: a0 */
    public static /* synthetic */ int m1447a0(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = m1459O(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m1449Y(charSequence, str, i, z);
    }

    /* renamed from: b0 */
    public static final int m1446b0(@NotNull CharSequence lastIndexOfAny, @NotNull char[] chars, int i, boolean z) {
        int d;
        char N;
        Intrinsics.m1830e(lastIndexOfAny, "$this$lastIndexOfAny");
        Intrinsics.m1830e(chars, "chars");
        if (z || chars.length != 1 || !(lastIndexOfAny instanceof String)) {
            for (d = RangesKt___RangesKt.m1711d(i, m1459O(lastIndexOfAny)); d >= 0; d--) {
                char charAt = lastIndexOfAny.charAt(d);
                int length = chars.length;
                boolean z2 = false;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (CharsKt__CharKt.m1572d(chars[i2], charAt, z)) {
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z2) {
                    return d;
                }
            }
            return -1;
        }
        N = ArraysKt___ArraysKt.m2247N(chars);
        return ((String) lastIndexOfAny).lastIndexOf(N, i);
    }

    @NotNull
    /* renamed from: c0 */
    public static final Sequence<String> m1445c0(@NotNull CharSequence lineSequence) {
        Intrinsics.m1830e(lineSequence, "$this$lineSequence");
        return m1428t0(lineSequence, new String[]{"\r\n", "\n", "\r"}, false, 0, 6, null);
    }

    @NotNull
    /* renamed from: d0 */
    public static final List<String> m1444d0(@NotNull CharSequence lines) {
        List<String> r;
        Intrinsics.m1830e(lines, "$this$lines");
        r = SequencesKt___SequencesKt.m1612r(m1445c0(lines));
        return r;
    }

    /* renamed from: e0 */
    private static final Sequence<IntRange> m1443e0(CharSequence charSequence, char[] cArr, int i, boolean z, int i2) {
        if (i2 >= 0) {
            return new DelimitedRangesSequence(charSequence, i, i2, new StringsKt__StringsKt$rangesDelimitedBy$2(cArr, z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    /* renamed from: f0 */
    private static final Sequence<IntRange> m1442f0(CharSequence charSequence, String[] strArr, int i, boolean z, int i2) {
        List b;
        if (i2 >= 0) {
            b = ArraysKt___ArraysJvmKt.m2304b(strArr);
            return new DelimitedRangesSequence(charSequence, i, i2, new StringsKt__StringsKt$rangesDelimitedBy$4(b, z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    /* renamed from: g0 */
    static /* synthetic */ Sequence m1441g0(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return m1443e0(charSequence, cArr, i, z, i2);
    }

    /* renamed from: h0 */
    static /* synthetic */ Sequence m1440h0(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return m1442f0(charSequence, strArr, i, z, i2);
    }

    /* renamed from: i0 */
    public static final boolean m1439i0(@NotNull CharSequence regionMatchesImpl, int i, @NotNull CharSequence other, int i2, int i3, boolean z) {
        Intrinsics.m1830e(regionMatchesImpl, "$this$regionMatchesImpl");
        Intrinsics.m1830e(other, "other");
        if (i2 < 0 || i < 0 || i > regionMatchesImpl.length() - i3 || i2 > other.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!CharsKt__CharKt.m1572d(regionMatchesImpl.charAt(i + i4), other.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    /* renamed from: j0 */
    public static String m1438j0(@NotNull String removePrefix, @NotNull CharSequence prefix) {
        Intrinsics.m1830e(removePrefix, "$this$removePrefix");
        Intrinsics.m1830e(prefix, "prefix");
        String str = removePrefix;
        if (m1426v0(removePrefix, prefix, false, 2, null)) {
            str = removePrefix.substring(prefix.length());
            Intrinsics.m1831d(str, "(this as java.lang.String).substring(startIndex)");
        }
        return str;
    }

    @NotNull
    /* renamed from: k0 */
    public static String m1437k0(@NotNull String removeSuffix, @NotNull CharSequence suffix) {
        Intrinsics.m1830e(removeSuffix, "$this$removeSuffix");
        Intrinsics.m1830e(suffix, "suffix");
        String str = removeSuffix;
        if (m1464J(removeSuffix, suffix, false, 2, null)) {
            str = removeSuffix.substring(0, removeSuffix.length() - suffix.length());
            Intrinsics.m1831d(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return str;
    }

    @NotNull
    /* renamed from: l0 */
    public static String m1436l0(@NotNull String removeSurrounding, @NotNull CharSequence delimiter) {
        Intrinsics.m1830e(removeSurrounding, "$this$removeSurrounding");
        Intrinsics.m1830e(delimiter, "delimiter");
        return m1435m0(removeSurrounding, delimiter, delimiter);
    }

    @NotNull
    /* renamed from: m0 */
    public static final String m1435m0(@NotNull String removeSurrounding, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        Intrinsics.m1830e(removeSurrounding, "$this$removeSurrounding");
        Intrinsics.m1830e(prefix, "prefix");
        Intrinsics.m1830e(suffix, "suffix");
        String str = removeSurrounding;
        if (removeSurrounding.length() >= prefix.length() + suffix.length()) {
            str = removeSurrounding;
            if (m1426v0(removeSurrounding, prefix, false, 2, null)) {
                str = removeSurrounding;
                if (m1464J(removeSurrounding, suffix, false, 2, null)) {
                    str = removeSurrounding.substring(prefix.length(), removeSurrounding.length() - suffix.length());
                    Intrinsics.m1831d(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                }
            }
        }
        return str;
    }

    @NotNull
    /* renamed from: n0 */
    public static final List<String> m1434n0(@NotNull CharSequence split, @NotNull char[] delimiters, boolean z, int i) {
        Iterable<IntRange> f;
        int p;
        Intrinsics.m1830e(split, "$this$split");
        Intrinsics.m1830e(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return m1433o0(split, String.valueOf(delimiters[0]), z, i);
        }
        f = SequencesKt___SequencesKt.m1624f(m1441g0(split, delimiters, 0, z, i, 2, null));
        p = CollectionsKt__IterablesKt.m2164p(f, 10);
        ArrayList arrayList = new ArrayList(p);
        for (IntRange intRange : f) {
            arrayList.add(m1425w0(split, intRange));
        }
        return arrayList;
    }

    /* renamed from: o0 */
    private static final List<String> m1433o0(CharSequence charSequence, String str, boolean z, int i) {
        List<String> b;
        int length;
        int Q;
        int i2 = 0;
        if (i >= 0) {
            int Q2 = m1457Q(charSequence, str, 0, z);
            if (Q2 == -1 || i == 1) {
                b = CollectionsKt__CollectionsJVMKt.m2179b(charSequence.toString());
                return b;
            }
            boolean z2 = i > 0;
            int i3 = 10;
            if (z2) {
                i3 = RangesKt___RangesKt.m1711d(i, 10);
            }
            ArrayList arrayList = new ArrayList(i3);
            int i4 = Q2;
            do {
                arrayList.add(charSequence.subSequence(i2, i4).toString());
                length = str.length() + i4;
                if (z2 && arrayList.size() == i - 1) {
                    break;
                }
                Q = m1457Q(charSequence, str, length, z);
                i2 = length;
                i4 = Q;
            } while (Q != -1);
            arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
            return arrayList;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
    }

    /* renamed from: p0 */
    public static /* synthetic */ List m1432p0(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m1434n0(charSequence, cArr, z, i);
    }

    @NotNull
    /* renamed from: q0 */
    public static final Sequence<String> m1431q0(@NotNull CharSequence splitToSequence, @NotNull char[] delimiters, boolean z, int i) {
        Sequence<String> o;
        Intrinsics.m1830e(splitToSequence, "$this$splitToSequence");
        Intrinsics.m1830e(delimiters, "delimiters");
        o = SequencesKt___SequencesKt.m1615o(m1441g0(splitToSequence, delimiters, 0, z, i, 2, null), new StringsKt__StringsKt$splitToSequence$2(splitToSequence));
        return o;
    }

    @NotNull
    /* renamed from: r0 */
    public static final Sequence<String> m1430r0(@NotNull CharSequence splitToSequence, @NotNull String[] delimiters, boolean z, int i) {
        Sequence<String> o;
        Intrinsics.m1830e(splitToSequence, "$this$splitToSequence");
        Intrinsics.m1830e(delimiters, "delimiters");
        o = SequencesKt___SequencesKt.m1615o(m1440h0(splitToSequence, delimiters, 0, z, i, 2, null), new StringsKt__StringsKt$splitToSequence$1(splitToSequence));
        return o;
    }

    /* renamed from: s0 */
    public static /* synthetic */ Sequence m1429s0(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m1431q0(charSequence, cArr, z, i);
    }

    /* renamed from: t0 */
    public static /* synthetic */ Sequence m1428t0(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m1430r0(charSequence, strArr, z, i);
    }

    /* renamed from: u0 */
    public static final boolean m1427u0(@NotNull CharSequence startsWith, @NotNull CharSequence prefix, boolean z) {
        boolean C;
        Intrinsics.m1830e(startsWith, "$this$startsWith");
        Intrinsics.m1830e(prefix, "prefix");
        if (z || !(startsWith instanceof String) || !(prefix instanceof String)) {
            return m1439i0(startsWith, 0, prefix, 0, prefix.length(), z);
        }
        C = StringsKt__StringsJVMKt.m1491C((String) startsWith, (String) prefix, false, 2, null);
        return C;
    }

    /* renamed from: v0 */
    public static /* synthetic */ boolean m1426v0(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m1427u0(charSequence, charSequence2, z);
    }

    @NotNull
    /* renamed from: w0 */
    public static final String m1425w0(@NotNull CharSequence substring, @NotNull IntRange range) {
        Intrinsics.m1830e(substring, "$this$substring");
        Intrinsics.m1830e(range, "range");
        return substring.subSequence(range.mo1695c().intValue(), range.mo1694e().intValue() + 1).toString();
    }

    @NotNull
    /* renamed from: x0 */
    public static final String m1424x0(@NotNull String substringAfter, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        int U;
        Intrinsics.m1830e(substringAfter, "$this$substringAfter");
        Intrinsics.m1830e(delimiter, "delimiter");
        Intrinsics.m1830e(missingDelimiterValue, "missingDelimiterValue");
        U = m1453U(substringAfter, delimiter, 0, false, 6, null);
        if (U != -1) {
            missingDelimiterValue = substringAfter.substring(U + delimiter.length(), substringAfter.length());
            Intrinsics.m1831d(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }

    /* renamed from: y0 */
    public static /* synthetic */ String m1423y0(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return m1424x0(str, str2, str3);
    }

    @NotNull
    /* renamed from: z0 */
    public static final String m1422z0(@NotNull String substringAfterLast, char c, @NotNull String missingDelimiterValue) {
        int Z;
        Intrinsics.m1830e(substringAfterLast, "$this$substringAfterLast");
        Intrinsics.m1830e(missingDelimiterValue, "missingDelimiterValue");
        Z = m1448Z(substringAfterLast, c, 0, false, 6, null);
        if (Z != -1) {
            missingDelimiterValue = substringAfterLast.substring(Z + 1, substringAfterLast.length());
            Intrinsics.m1831d(missingDelimiterValue, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return missingDelimiterValue;
    }
}
