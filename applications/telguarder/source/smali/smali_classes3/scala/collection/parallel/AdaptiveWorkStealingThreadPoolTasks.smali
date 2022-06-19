.class public interface abstract Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks;
.super Ljava/lang/Object;
.source "Tasks.scala"

# interfaces
.implements Lscala/collection/parallel/ThreadPoolTasks;
.implements Lscala/collection/parallel/AdaptiveWorkStealingTasks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00154q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0012BI\u0006\u0004H/\u001b<f/>\u00148n\u0015;fC2Lgn\u001a+ie\u0016\u000cG\rU8pYR\u000b7o[:\u000b\u0005\r!\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\t\u0001QaB\u0005\t\u0003\u00171i\u0011AB\u0005\u0003\u001b\u0019\u0011a!\u00118z%\u00164\u0007CA\u0008\u0011\u001b\u0005\u0011\u0011BA\t\u0003\u0005=!\u0006N]3bIB{w\u000e\u001c+bg.\u001c\u0008CA\u0008\u0014\u0013\t!\"AA\rBI\u0006\u0004H/\u001b<f/>\u00148n\u0015;fC2Lgn\u001a+bg.\u001c\u0008\"\u0002\u000c\u0001\t\u00039\u0012A\u0002\u0013j]&$H\u0005F\u0001\u0019!\tY\u0011$\u0003\u0002\u001b\r\t!QK\\5u\r\u0011a\u0002\u0001A\u000f\u0003\u0017]\u0013\u0018\r\u001d9fIR\u000b7o[\u000b\u0004=124\u0003B\u000e Oa\u0002\"\u0001I\u0013\u000e\u0003\u0005R!AI\u0012\u0002\t1\u000cgn\u001a\u0006\u0002I\u0005!!.\u0019<b\u0013\t1\u0013E\u0001\u0004PE*,7\r\u001e\t\u0005Q%RS\'D\u0001\u0001\u0013\ta\u0002\u0003\u0005\u0002,Y1\u0001A!B\u0017\u001c\u0005\u0004q#!\u0001*\u0012\u0005=\u0012\u0004CA\u00061\u0013\t\tdAA\u0004O_RD\u0017N\\4\u0011\u0005-\u0019\u0014B\u0001\u001b\u0007\u0005\r\te.\u001f\t\u0003WY\"QaN\u000eC\u00029\u0012!\u0001\u00169\u0011\t!J$&N\u0005\u00039MA\u0001bO\u000e\u0003\u0006\u0004%\t\u0001P\u0001\u0005E>$\u00170F\u0001>!\u0011yaHK\u001b\n\u0005}\u0012!\u0001\u0002+bg.D\u0001\"Q\u000e\u0003\u0002\u0003\u0006I!P\u0001\u0006E>$\u0017\u0010\t\u0005\u0006\u0007n!\t\u0001R\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0005\u00153\u0005\u0003\u0002\u0015\u001cUUBQa\u000f\"A\u0002uBQ\u0001S\u000e\u0005\u0002%\u000bQa\u001d9mSR,\u0012A\u0013\t\u0004\u0017:CdBA\u0006M\u0013\tie!A\u0004qC\u000e\\\u0017mZ3\n\u0005=\u0003&aA*fc*\u0011QJ\u0002\u0005\u0006%\u0002!\taU\u0001\u000f]\u0016<xK]1qa\u0016$G+Y:l+\r!v+\u0017\u000b\u0003+j\u0003B\u0001K\u000eW1B\u00111f\u0016\u0003\u0006[E\u0013\rA\u000c\t\u0003We#QaN)C\u00029BQaW)A\u0002q\u000b\u0011A\u0019\t\u0005\u001fy2\u0006\u000c\u000b\u0003\u0001=\u0006\u001c\u0007CA\u0006`\u0013\t\u0001gA\u0001\u0006eKB\u0014XmY1uK\u0012\u000c\u0013AY\u00011+N,\u0007\u0005Y!eCB$\u0018N^3X_J\\7\u000b^3bY&twMR8sW*{\u0017N\u001c+bg.\u001c\u0008\rI5ogR,\u0017\r\u001a\u0018\"\u0003\u0011\u000caA\r\u00182c9\u0002\u0004"
.end annotation


# virtual methods
.method public abstract newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "Tp:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)",
            "Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask<",
            "TR;TTp;>;"
        }
    .end annotation
.end method
