package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p642c.AbstractC15124r;
import p626l.p641z.p642c.AbstractC15125s;
import p626l.p641z.p642c.AbstractC15126t;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��z\n��\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\b\u001a\r\u0010��\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\u0002\u001a»\u0001\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b��\u0010\u0006\"\u0004\b\u0001\u0010\u0007\"\u0004\b\u0002\u0010\b\"\u0004\b\u0003\u0010\t\"\u0004\b\u0004\u0010\n\"\u0004\b\u0005\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u00060\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00070\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\b0\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\t0\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\n0\u00042<\b\u0004\u0010\u000f\u001a6\b\u0001\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0013\u001a¡\u0001\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b��\u0010\u0006\"\u0004\b\u0001\u0010\u0007\"\u0004\b\u0002\u0010\b\"\u0004\b\u0003\u0010\t\"\u0004\b\u0004\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u00060\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00070\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\b0\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\t0\u000426\b\u0004\u0010\u000f\u001a0\b\u0001\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\t\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0014H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0015\u001a\u0087\u0001\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b��\u0010\u0006\"\u0004\b\u0001\u0010\u0007\"\u0004\b\u0002\u0010\b\"\u0004\b\u0003\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u00060\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00070\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\b0\u000420\b\u0004\u0010\u000f\u001a*\b\u0001\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0016H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0017\u001aj\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b��\u0010\u0006\"\u0004\b\u0001\u0010\u0007\"\u0004\b\u0002\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u00060\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00070\u00042(\u0010\u000f\u001a$\b\u0001\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0018H\u0007ø\u0001��¢\u0006\u0002\u0010\u0019\u001aI\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b��\u0010\u001b\"\u0004\b\u0001\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u001b0\u00042#\u0010\u001c\u001a\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001b0\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u00040\u001d¢\u0006\u0002\b\u001eH\u0007\u001a>\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b��\u0010\u001b\"\u0004\b\u0001\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0018\u0010 \u001a\u0014\u0012\u0004\u0012\u0002H\u001b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u00040\u001dH\u0007\u001a+\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u0010\"\u001a\u0002H\u001bH\u0007¢\u0006\u0002\u0010#\u001a,\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004H\u0007\u001a&\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u0010%\u001a\u00020&H\u0007\u001a&\u0010'\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u0010%\u001a\u00020&H\u0007\u001aV\u0010(\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b��\u0010\u001b\"\u0004\b\u0001\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u001b0\u00042(\u0010 \u001a$\b\u0001\u0012\u0004\u0012\u0002H\u001b\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u00040\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120)H\u0007ø\u0001��¢\u0006\u0002\u0010*\u001a$\u0010+\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001b0\u00040\u0004H\u0007\u001aS\u0010,\u001a\u00020-\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u000421\u0010.\u001a-\b\u0001\u0012\u0013\u0012\u0011H\u001b¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120)H\u0007ø\u0001��¢\u0006\u0002\u00101\u001a$\u00102\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001b0\u00040\u0004H\u0007\u001a&\u00103\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u00104\u001a\u000205H\u0007\u001a,\u00106\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\f\u00107\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004H\u0007\u001a,\u00108\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\f\u00107\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004H\u0007\u001a+\u00109\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u00107\u001a\u0002H\u001bH\u0007¢\u0006\u0002\u0010#\u001aA\u00109\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u00107\u001a\u0002H\u001b2\u0014\b\u0002\u0010:\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<0\u001dH\u0007¢\u0006\u0002\u0010=\u001a&\u0010>\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u00104\u001a\u000205H\u0007\u001a~\u0010?\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b��\u0010\u001b\"\u0004\b\u0001\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u0010@\u001a\u0002H\u00052H\b\u0001\u0010A\u001aB\b\u0001\u0012\u0013\u0012\u0011H\u0005¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(B\u0012\u0013\u0012\u0011H\u001b¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(\"\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0018H\u0007ø\u0001��¢\u0006\u0002\u0010C\u001a&\u0010D\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u0010E\u001a\u00020FH\u0007\u001a+\u0010G\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u0010\"\u001a\u0002H\u001bH\u0007¢\u0006\u0002\u0010#\u001a,\u0010G\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004H\u0007\u001a\u0018\u0010H\u001a\u00020-\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u0004H\u0007\u001aD\u0010H\u001a\u00020-\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\"\u0010I\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u001b\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120)H\u0007ø\u0001��¢\u0006\u0002\u00101\u001ah\u0010H\u001a\u00020-\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\"\u0010I\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u001b\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120)2\"\u0010J\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020;\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120)H\u0007ø\u0001��¢\u0006\u0002\u0010K\u001a&\u0010L\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0004\"\u0004\b��\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u00042\u0006\u00104\u001a\u000205H\u0007\u001ae\u0010M\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b��\u0010\u001b\"\u0004\b\u0001\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u001b0\u000427\u0010\u000f\u001a3\b\u0001\u0012\u0013\u0012\u0011H\u001b¢\u0006\f\b/\u0012\b\b0\u0012\u0004\b\b(\"\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u00040\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120)H\u0007ø\u0001��¢\u0006\u0002\u0010*\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006N"}, m815d2 = {"noImpl", "", "noImpl$FlowKt__MigrationKt", "combineLatest", "Lkotlinx/coroutines/flow/Flow;", "R", "T1", "T2", "T3", "T4", "T5", "other", "other2", "other3", "other4", "transform", "Lkotlin/Function6;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Function5;", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Function4;", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Function3;", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "compose", ExifInterface.GPS_DIRECTION_TRUE, "transformer", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "concatMap", "mapper", "concatWith", C13032a.f29462d, "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;", "delayEach", "timeMillis", "", "delayFlow", "flatMap", "Lkotlin/Function2;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "flatten", "forEach", "", "action", "Lkotlin/ParameterName;", "name", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V", "merge", "observeOn", "context", "Lkotlin/coroutines/CoroutineContext;", "onErrorResume", "fallback", "onErrorResumeNext", "onErrorReturn", "predicate", "", "", "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;", "publishOn", "scanFold", "initial", "operation", "accumulator", "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "skip", "count", "", "startWith", "subscribe", "onEach", "onError", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V", "subscribeOn", "switchMap", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt.class */
public final /* synthetic */ class FlowKt__MigrationKt {
    public static final <T1, T2, T3, T4, T5, R> Flow<R> combineLatest(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, Flow<? extends T4> flow4, Flow<? extends T5> flow5, AbstractC15126t<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super AbstractC15044d<? super R>, ? extends Object> tVar) {
        return new FlowKt__MigrationKt$combineLatest$$inlined$combine$3(new Flow[]{flow, flow2, flow3, flow4, flow5}, tVar);
    }

    public static final <T1, T2, T3, T4, R> Flow<R> combineLatest(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, Flow<? extends T4> flow4, AbstractC15125s<? super T1, ? super T2, ? super T3, ? super T4, ? super AbstractC15044d<? super R>, ? extends Object> sVar) {
        return new FlowKt__MigrationKt$combineLatest$$inlined$combine$2(new Flow[]{flow, flow2, flow3, flow4}, sVar);
    }

    public static final <T1, T2, T3, R> Flow<R> combineLatest(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, AbstractC15124r<? super T1, ? super T2, ? super T3, ? super AbstractC15044d<? super R>, ? extends Object> rVar) {
        return new FlowKt__MigrationKt$combineLatest$$inlined$combine$1(new Flow[]{flow, flow2, flow3}, rVar);
    }

    public static final <T1, T2, R> Flow<R> combineLatest(Flow<? extends T1> flow, Flow<? extends T2> flow2, AbstractC15123q<? super T1, ? super T2, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return FlowKt.combine(flow, flow2, qVar);
    }

    public static final <T, R> Flow<R> compose(Flow<? extends T> flow, AbstractC15118l<? super Flow<? extends T>, ? extends Flow<? extends R>> lVar) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T, R> Flow<R> concatMap(Flow<? extends T> flow, AbstractC15118l<? super T, ? extends Flow<? extends R>> lVar) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> concatWith(Flow<? extends T> flow, T t) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> concatWith(Flow<? extends T> flow, Flow<? extends T> flow2) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> delayEach(Flow<? extends T> flow, long j) {
        return FlowKt.onEach(flow, new FlowKt__MigrationKt$delayEach$1(j, null));
    }

    public static final <T> Flow<T> delayFlow(Flow<? extends T> flow, long j) {
        return FlowKt.onStart(flow, new FlowKt__MigrationKt$delayFlow$1(j, null));
    }

    public static final <T, R> Flow<R> flatMap(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Flow<? extends R>>, ? extends Object> pVar) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> flatten(Flow<? extends Flow<? extends T>> flow) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> void forEach(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> merge(Flow<? extends Flow<? extends T>> flow) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final Void noImpl$FlowKt__MigrationKt() {
        throw new UnsupportedOperationException("Not implemented, should not be called");
    }

    public static final <T> Flow<T> observeOn(Flow<? extends T> flow, AbstractC15049g gVar) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> onErrorResume(Flow<? extends T> flow, Flow<? extends T> flow2) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> onErrorResumeNext(Flow<? extends T> flow, Flow<? extends T> flow2) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> onErrorReturn(Flow<? extends T> flow, T t) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> onErrorReturn(Flow<? extends T> flow, T t, AbstractC15118l<? super Throwable, Boolean> lVar) {
        return FlowKt.m41852catch(flow, new FlowKt__MigrationKt$onErrorReturn$2(lVar, t, null));
    }

    public static /* synthetic */ Flow onErrorReturn$default(Flow flow, Object obj, AbstractC15118l lVar, int i, Object obj2) {
        if ((i & 2) != 0) {
            lVar = FlowKt__MigrationKt$onErrorReturn$1.INSTANCE;
        }
        return FlowKt.onErrorReturn(flow, obj, lVar);
    }

    public static final <T> Flow<T> publishOn(Flow<? extends T> flow, AbstractC15049g gVar) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T, R> Flow<R> scanFold(Flow<? extends T> flow, R r, AbstractC15123q<? super R, ? super T, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> skip(Flow<? extends T> flow, int i) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> startWith(Flow<? extends T> flow, T t) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> startWith(Flow<? extends T> flow, Flow<? extends T> flow2) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> void subscribe(Flow<? extends T> flow) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> void subscribe(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> void subscribe(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar, AbstractC15122p<? super Throwable, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar2) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T> Flow<T> subscribeOn(Flow<? extends T> flow, AbstractC15049g gVar) {
        noImpl$FlowKt__MigrationKt();
        throw null;
    }

    public static final <T, R> Flow<R> switchMap(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Flow<? extends R>>, ? extends Object> pVar) {
        return FlowKt.transformLatest(flow, new FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1(pVar, null));
    }
}
