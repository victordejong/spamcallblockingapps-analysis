package kotlinx.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.OpDescriptor;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import kotlinx.coroutines.selects.SelectClause0;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Deprecated
@Metadata(bv = {1, 0, 3}, d1 = {"��Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010 \n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0001\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0017\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0006Ô\u0001Õ\u0001Ö\u0001B\u0012\u0012\u0007\u0010Ñ\u0001\u001a\u00020\u000b¢\u0006\u0006\bÒ\u0001\u0010Ó\u0001J+\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0002¢\u0006\u0004\b\f\u0010\rJ%\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0080@ø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0082@ø\u0001��¢\u0006\u0004\b\u001f\u0010\u001dJ\u0019\u0010!\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010\u000eH\u0017¢\u0006\u0004\b!\u0010\"J\u001f\u0010!\u001a\u00020\u00122\u000e\u0010 \u001a\n\u0018\u00010#j\u0004\u0018\u0001`$H\u0016¢\u0006\u0004\b!\u0010%J\u0017\u0010&\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b&\u0010\"J\u0019\u0010)\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000eH\u0016¢\u0006\u0004\b*\u0010+J\u001b\u0010,\u001a\u0004\u0018\u00010\u00052\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000eH\u0002¢\u0006\u0004\b.\u0010\"J\u000f\u00100\u001a\u00020/H\u0014¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000eH\u0016¢\u0006\u0004\b2\u0010\"J!\u00105\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b5\u00106J)\u0010;\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u0002072\u0006\u00109\u001a\u0002082\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b;\u0010<J\u0019\u0010=\u001a\u00020\u000e2\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b=\u0010>J(\u0010C\u001a\u00020@2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010/2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u000eH\u0080\b¢\u0006\u0004\bA\u0010BJ#\u0010D\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u0002072\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\bD\u0010EJ\u0019\u0010F\u001a\u0004\u0018\u0001082\u0006\u0010\u0015\u001a\u000203H\u0002¢\u0006\u0004\bF\u0010GJ\u0011\u0010H\u001a\u00060#j\u0002`$¢\u0006\u0004\bH\u0010IJ\u0013\u0010J\u001a\u00060#j\u0002`$H\u0016¢\u0006\u0004\bJ\u0010IJ\u0011\u0010M\u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\bK\u0010LJ\u000f\u0010N\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\bN\u0010OJ'\u0010P\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0015\u001a\u0002072\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010H\u0002¢\u0006\u0004\bP\u0010QJ\u0019\u0010R\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0015\u001a\u000203H\u0002¢\u0006\u0004\bR\u0010SJ\u0017\u0010U\u001a\u00020\u000b2\u0006\u0010T\u001a\u00020\u000eH\u0014¢\u0006\u0004\bU\u0010\"J\u0017\u0010W\u001a\u00020\u00122\u0006\u0010T\u001a\u00020\u000eH\u0010¢\u0006\u0004\bV\u0010+J\u0019\u0010[\u001a\u00020\u00122\b\u0010X\u001a\u0004\u0018\u00010\u0001H��¢\u0006\u0004\bY\u0010ZJF\u0010d\u001a\u00020c2\u0006\u0010\\\u001a\u00020\u000b2\u0006\u0010]\u001a\u00020\u000b2'\u0010b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b_\u0012\b\b`\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00120^j\u0002`a¢\u0006\u0004\bd\u0010eJ6\u0010d\u001a\u00020c2'\u0010b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b_\u0012\b\b`\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00120^j\u0002`a¢\u0006\u0004\bd\u0010fJ\u0013\u0010g\u001a\u00020\u0012H\u0086@ø\u0001��¢\u0006\u0004\bg\u0010\u001dJ\u000f\u0010h\u001a\u00020\u000bH\u0002¢\u0006\u0004\bh\u0010iJ\u0013\u0010j\u001a\u00020\u0012H\u0082@ø\u0001��¢\u0006\u0004\bj\u0010\u001dJ&\u0010m\u001a\u00020l2\u0014\u0010k\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00120^H\u0082\b¢\u0006\u0004\bm\u0010nJ\u001b\u0010o\u001a\u0004\u0018\u00010\u00052\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\bo\u0010-J\u0019\u0010q\u001a\u00020\u000b2\b\u0010:\u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\bp\u0010(J\u001b\u0010s\u001a\u0004\u0018\u00010\u00052\b\u0010:\u001a\u0004\u0018\u00010\u0005H��¢\u0006\u0004\br\u0010-JD\u0010t\u001a\u0006\u0012\u0002\b\u00030\t2'\u0010b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b_\u0012\b\b`\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00120^j\u0002`a2\u0006\u0010\\\u001a\u00020\u000bH\u0002¢\u0006\u0004\bt\u0010uJ\u000f\u0010w\u001a\u00020/H\u0010¢\u0006\u0004\bv\u00101J\u001f\u0010x\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u000eH\u0002¢\u0006\u0004\bx\u0010yJ2\u0010{\u001a\u00020\u0012\"\u000e\b��\u0010z\u0018\u0001*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\b\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u000eH\u0082\b¢\u0006\u0004\b{\u0010yJ\u0019\u0010\\\u001a\u00020\u00122\b\u0010 \u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\\\u0010+J\u0019\u0010|\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b|\u0010\u0017J\u000f\u0010\u007f\u001a\u00020\u0012H\u0010¢\u0006\u0004\b}\u0010~J\u0019\u0010\u0081\u0001\u001a\u00020\u00122\u0007\u0010\u0080\u0001\u001a\u00020\u0003¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u001b\u0010\u0084\u0001\u001a\u00020\u00122\u0007\u0010\u0015\u001a\u00030\u0083\u0001H\u0002¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u001e\u0010\u0086\u0001\u001a\u00020\u00122\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\tH\u0002¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001JI\u0010\u008c\u0001\u001a\u00020\u0012\"\u0005\b��\u0010\u0088\u00012\u000e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028��0\u0089\u00012\u001d\u0010k\u001a\u0019\b\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028��0\u008b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050^ø\u0001��¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001JX\u0010\u0091\u0001\u001a\u00020\u0012\"\u0004\b��\u0010z\"\u0005\b\u0001\u0010\u0088\u00012\u000e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u0089\u00012$\u0010k\u001a \b\u0001\u0012\u0004\u0012\u00028��\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u008e\u0001H��ø\u0001��¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u001e\u0010\u0093\u0001\u001a\u00020\u00122\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH��¢\u0006\u0006\b\u0092\u0001\u0010\u0087\u0001JX\u0010\u0095\u0001\u001a\u00020\u0012\"\u0004\b��\u0010z\"\u0005\b\u0001\u0010\u0088\u00012\u000e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u0089\u00012$\u0010k\u001a \b\u0001\u0012\u0004\u0012\u00028��\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u008e\u0001H��ø\u0001��¢\u0006\u0006\b\u0094\u0001\u0010\u0090\u0001J\u000f\u0010\u0096\u0001\u001a\u00020\u000b¢\u0006\u0005\b\u0096\u0001\u0010iJ\u001d\u0010\u0098\u0001\u001a\u00030\u0097\u00012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b\u0098\u0001\u0010\u0099\u0001J\u001c\u0010\u009a\u0001\u001a\u00020/2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u0011\u0010\u009c\u0001\u001a\u00020/H\u0007¢\u0006\u0005\b\u009c\u0001\u00101J\u0011\u0010\u009d\u0001\u001a\u00020/H\u0016¢\u0006\u0005\b\u009d\u0001\u00101J$\u0010\u009e\u0001\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b\u009e\u0001\u0010\u009f\u0001J\"\u0010 \u0001\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u0002032\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0006\b \u0001\u0010¡\u0001J(\u0010¢\u0001\u001a\u0004\u0018\u00010\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b¢\u0001\u0010£\u0001J&\u0010¤\u0001\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u0002032\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0006\b¤\u0001\u0010¥\u0001J-\u0010¦\u0001\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u0002072\u0006\u0010\u0018\u001a\u0002082\b\u0010:\u001a\u0004\u0018\u00010\u0005H\u0082\u0010¢\u0006\u0006\b¦\u0001\u0010§\u0001J\u0019\u0010©\u0001\u001a\u0004\u0018\u000108*\u00030¨\u0001H\u0002¢\u0006\u0006\b©\u0001\u0010ª\u0001J\u001f\u0010«\u0001\u001a\u00020\u0012*\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0005\b«\u0001\u0010yJ&\u0010¬\u0001\u001a\u00060#j\u0002`$*\u00020\u000e2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010/H\u0004¢\u0006\u0006\b¬\u0001\u0010\u00ad\u0001R\u001d\u0010±\u0001\u001a\t\u0012\u0004\u0012\u00020\u00010®\u00018F@\u0006¢\u0006\b\u001a\u0006\b¯\u0001\u0010°\u0001R\u001a\u0010³\u0001\u001a\u0004\u0018\u00010\u000e8D@\u0004X\u0084\u0004¢\u0006\u0007\u001a\u0005\b²\u0001\u0010OR\u0018\u0010µ\u0001\u001a\u00020\u000b8D@\u0004X\u0084\u0004¢\u0006\u0007\u001a\u0005\b´\u0001\u0010iR\u0018\u0010·\u0001\u001a\u00020\u000b8P@\u0010X\u0090\u0004¢\u0006\u0007\u001a\u0005\b¶\u0001\u0010iR\u0018\u0010¸\u0001\u001a\u00020\u000b8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b¸\u0001\u0010iR\u0015\u0010¹\u0001\u001a\u00020\u000b8F@\u0006¢\u0006\u0007\u001a\u0005\b¹\u0001\u0010iR\u0015\u0010º\u0001\u001a\u00020\u000b8F@\u0006¢\u0006\u0007\u001a\u0005\bº\u0001\u0010iR\u0015\u0010»\u0001\u001a\u00020\u000b8F@\u0006¢\u0006\u0007\u001a\u0005\b»\u0001\u0010iR\u0018\u0010¼\u0001\u001a\u00020\u000b8T@\u0014X\u0094\u0004¢\u0006\u0007\u001a\u0005\b¼\u0001\u0010iR\u001b\u0010À\u0001\u001a\u0007\u0012\u0002\b\u00030½\u00018F@\u0006¢\u0006\b\u001a\u0006\b¾\u0001\u0010¿\u0001R\u0018\u0010Â\u0001\u001a\u00020\u000b8P@\u0010X\u0090\u0004¢\u0006\u0007\u001a\u0005\bÁ\u0001\u0010iR\u0016\u0010Å\u0001\u001a\u00020\u00048F@\u0006¢\u0006\b\u001a\u0006\bÃ\u0001\u0010Ä\u0001R.\u0010Ë\u0001\u001a\u0004\u0018\u00010\u00192\t\u0010Æ\u0001\u001a\u0004\u0018\u00010\u00198@@@X\u0080\u000e¢\u0006\u0010\u001a\u0006\bÇ\u0001\u0010È\u0001\"\u0006\bÉ\u0001\u0010Ê\u0001R\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00058@@��X\u0080\u0004¢\u0006\u0007\u001a\u0005\bÌ\u0001\u0010LR \u0010Î\u0001\u001a\u0004\u0018\u00010\u000e*\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\bÍ\u0001\u0010>R\u001d\u0010Ï\u0001\u001a\u00020\u000b*\u0002038B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bÏ\u0001\u0010Ð\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006×\u0001"}, d2 = {"Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/ParentJob;", "Lkotlinx/coroutines/selects/SelectClause0;", "", "expect", "Lkotlinx/coroutines/NodeList;", "list", "Lkotlinx/coroutines/JobNode;", "node", "", "addLastAtomic", "(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z", "", "rootCause", "", "exceptions", "", "addSuppressedExceptions", "(Ljava/lang/Throwable;Ljava/util/List;)V", "state", "afterCompletion", "(Ljava/lang/Object;)V", "child", "Lkotlinx/coroutines/ChildHandle;", "attachChild", "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;", "awaitInternal$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitInternal", "awaitSuspend", "cause", "cancel", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Ljava/util/concurrent/CancellationException;)V", "cancelCoroutine", "cancelImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;)Z", "cancelImpl", "cancelInternal", "(Ljava/lang/Throwable;)V", "cancelMakeCompleting", "(Ljava/lang/Object;)Ljava/lang/Object;", "cancelParent", "", "cancellationExceptionMessage", "()Ljava/lang/String;", "childCancelled", "Lkotlinx/coroutines/Incomplete;", "update", "completeStateFinalization", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V", "Lkotlinx/coroutines/JobSupport$Finishing;", "Lkotlinx/coroutines/ChildHandleNode;", "lastChild", "proposedUpdate", "continueCompleting", "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V", "createCauseException", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "message", "Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException$kotlinx_coroutines_core", "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException", "finalizeFinishingState", "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;)Ljava/lang/Object;", "firstChild", "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;", "getCancellationException", "()Ljava/util/concurrent/CancellationException;", "getChildJobCancellationCause", "getCompletedInternal$kotlinx_coroutines_core", "()Ljava/lang/Object;", "getCompletedInternal", "getCompletionExceptionOrNull", "()Ljava/lang/Throwable;", "getFinalRootCause", "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;", "getOrPromoteCancellingList", "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;", "exception", "handleJobException", "handleOnCompletionException$kotlinx_coroutines_core", "handleOnCompletionException", "parent", "initParentJobInternal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/Job;)V", "initParentJobInternal", "onCancelling", "invokeImmediately", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletion", "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "join", "joinInternal", "()Z", "joinSuspend", "block", "", "loopOnState", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;", "makeCancelling", "makeCompleting$kotlinx_coroutines_core", "makeCompleting", "makeCompletingOnce$kotlinx_coroutines_core", "makeCompletingOnce", "makeNode", "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;", "nameString$kotlinx_coroutines_core", "nameString", "notifyCancelling", "(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V", "T", "notifyHandlers", "onCompletionInternal", "onStartInternal$kotlinx_coroutines_core", "()V", "onStartInternal", "parentJob", "parentCancelled", "(Lkotlinx/coroutines/ParentJob;)V", "Lkotlinx/coroutines/Empty;", "promoteEmptyToNodeList", "(Lkotlinx/coroutines/Empty;)V", "promoteSingleToNodeList", "(Lkotlinx/coroutines/JobNode;)V", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/coroutines/Continuation;", "registerSelectClause0", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V", "Lkotlin/Function2;", "registerSelectClause1Internal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "registerSelectClause1Internal", "removeNode$kotlinx_coroutines_core", "removeNode", "selectAwaitCompletion$kotlinx_coroutines_core", "selectAwaitCompletion", "start", "", "startInternal", "(Ljava/lang/Object;)I", "stateString", "(Ljava/lang/Object;)Ljava/lang/String;", "toDebugString", "toString", "tryFinalizeSimpleState", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Z", "tryMakeCancelling", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z", "tryMakeCompleting", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "tryMakeCompletingSlowPath", "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Ljava/lang/Object;", "tryWaitForChild", "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "nextChild", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;", "notifyCompletion", "toCancellationException", "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", "children", "getCompletionCause", "completionCause", "getCompletionCauseHandled", "completionCauseHandled", "getHandlesException$kotlinx_coroutines_core", "handlesException", "isActive", "isCancelled", "isCompleted", "isCompletedExceptionally", "isScopedCoroutine", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "key", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "onJoin", FirebaseAnalytics.Param.VALUE, "getParentHandle$kotlinx_coroutines_core", "()Lkotlinx/coroutines/ChildHandle;", "setParentHandle$kotlinx_coroutines_core", "(Lkotlinx/coroutines/ChildHandle;)V", "parentHandle", "getState$kotlinx_coroutines_core", "getExceptionOrNull", "exceptionOrNull", "isCancelling", "(Lkotlinx/coroutines/Incomplete;)Z", "active", "<init>", "(Z)V", "AwaitContinuation", "ChildCompletion", "Finishing", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/JobSupport.class */
public class JobSupport implements Job, ChildJob, ParentJob, SelectClause0 {

    /* renamed from: f */
    private static final AtomicReferenceFieldUpdater f21204f = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state");
    private volatile Object _parentHandle;
    private volatile Object _state;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u001d\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000e\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/JobSupport$AwaitContinuation;", "T", "Lkotlinx/coroutines/CancellableContinuationImpl;", "Lkotlinx/coroutines/Job;", "parent", "", "getContinuationCancellationCause", "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;", "", "nameString", "()Ljava/lang/String;", "Lkotlinx/coroutines/JobSupport;", "job", "Lkotlinx/coroutines/JobSupport;", "Lkotlin/coroutines/Continuation;", "delegate", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/JobSupport$AwaitContinuation.class */
    public static final class AwaitContinuation<T> extends CancellableContinuationImpl<T> {

        /* renamed from: m */
        private final JobSupport f21205m;

        public AwaitContinuation(@NotNull Continuation<? super T> continuation, @NotNull JobSupport jobSupport) {
            super(continuation, 1);
            this.f21205m = jobSupport;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        @NotNull
        /* renamed from: A */
        protected String mo1147A() {
            return "AwaitContinuation";
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        @NotNull
        /* renamed from: o */
        public Throwable mo1146o(@NotNull Job job) {
            Throwable d;
            Object i0 = this.f21205m.m1164i0();
            return (!(i0 instanceof Finishing) || (d = ((Finishing) i0).m1142d()) == null) ? i0 instanceof CompletedExceptionally ? ((CompletedExceptionally) i0).f21127a : job.mo1119m() : d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B)\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/JobSupport$ChildCompletion;", "Lkotlinx/coroutines/JobNode;", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/ChildHandleNode;", "child", "Lkotlinx/coroutines/ChildHandleNode;", "Lkotlinx/coroutines/JobSupport;", "parent", "Lkotlinx/coroutines/JobSupport;", "", "proposedUpdate", "Ljava/lang/Object;", "Lkotlinx/coroutines/JobSupport$Finishing;", "state", "Lkotlinx/coroutines/JobSupport$Finishing;", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/JobSupport$ChildCompletion.class */
    public static final class ChildCompletion extends JobNode<Job> {

        /* renamed from: j */
        private final JobSupport f21206j;

        /* renamed from: k */
        private final Finishing f21207k;

        /* renamed from: l */
        private final ChildHandleNode f21208l;

        /* renamed from: m */
        private final Object f21209m;

        public ChildCompletion(@NotNull JobSupport jobSupport, @NotNull Finishing finishing, @NotNull ChildHandleNode childHandleNode, @Nullable Object obj) {
            super(childHandleNode.f21116j);
            this.f21206j = jobSupport;
            this.f21207k = finishing;
            this.f21208l = childHandleNode;
            this.f21209m = obj;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        /* renamed from: X */
        public void mo319X(@Nullable Throwable th) {
            this.f21206j.m1175X(this.f21207k, this.f21208l, this.f21209m);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            mo319X(th);
            return Unit.f20447a;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "ChildCompletion[" + this.f21208l + ", " + this.f21209m + ']';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0002\u0018��2\u00020\u0001B!\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010\u001d\u001a\u00020\u0019\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b*\u0010+J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0007j\b\u0012\u0004\u0012\u00020\u0002`\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R(\u0010\u0018\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00128B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00198V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u001c\u001a\u00020\u00198F@\u0006¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001bR$\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u00198F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001b\"\u0004\b\u001e\u0010\u001fR\u0013\u0010 \u001a\u00020\u00198F@\u0006¢\u0006\u0006\u001a\u0004\b \u0010\u001bR\u001c\u0010\"\u001a\u00020!8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R(\u0010)\u001a\u0004\u0018\u00010\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010\u0006¨\u0006,"}, d2 = {"Lkotlinx/coroutines/JobSupport$Finishing;", "Lkotlinx/coroutines/Incomplete;", "", "exception", "", "addExceptionLocked", "(Ljava/lang/Throwable;)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "allocateList", "()Ljava/util/ArrayList;", "proposedException", "", "sealLocked", "(Ljava/lang/Throwable;)Ljava/util/List;", "", "toString", "()Ljava/lang/String;", "", FirebaseAnalytics.Param.VALUE, "getExceptionsHolder", "()Ljava/lang/Object;", "setExceptionsHolder", "(Ljava/lang/Object;)V", "exceptionsHolder", "", "isActive", "()Z", "isCancelling", "isCompleting", "setCompleting", "(Z)V", "isSealed", "Lkotlinx/coroutines/NodeList;", "list", "Lkotlinx/coroutines/NodeList;", "getList", "()Lkotlinx/coroutines/NodeList;", "getRootCause", "()Ljava/lang/Throwable;", "setRootCause", "rootCause", "<init>", "(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/JobSupport$Finishing.class */
    public static final class Finishing implements Incomplete {
        private volatile Object _exceptionsHolder = null;
        private volatile int _isCompleting;
        private volatile Object _rootCause;
        @NotNull

        /* renamed from: f */
        private final NodeList f21210f;

        public Finishing(@NotNull NodeList nodeList, boolean z, @Nullable Throwable th) {
            this.f21210f = nodeList;
            this._isCompleting = z ? 1 : 0;
            this._rootCause = th;
        }

        /* renamed from: b */
        private final ArrayList<Throwable> m1144b() {
            return new ArrayList<>(4);
        }

        /* renamed from: c */
        private final Object m1143c() {
            return this._exceptionsHolder;
        }

        /* renamed from: k */
        private final void m1136k(Object obj) {
            this._exceptionsHolder = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public final void m1145a(@NotNull Throwable th) {
            Throwable d = m1142d();
            if (d == null) {
                m1135l(th);
            } else if (th != d) {
                Object c = m1143c();
                if (c == null) {
                    m1136k(th);
                } else if (c instanceof Throwable) {
                    if (th != c) {
                        ArrayList<Throwable> b = m1144b();
                        b.add(c);
                        b.add(th);
                        Unit unit = Unit.f20447a;
                        m1136k(b);
                    }
                } else if (c instanceof ArrayList) {
                    ((ArrayList) c).add(th);
                } else {
                    throw new IllegalStateException(("State is " + c).toString());
                }
            }
        }

        @Nullable
        /* renamed from: d */
        public final Throwable m1142d() {
            return (Throwable) this._rootCause;
        }

        /* renamed from: e */
        public final boolean m1141e() {
            return m1142d() != null;
        }

        @Override // kotlinx.coroutines.Incomplete
        @NotNull
        /* renamed from: f */
        public NodeList mo1124f() {
            return this.f21210f;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [boolean, int] */
        /* renamed from: g */
        public final boolean m1140g() {
            return this._isCompleting;
        }

        /* renamed from: h */
        public final boolean m1139h() {
            Symbol symbol;
            Object c = m1143c();
            symbol = JobSupportKt.f21226e;
            return c == symbol;
        }

        @NotNull
        /* renamed from: i */
        public final List<Throwable> m1138i(@Nullable Throwable th) {
            ArrayList<Throwable> arrayList;
            Symbol symbol;
            Object c = m1143c();
            if (c == null) {
                arrayList = m1144b();
            } else if (c instanceof Throwable) {
                arrayList = m1144b();
                arrayList.add(c);
            } else if (c instanceof ArrayList) {
                arrayList = (ArrayList) c;
            } else {
                throw new IllegalStateException(("State is " + c).toString());
            }
            Throwable d = m1142d();
            if (d != null) {
                arrayList.add(0, d);
            }
            if (th != null && (!Intrinsics.m1834a(th, d))) {
                arrayList.add(th);
            }
            symbol = JobSupportKt.f21226e;
            m1136k(symbol);
            return arrayList;
        }

        @Override // kotlinx.coroutines.Incomplete
        public boolean isActive() {
            return m1142d() == null;
        }

        /* renamed from: j */
        public final void m1137j(boolean z) {
            this._isCompleting = z ? 1 : 0;
        }

        /* renamed from: l */
        public final void m1135l(@Nullable Throwable th) {
            this._rootCause = th;
        }

        @NotNull
        public String toString() {
            return "Finishing[cancelling=" + m1141e() + ", completing=" + m1140g() + ", rootCause=" + m1142d() + ", exceptions=" + m1143c() + ", list=" + mo1124f() + ']';
        }
    }

    public JobSupport(boolean z) {
        this._state = z ? JobSupportKt.f21228g : JobSupportKt.f21227f;
        this._parentHandle = null;
    }

    /* renamed from: A0 */
    private final void m1202A0(JobNode<?> jobNode) {
        jobNode.m531I(new NodeList());
        f21204f.compareAndSet(this, jobNode, jobNode.m526N());
    }

    /* renamed from: F0 */
    private final int m1195F0(Object obj) {
        Empty empty;
        if (obj instanceof Empty) {
            if (((Empty) obj).isActive()) {
                return 0;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f21204f;
            empty = JobSupportKt.f21228g;
            if (!atomicReferenceFieldUpdater.compareAndSet(this, obj, empty)) {
                return -1;
            }
            mo1150y0();
            return 1;
        } else if (!(obj instanceof InactiveNodeList)) {
            return 0;
        } else {
            if (!f21204f.compareAndSet(this, obj, ((InactiveNodeList) obj).mo1124f())) {
                return -1;
            }
            mo1150y0();
            return 1;
        }
    }

    /* renamed from: G */
    private final boolean m1194G(final Object obj, NodeList nodeList, final JobNode<?> jobNode) {
        boolean z;
        LockFreeLinkedListNode.CondAddOp jobSupport$addLastAtomic$$inlined$addLastIf$1 = new LockFreeLinkedListNode.CondAddOp(jobNode, jobNode, this, obj) { // from class: kotlinx.coroutines.JobSupport$addLastAtomic$$inlined$addLastIf$1

            /* renamed from: d */
            final /* synthetic */ JobSupport f21211d;

            /* renamed from: e */
            final /* synthetic */ Object f21212e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(jobNode);
                this.f21211d = this;
                this.f21212e = obj;
            }

            @Nullable
            /* renamed from: j */
            public Object mo280h(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
                return this.f21211d.m1164i0() == this.f21212e ? null : LockFreeLinkedListKt.m539a();
            }
        };
        while (true) {
            int W = nodeList.m525O().m517W(jobNode, nodeList, jobSupport$addLastAtomic$$inlined$addLastIf$1);
            z = true;
            if (W != 1) {
                if (W == 2) {
                    z = false;
                    break;
                }
            } else {
                break;
            }
        }
        return z;
    }

    /* renamed from: G0 */
    private final String m1193G0(Object obj) {
        String str;
        if (obj instanceof Finishing) {
            Finishing finishing = (Finishing) obj;
            if (finishing.m1141e()) {
                str = "Cancelling";
            } else {
                str = "Active";
                if (finishing.m1140g()) {
                    str = "Completing";
                }
            }
        } else {
            str = obj instanceof Incomplete ? ((Incomplete) obj).isActive() ? "Active" : "New" : obj instanceof CompletedExceptionally ? "Cancelled" : "Completed";
        }
        return str;
    }

    /* renamed from: H */
    private final void m1192H(Throwable th, List<? extends Throwable> list) {
        if (list.size() > 1) {
            Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
            Throwable m = !DebugKt.m1305d() ? th : StackTraceRecoveryKt.m444m(th);
            for (Throwable th2 : list) {
                if (DebugKt.m1305d()) {
                    th2 = StackTraceRecoveryKt.m444m(th2);
                }
                if (th2 != th && th2 != m && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                    ExceptionsKt__ExceptionsKt.m2491a(th, th2);
                }
            }
        }
    }

    /* renamed from: I0 */
    public static /* synthetic */ CancellationException m1190I0(JobSupport jobSupport, Throwable th, String str, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                str = null;
            }
            return jobSupport.m1191H0(th, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
    }

    /* renamed from: K0 */
    private final boolean m1188K0(Incomplete incomplete, Object obj) {
        if (DebugKt.m1308a()) {
            if (!((incomplete instanceof Empty) || (incomplete instanceof JobNode))) {
                throw new AssertionError();
            }
        }
        if (DebugKt.m1308a() && !(!(obj instanceof CompletedExceptionally))) {
            throw new AssertionError();
        } else if (!f21204f.compareAndSet(this, incomplete, JobSupportKt.m1128g(obj))) {
            return false;
        } else {
            mo1034w0(null);
            mo1152x0(obj);
            m1176W(incomplete, obj);
            return true;
        }
    }

    /* renamed from: L0 */
    private final boolean m1187L0(Incomplete incomplete, Throwable th) {
        if (DebugKt.m1308a() && !(!(incomplete instanceof Finishing))) {
            throw new AssertionError();
        } else if (!DebugKt.m1308a() || incomplete.isActive()) {
            NodeList g0 = m1166g0(incomplete);
            if (g0 == null) {
                return false;
            }
            if (!f21204f.compareAndSet(this, incomplete, new Finishing(g0, false, th))) {
                return false;
            }
            m1154u0(g0, th);
            return true;
        } else {
            throw new AssertionError();
        }
    }

    /* renamed from: M0 */
    private final Object m1186M0(Object obj, Object obj2) {
        Symbol symbol;
        Symbol symbol2;
        if (!(obj instanceof Incomplete)) {
            symbol2 = JobSupportKt.f21222a;
            return symbol2;
        } else if ((!(obj instanceof Empty) && !(obj instanceof JobNode)) || (obj instanceof ChildHandleNode) || (obj2 instanceof CompletedExceptionally)) {
            return m1184N0((Incomplete) obj, obj2);
        } else {
            if (m1188K0((Incomplete) obj, obj2)) {
                return obj2;
            }
            symbol = JobSupportKt.f21224c;
            return symbol;
        }
    }

    /* renamed from: N0 */
    private final Object m1184N0(Incomplete incomplete, Object obj) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        NodeList g0 = m1166g0(incomplete);
        if (g0 != null) {
            Throwable th = null;
            Finishing finishing = (Finishing) (!(incomplete instanceof Finishing) ? null : incomplete);
            if (finishing == null) {
                finishing = new Finishing(g0, false, null);
            }
            synchronized (finishing) {
                if (finishing.m1140g()) {
                    symbol3 = JobSupportKt.f21222a;
                    return symbol3;
                }
                finishing.m1137j(true);
                if (finishing == incomplete || f21204f.compareAndSet(this, incomplete, finishing)) {
                    if (DebugKt.m1308a() && !(!finishing.m1139h())) {
                        throw new AssertionError();
                    }
                    boolean e = finishing.m1141e();
                    CompletedExceptionally completedExceptionally = (CompletedExceptionally) (!(obj instanceof CompletedExceptionally) ? null : obj);
                    if (completedExceptionally != null) {
                        finishing.m1145a(completedExceptionally.f21127a);
                    }
                    th = finishing.m1142d();
                    if (true ^ e) {
                    }
                    Unit unit = Unit.f20447a;
                    if (th != null) {
                        m1154u0(g0, th);
                    }
                    ChildHandleNode a0 = m1172a0(incomplete);
                    return (a0 == null || !m1182O0(finishing, a0, obj)) ? m1173Z(finishing, obj) : JobSupportKt.f21223b;
                }
                symbol2 = JobSupportKt.f21224c;
                return symbol2;
            }
        }
        symbol = JobSupportKt.f21224c;
        return symbol;
    }

    /* renamed from: O0 */
    private final boolean m1182O0(Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
        while (Job.DefaultImpls.m1223d(childHandleNode.f21116j, false, false, new ChildCompletion(this, finishing, childHandleNode, obj), 1, null) == NonDisposableHandle.f21231f) {
            childHandleNode = m1155t0(childHandleNode);
            if (childHandleNode == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: S */
    private final Object m1179S(Object obj) {
        Symbol symbol;
        Object M0;
        Symbol symbol2;
        do {
            Object i0 = m1164i0();
            if (!(i0 instanceof Incomplete) || ((i0 instanceof Finishing) && ((Finishing) i0).m1140g())) {
                symbol = JobSupportKt.f21222a;
                return symbol;
            }
            M0 = m1186M0(i0, new CompletedExceptionally(m1174Y(obj), false, 2, null));
            symbol2 = JobSupportKt.f21224c;
        } while (M0 == symbol2);
        return M0;
    }

    /* renamed from: T */
    private final boolean m1178T(Throwable th) {
        if (mo469m0()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        ChildHandle h0 = m1165h0();
        if (h0 == null || h0 == NonDisposableHandle.f21231f) {
            return z;
        }
        boolean z2 = true;
        if (!h0.mo1118g(th)) {
            z2 = z;
        }
        return z2;
    }

    /* renamed from: W */
    private final void m1176W(Incomplete incomplete, Object obj) {
        ChildHandle h0 = m1165h0();
        if (h0 != null) {
            h0.dispose();
            m1197E0(NonDisposableHandle.f21231f);
        }
        boolean z = obj instanceof CompletedExceptionally;
        Throwable th = null;
        if (!z) {
            obj = null;
        }
        CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
        if (completedExceptionally != null) {
            th = completedExceptionally.f21127a;
        }
        if (incomplete instanceof JobNode) {
            try {
                ((JobNode) incomplete).mo319X(th);
            } catch (Throwable th2) {
                mo1163k0(new CompletionHandlerException("Exception in completion handler " + incomplete + " for " + this, th2));
            }
        } else {
            NodeList f = incomplete.mo1124f();
            if (f != null) {
                m1153v0(f, th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X */
    public final void m1175X(Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
        if (DebugKt.m1308a()) {
            if (!(m1164i0() == finishing)) {
                throw new AssertionError();
            }
        }
        ChildHandleNode t0 = m1155t0(childHandleNode);
        if (t0 == null || !m1182O0(finishing, t0, obj)) {
            mo472M(m1173Z(finishing, obj));
        }
    }

    /* renamed from: Y */
    private final Throwable m1174Y(Object obj) {
        Throwable th;
        if (obj != null ? obj instanceof Throwable : true) {
            th = obj != null ? (Throwable) obj : new JobCancellationException(mo1177U(), null, this);
        } else if (obj != null) {
            th = ((ParentJob) obj).mo1117J();
        } else {
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        }
        return th;
    }

    /* renamed from: Z */
    private final Object m1173Z(Finishing finishing, Object obj) {
        boolean e;
        Throwable d0;
        if (DebugKt.m1308a()) {
            if (!(m1164i0() == finishing)) {
                throw new AssertionError();
            }
        }
        if (DebugKt.m1308a() && !(!finishing.m1139h())) {
            throw new AssertionError();
        } else if (!DebugKt.m1308a() || finishing.m1140g()) {
            CompletedExceptionally completedExceptionally = (CompletedExceptionally) (!(obj instanceof CompletedExceptionally) ? null : obj);
            Throwable th = completedExceptionally != null ? completedExceptionally.f21127a : null;
            synchronized (finishing) {
                e = finishing.m1141e();
                List<Throwable> i = finishing.m1138i(th);
                d0 = m1169d0(finishing, i);
                if (d0 != null) {
                    m1192H(d0, i);
                }
            }
            if (!(d0 == null || d0 == th)) {
                obj = new CompletedExceptionally(d0, false, 2, null);
            }
            if (d0 != null) {
                boolean z = true;
                if (!m1178T(d0)) {
                    z = mo1035j0(d0);
                }
                if (z) {
                    if (obj != null) {
                        ((CompletedExceptionally) obj).m1329b();
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                    }
                }
            }
            if (!e) {
                mo1034w0(d0);
            }
            mo1152x0(obj);
            boolean compareAndSet = f21204f.compareAndSet(this, finishing, JobSupportKt.m1128g(obj));
            if (!DebugKt.m1308a() || compareAndSet) {
                m1176W(finishing, obj);
                return obj;
            }
            throw new AssertionError();
        } else {
            throw new AssertionError();
        }
    }

    /* renamed from: a0 */
    private final ChildHandleNode m1172a0(Incomplete incomplete) {
        boolean z = incomplete instanceof ChildHandleNode;
        ChildHandleNode childHandleNode = null;
        ChildHandleNode childHandleNode2 = (ChildHandleNode) (!z ? null : incomplete);
        if (childHandleNode2 != null) {
            childHandleNode = childHandleNode2;
        } else {
            NodeList f = incomplete.mo1124f();
            if (f != null) {
                childHandleNode = m1155t0(f);
            }
        }
        return childHandleNode;
    }

    /* renamed from: c0 */
    private final Throwable m1170c0(Object obj) {
        boolean z = obj instanceof CompletedExceptionally;
        Throwable th = null;
        if (!z) {
            obj = null;
        }
        CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
        if (completedExceptionally != null) {
            th = completedExceptionally.f21127a;
        }
        return th;
    }

    /* renamed from: d0 */
    private final Throwable m1169d0(Finishing finishing, List<? extends Throwable> list) {
        Object obj;
        Object obj2 = null;
        if (!list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (!(((Throwable) obj) instanceof CancellationException)) {
                    break;
                }
            }
            Throwable th = (Throwable) obj;
            if (th != null) {
                return th;
            }
            Throwable th2 = (Throwable) list.get(0);
            if (th2 instanceof TimeoutCancellationException) {
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    obj2 = it2.next();
                    Throwable th3 = (Throwable) obj2;
                    if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                        break;
                    }
                }
                Throwable th4 = (Throwable) obj2;
                if (th4 != null) {
                    return th4;
                }
            }
            return th2;
        } else if (finishing.m1141e()) {
            return new JobCancellationException(mo1177U(), null, this);
        } else {
            return null;
        }
    }

    /* renamed from: g0 */
    private final NodeList m1166g0(Incomplete incomplete) {
        NodeList nodeList;
        NodeList f = incomplete.mo1124f();
        if (f != null) {
            nodeList = f;
        } else if (incomplete instanceof Empty) {
            nodeList = new NodeList();
        } else if (incomplete instanceof JobNode) {
            m1202A0((JobNode) incomplete);
            nodeList = null;
        } else {
            throw new IllegalStateException(("State should have list: " + incomplete).toString());
        }
        return nodeList;
    }

    /* renamed from: n0 */
    private final boolean m1161n0() {
        Object i0;
        do {
            i0 = m1164i0();
            if (!(i0 instanceof Incomplete)) {
                return false;
            }
        } while (m1195F0(i0) < 0);
        return true;
    }

    /* renamed from: p0 */
    private final Object m1158p0(Object obj) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Throwable th = null;
        Throwable th2 = null;
        while (true) {
            Object i0 = m1164i0();
            if (i0 instanceof Finishing) {
                synchronized (i0) {
                    if (((Finishing) i0).m1139h()) {
                        symbol2 = JobSupportKt.f21225d;
                        return symbol2;
                    }
                    boolean e = ((Finishing) i0).m1141e();
                    if (obj != null || !e) {
                        if (th2 == null) {
                            th2 = m1174Y(obj);
                        }
                        ((Finishing) i0).m1145a(th2);
                    }
                    th = ((Finishing) i0).m1142d();
                    if (!e) {
                    }
                    if (th != null) {
                        m1154u0(((Finishing) i0).mo1124f(), th);
                    }
                    symbol = JobSupportKt.f21222a;
                    return symbol;
                }
            } else if (i0 instanceof Incomplete) {
                Throwable Y = th2 != null ? th2 : m1174Y(obj);
                Incomplete incomplete = (Incomplete) i0;
                if (incomplete.isActive()) {
                    th2 = Y;
                    if (m1187L0(incomplete, Y)) {
                        symbol4 = JobSupportKt.f21222a;
                        return symbol4;
                    }
                } else {
                    Object M0 = m1186M0(i0, new CompletedExceptionally(Y, false, 2, null));
                    symbol5 = JobSupportKt.f21222a;
                    if (M0 != symbol5) {
                        symbol6 = JobSupportKt.f21224c;
                        if (M0 != symbol6) {
                            return M0;
                        }
                        th2 = Y;
                    } else {
                        throw new IllegalStateException(("Cannot happen in " + i0).toString());
                    }
                }
            } else {
                symbol3 = JobSupportKt.f21225d;
                return symbol3;
            }
        }
    }

    /* renamed from: r0 */
    private final JobNode<?> m1156r0(Function1<? super Throwable, Unit> function1, boolean z) {
        JobNode<?> jobNode;
        boolean z2 = true;
        boolean z3 = true;
        Function1<? super Throwable, Unit> function12 = null;
        JobCancellingNode jobCancellingNode = null;
        if (z) {
            if (function1 instanceof JobCancellingNode) {
                jobCancellingNode = function1;
            }
            JobCancellingNode jobCancellingNode2 = jobCancellingNode;
            if (jobCancellingNode2 != null) {
                if (DebugKt.m1308a()) {
                    if (jobCancellingNode2.f21203i != this) {
                        z3 = false;
                    }
                    if (!z3) {
                        throw new AssertionError();
                    }
                }
                if (jobCancellingNode2 != null) {
                    jobNode = jobCancellingNode2;
                }
            }
            jobNode = new InvokeOnCancelling(this, function1);
        } else {
            if (function1 instanceof JobNode) {
                function12 = function1;
            }
            JobNode<?> jobNode2 = (JobNode) function12;
            if (jobNode2 != null) {
                if (DebugKt.m1308a()) {
                    if (jobNode2.f21203i != this || (jobNode2 instanceof JobCancellingNode)) {
                        z2 = false;
                    }
                    if (!z2) {
                        throw new AssertionError();
                    }
                }
                if (jobNode2 != null) {
                    jobNode = jobNode2;
                }
            }
            jobNode = new InvokeOnCompletion(this, function1);
        }
        return jobNode;
    }

    /* renamed from: t0 */
    private final ChildHandleNode m1155t0(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        while (true) {
            lockFreeLinkedListNode2 = lockFreeLinkedListNode;
            if (lockFreeLinkedListNode.mo522R()) {
                lockFreeLinkedListNode = lockFreeLinkedListNode.m525O();
            }
        }
        while (true) {
            LockFreeLinkedListNode N = lockFreeLinkedListNode2.m526N();
            if (N.mo522R()) {
                lockFreeLinkedListNode2 = N;
            } else if (N instanceof ChildHandleNode) {
                return (ChildHandleNode) N;
            } else {
                lockFreeLinkedListNode2 = N;
                if (N instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    /* renamed from: u0 */
    private final void m1154u0(NodeList nodeList, Throwable th) {
        mo1034w0(th);
        Object M = nodeList.m527M();
        if (M != null) {
            CompletionHandlerException completionHandlerException = null;
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) M; !Intrinsics.m1834a(lockFreeLinkedListNode, nodeList); lockFreeLinkedListNode = lockFreeLinkedListNode.m526N()) {
                completionHandlerException = completionHandlerException;
                if (lockFreeLinkedListNode instanceof JobCancellingNode) {
                    JobNode jobNode = (JobNode) lockFreeLinkedListNode;
                    try {
                        jobNode.mo319X(th);
                        completionHandlerException = completionHandlerException;
                    } catch (Throwable th2) {
                        if (completionHandlerException != null) {
                            ExceptionsKt__ExceptionsKt.m2491a(completionHandlerException, th2);
                            if (completionHandlerException != null) {
                                completionHandlerException = completionHandlerException;
                            }
                        }
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th2);
                        Unit unit = Unit.f20447a;
                    }
                }
            }
            if (completionHandlerException != null) {
                mo1163k0(completionHandlerException);
            }
            m1178T(th);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    /* renamed from: v0 */
    private final void m1153v0(NodeList nodeList, Throwable th) {
        Object M = nodeList.m527M();
        if (M != null) {
            CompletionHandlerException completionHandlerException = null;
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) M; !Intrinsics.m1834a(lockFreeLinkedListNode, nodeList); lockFreeLinkedListNode = lockFreeLinkedListNode.m526N()) {
                completionHandlerException = completionHandlerException;
                if (lockFreeLinkedListNode instanceof JobNode) {
                    JobNode jobNode = (JobNode) lockFreeLinkedListNode;
                    try {
                        jobNode.mo319X(th);
                        completionHandlerException = completionHandlerException;
                    } catch (Throwable th2) {
                        if (completionHandlerException != null) {
                            ExceptionsKt__ExceptionsKt.m2491a(completionHandlerException, th2);
                            if (completionHandlerException != null) {
                                completionHandlerException = completionHandlerException;
                            }
                        }
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th2);
                        Unit unit = Unit.f20447a;
                    }
                }
            }
            if (completionHandlerException != null) {
                mo1163k0(completionHandlerException);
                return;
            }
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [kotlinx.coroutines.InactiveNodeList] */
    /* renamed from: z0 */
    private final void m1149z0(Empty empty) {
        NodeList nodeList = new NodeList();
        NodeList nodeList2 = nodeList;
        if (!empty.isActive()) {
            nodeList2 = new InactiveNodeList(nodeList);
        }
        f21204f.compareAndSet(this, empty, nodeList2);
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    /* renamed from: B */
    public final DisposableHandle mo1123B(@NotNull Function1<? super Throwable, Unit> function1) {
        return mo1120l(false, true, function1);
    }

    /* renamed from: B0 */
    public final <T, R> void m1201B0(@NotNull SelectInstance<? super R> selectInstance, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        Object i0;
        do {
            i0 = m1164i0();
            if (!selectInstance.mo313j()) {
                if (!(i0 instanceof Incomplete)) {
                    if (!selectInstance.mo314e()) {
                        return;
                    }
                    if (i0 instanceof CompletedExceptionally) {
                        selectInstance.mo311u(((CompletedExceptionally) i0).f21127a);
                        return;
                    } else {
                        UndispatchedKt.m395d(function2, JobSupportKt.m1127h(i0), selectInstance.mo312k());
                        return;
                    }
                }
            } else {
                return;
            }
        } while (m1195F0(i0) != 0);
        selectInstance.mo316A(mo1123B(new SelectAwaitOnCompletion(this, selectInstance, function2)));
    }

    /* renamed from: C0 */
    public final void m1200C0(@NotNull JobNode<?> jobNode) {
        Object i0;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Empty empty;
        do {
            i0 = m1164i0();
            if (i0 instanceof JobNode) {
                if (i0 == jobNode) {
                    atomicReferenceFieldUpdater = f21204f;
                    empty = JobSupportKt.f21228g;
                } else {
                    return;
                }
            } else if ((i0 instanceof Incomplete) && ((Incomplete) i0).mo1124f() != null) {
                jobNode.mo521S();
                return;
            } else {
                return;
            }
        } while (!atomicReferenceFieldUpdater.compareAndSet(this, i0, empty));
    }

    /* renamed from: D0 */
    public final <T, R> void m1199D0(@NotNull SelectInstance<? super R> selectInstance, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        Object i0 = m1164i0();
        if (i0 instanceof CompletedExceptionally) {
            selectInstance.mo311u(((CompletedExceptionally) i0).f21127a);
        } else {
            CancellableKt.m399c(function2, JobSupportKt.m1127h(i0), selectInstance.mo312k());
        }
    }

    /* renamed from: E0 */
    public final void m1197E0(@Nullable ChildHandle childHandle) {
        this._parentHandle = childHandle;
    }

    @NotNull
    /* renamed from: H0 */
    protected final CancellationException m1191H0(@NotNull Throwable th, @Nullable String str) {
        CancellationException cancellationException;
        CancellationException cancellationException2 = (CancellationException) (!(th instanceof CancellationException) ? null : th);
        if (cancellationException2 != null) {
            cancellationException = cancellationException2;
        } else {
            if (str == null) {
                str = mo1177U();
            }
            cancellationException = new JobCancellationException(str, th, this);
        }
        return cancellationException;
    }

    @Override // kotlinx.coroutines.ParentJob
    @NotNull
    /* renamed from: J */
    public CancellationException mo1117J() {
        Throwable th;
        CancellationException cancellationException;
        Object i0 = m1164i0();
        CancellationException cancellationException2 = null;
        if (i0 instanceof Finishing) {
            th = ((Finishing) i0).m1142d();
        } else if (i0 instanceof CompletedExceptionally) {
            th = ((CompletedExceptionally) i0).f21127a;
        } else if (!(i0 instanceof Incomplete)) {
            th = null;
        } else {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + i0).toString());
        }
        if (th instanceof CancellationException) {
            cancellationException2 = th;
        }
        CancellationException cancellationException3 = cancellationException2;
        if (cancellationException3 != null) {
            cancellationException = cancellationException3;
        } else {
            cancellationException = new JobCancellationException("Parent job is " + m1193G0(i0), th, this);
        }
        return cancellationException;
    }

    @InternalCoroutinesApi
    @NotNull
    /* renamed from: J0 */
    public final String m1189J0() {
        return mo1090s0() + '{' + m1193G0(m1164i0()) + '}';
    }

    @Override // kotlinx.coroutines.Job
    @NotNull
    /* renamed from: L */
    public final ChildHandle mo1122L(@NotNull ChildJob childJob) {
        DisposableHandle d = Job.DefaultImpls.m1223d(this, true, false, new ChildHandleNode(this, childJob), 2, null);
        if (d != null) {
            return (ChildHandle) d;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: M */
    public void mo472M(@Nullable Object obj) {
    }

    @Nullable
    /* renamed from: N */
    public final Object m1185N(@NotNull Continuation<Object> continuation) {
        Object i0;
        do {
            i0 = m1164i0();
            if (!(i0 instanceof Incomplete)) {
                if (!(i0 instanceof CompletedExceptionally)) {
                    return JobSupportKt.m1127h(i0);
                }
                Throwable th = ((CompletedExceptionally) i0).f21127a;
                if (!DebugKt.m1305d()) {
                    throw th;
                } else if (!(continuation instanceof CoroutineStackFrame)) {
                    throw th;
                } else {
                    throw StackTraceRecoveryKt.m456a(th, (CoroutineStackFrame) continuation);
                }
            }
        } while (m1195F0(i0) < 0);
        return m1183O(continuation);
    }

    @Nullable
    /* renamed from: O */
    final /* synthetic */ Object m1183O(@NotNull Continuation<Object> continuation) {
        Continuation c;
        Object d;
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        AwaitContinuation awaitContinuation = new AwaitContinuation(c, this);
        CancellableContinuationKt.m1340a(awaitContinuation, mo1123B(new ResumeAwaitOnCompletion(this, awaitContinuation)));
        Object t = awaitContinuation.m1347t();
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (t == d) {
            DebugProbesKt.m1904c(continuation);
        }
        return t;
    }

    /* renamed from: P */
    public final boolean m1181P(@Nullable Throwable th) {
        return m1180Q(th);
    }

    /* renamed from: Q */
    public final boolean m1180Q(@Nullable Object obj) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        symbol = JobSupportKt.f21222a;
        boolean z = true;
        if (mo1167f0()) {
            Object S = m1179S(obj);
            symbol = S;
            if (S == JobSupportKt.f21223b) {
                return true;
            }
        }
        Object obj2 = symbol;
        symbol2 = JobSupportKt.f21222a;
        if (symbol == symbol2) {
            obj2 = m1158p0(obj);
        }
        symbol3 = JobSupportKt.f21222a;
        if (!(obj2 == symbol3 || obj2 == JobSupportKt.f21223b)) {
            symbol4 = JobSupportKt.f21225d;
            if (obj2 == symbol4) {
                z = false;
            } else {
                mo472M(obj2);
            }
        }
        return z;
    }

    /* renamed from: R */
    public void mo1008R(@NotNull Throwable th) {
        m1180Q(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: U */
    public String mo1177U() {
        return "Job was cancelled";
    }

    /* renamed from: V */
    public boolean mo602V(@NotNull Throwable th) {
        boolean z = true;
        if (th instanceof CancellationException) {
            return true;
        }
        if (!m1180Q(th) || !mo1168e0()) {
            z = false;
        }
        return z;
    }

    @Override // kotlinx.coroutines.Job
    /* renamed from: a */
    public void mo1002a(@Nullable CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(mo1177U(), null, this);
        }
        mo1008R(cancellationException);
    }

    @Nullable
    /* renamed from: b0 */
    public final Object m1171b0() {
        Object i0 = m1164i0();
        if (!(!(i0 instanceof Incomplete))) {
            throw new IllegalStateException("This job has not completed yet".toString());
        } else if (!(i0 instanceof CompletedExceptionally)) {
            return JobSupportKt.m1127h(i0);
        } else {
            throw ((CompletedExceptionally) i0).f21127a;
        }
    }

    /* renamed from: e0 */
    public boolean mo1168e0() {
        return true;
    }

    /* renamed from: f0 */
    public boolean mo1167f0() {
        return false;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) Job.DefaultImpls.m1225b(this, r, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        return (E) Job.DefaultImpls.m1224c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public final CoroutineContext.Key<?> getKey() {
        return Job.f21198d;
    }

    @Nullable
    /* renamed from: h0 */
    public final ChildHandle m1165h0() {
        return (ChildHandle) this._parentHandle;
    }

    @Override // kotlinx.coroutines.Job
    @Nullable
    /* renamed from: i */
    public final Object mo1121i(@NotNull Continuation<? super Unit> continuation) {
        Object d;
        if (!m1161n0()) {
            YieldKt.m1086a(continuation.getContext());
            return Unit.f20447a;
        }
        Object o0 = m1159o0(continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return o0 == d ? o0 : Unit.f20447a;
    }

    @Nullable
    /* renamed from: i0 */
    public final Object m1164i0() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).mo282c(this);
        }
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object i0 = m1164i0();
        return (i0 instanceof Incomplete) && ((Incomplete) i0).isActive();
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCancelled() {
        Object i0 = m1164i0();
        return (i0 instanceof CompletedExceptionally) || ((i0 instanceof Finishing) && ((Finishing) i0).m1141e());
    }

    /* renamed from: j0 */
    protected boolean mo1035j0(@NotNull Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.selects.SelectClause0
    /* renamed from: k */
    public final <R> void mo318k(@NotNull SelectInstance<? super R> selectInstance, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        Object i0;
        do {
            i0 = m1164i0();
            if (!selectInstance.mo313j()) {
                if (!(i0 instanceof Incomplete)) {
                    if (selectInstance.mo314e()) {
                        UndispatchedKt.m396c(function1, selectInstance.mo312k());
                        return;
                    }
                    return;
                }
            } else {
                return;
            }
        } while (m1195F0(i0) != 0);
        selectInstance.mo316A(mo1123B(new SelectJoinOnCompletion(this, selectInstance, function1)));
    }

    /* renamed from: k0 */
    public void mo1163k0(@NotNull Throwable th) {
        throw th;
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0111, code lost:
        r16 = r0;
     */
    @Override // kotlinx.coroutines.Job
    @org.jetbrains.annotations.NotNull
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.DisposableHandle mo1120l(boolean r6, boolean r7, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super java.lang.Throwable, kotlin.Unit> r8) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.mo1120l(boolean, boolean, kotlin.jvm.functions.Function1):kotlinx.coroutines.DisposableHandle");
    }

    /* renamed from: l0 */
    public final void m1162l0(@Nullable Job job) {
        if (DebugKt.m1308a()) {
            if (!(m1165h0() == null)) {
                throw new AssertionError();
            }
        }
        if (job == null) {
            m1197E0(NonDisposableHandle.f21231f);
            return;
        }
        job.start();
        ChildHandle L = job.mo1122L(this);
        m1197E0(L);
        if (m1151y()) {
            L.dispose();
            m1197E0(NonDisposableHandle.f21231f);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x003c, code lost:
        if (r7 != null) goto L_0x00ae;
     */
    @Override // kotlinx.coroutines.Job
    @org.jetbrains.annotations.NotNull
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.concurrent.CancellationException mo1119m() {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.mo1119m():java.util.concurrent.CancellationException");
    }

    /* renamed from: m0 */
    protected boolean mo469m0() {
        return false;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return Job.DefaultImpls.m1222e(this, key);
    }

    @Override // kotlinx.coroutines.ChildJob
    /* renamed from: o */
    public final void mo1160o(@NotNull ParentJob parentJob) {
        m1180Q(parentJob);
    }

    @Nullable
    /* renamed from: o0 */
    final /* synthetic */ Object m1159o0(@NotNull Continuation<? super Unit> continuation) {
        Continuation c;
        Object d;
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(c, 1);
        cancellableContinuationImpl.m1345v();
        CancellableContinuationKt.m1340a(cancellableContinuationImpl, mo1123B(new ResumeOnCompletion(this, cancellableContinuationImpl)));
        Object t = cancellableContinuationImpl.m1347t();
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (t == d) {
            DebugProbesKt.m1904c(continuation);
        }
        return t;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return Job.DefaultImpls.m1221f(this, coroutineContext);
    }

    @Nullable
    /* renamed from: q0 */
    public final Object m1157q0(@Nullable Object obj) {
        Object M0;
        Symbol symbol;
        Symbol symbol2;
        do {
            M0 = m1186M0(m1164i0(), obj);
            symbol = JobSupportKt.f21222a;
            if (M0 != symbol) {
                symbol2 = JobSupportKt.f21224c;
            } else {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, m1170c0(obj));
            }
        } while (M0 == symbol2);
        return M0;
    }

    @NotNull
    /* renamed from: s0 */
    public String mo1090s0() {
        return DebugStringsKt.m1304a(this);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int F0;
        do {
            F0 = m1195F0(m1164i0());
            if (F0 == 0) {
                return false;
            }
        } while (F0 != 1);
        return true;
    }

    @NotNull
    public String toString() {
        return m1189J0() + '@' + DebugStringsKt.m1303b(this);
    }

    /* renamed from: w0 */
    protected void mo1034w0(@Nullable Throwable th) {
    }

    /* renamed from: x0 */
    protected void mo1152x0(@Nullable Object obj) {
    }

    /* renamed from: y */
    public final boolean m1151y() {
        return !(m1164i0() instanceof Incomplete);
    }

    /* renamed from: y0 */
    public void mo1150y0() {
    }
}
