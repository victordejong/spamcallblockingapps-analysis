.class public Lscala/concurrent/impl/CallbackRunnable;
.super Ljava/lang/Object;
.source "Promise.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/concurrent/OnCompleteRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lscala/concurrent/OnCompleteRunnable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001a3A!\u0001\u0002\u0005\u0013\t\u00012)\u00197mE\u0006\u001c7NU;o]\u0006\u0014G.\u001a\u0006\u0003\u0007\u0011\tA![7qY*\u0011QAB\u0001\u000bG>t7-\u001e:sK:$(\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"M\n\u0005\u0001-\u0019b\u0003\u0005\u0002\r#5\tQB\u0003\u0002\u000f\u001f\u0005!A.\u00198h\u0015\u0005\u0001\u0012\u0001\u00026bm\u0006L!AE\u0007\u0003\r=\u0013\'.Z2u!\taA#\u0003\u0002\u0016\u001b\tA!+\u001e8oC\ndW\r\u0005\u0002\u001815\tA!\u0003\u0002\u001a\t\t\u0011rJ\\\"p[BdW\r^3Sk:t\u0017M\u00197f\u0011!Y\u0002A!b\u0001\n\u0003a\u0012\u0001C3yK\u000e,Ho\u001c:\u0016\u0003u\u0001\"a\u0006\u0010\n\u0005}!!\u0001E#yK\u000e,H/[8o\u0007>tG/\u001a=u\u0011!\t\u0003A!A!\u0002\u0013i\u0012!C3yK\u000e,Ho\u001c:!\u0011!\u0019\u0003A!b\u0001\n\u0003!\u0013AC8o\u0007>l\u0007\u000f\\3uKV\tQ\u0005\u0005\u0003\'O%:T\"\u0001\u0004\n\u0005!2!!\u0003$v]\u000e$\u0018n\u001c82!\rQSfL\u0007\u0002W)\u0011AFB\u0001\u0005kRLG.\u0003\u0002/W\t\u0019AK]=\u0011\u0005A\nD\u0002\u0001\u0003\u0006e\u0001\u0011\ra\r\u0002\u0002)F\u0011Ag\u000e\t\u0003MUJ!A\u000e\u0004\u0003\u000f9{G\u000f[5oOB\u0011a\u0005O\u0005\u0003s\u0019\u00111!\u00118z\u0011!Y\u0004A!A!\u0002\u0013)\u0013aC8o\u0007>l\u0007\u000f\\3uK\u0002BQ!\u0010\u0001\u0005\u0002y\na\u0001P5oSRtDcA B\u0005B\u0019\u0001\tA\u0018\u000e\u0003\tAQa\u0007\u001fA\u0002uAQa\t\u001fA\u0002\u0015Bq\u0001\u0012\u0001A\u0002\u0013\u0005Q)A\u0003wC2,X-F\u0001*\u0011\u001d9\u0005\u00011A\u0005\u0002!\u000b\u0011B^1mk\u0016|F%Z9\u0015\u0005%c\u0005C\u0001\u0014K\u0013\tYeA\u0001\u0003V]&$\u0008bB\'G\u0003\u0003\u0005\r!K\u0001\u0004q\u0012\n\u0004BB(\u0001A\u0003&\u0011&\u0001\u0004wC2,X\r\t\u0005\u0006#\u0002!\tEU\u0001\u0004eVtG#A%\t\u000bQ\u0003A\u0011A+\u0002!\u0015DXmY;uK^KG\u000f\u001b,bYV,GCA%W\u0011\u001596\u000b1\u0001*\u0003\u00051\u0008"
.end annotation


# instance fields
.field private final executor:Lscala/concurrent/ExecutionContext;

.field private final onComplete:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Lscala/util/Try<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private value:Lscala/util/Try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/Try<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/concurrent/ExecutionContext;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/ExecutionContext;",
            "Lscala/Function1<",
            "Lscala/util/Try<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lscala/concurrent/impl/CallbackRunnable;->executor:Lscala/concurrent/ExecutionContext;

    iput-object p2, p0, Lscala/concurrent/impl/CallbackRunnable;->onComplete:Lscala/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lscala/concurrent/impl/CallbackRunnable;->value:Lscala/util/Try;

    return-void
.end method


# virtual methods
.method public executeWithValue(Lscala/util/Try;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->value()Lscala/util/Try;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lscala/Predef$;->require(Z)V

    .line 37
    invoke-virtual {p0, p1}, Lscala/concurrent/impl/CallbackRunnable;->value_$eq(Lscala/util/Try;)V

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->executor()Lscala/concurrent/ExecutionContext;

    move-result-object p1

    invoke-interface {p1, p0}, Lscala/concurrent/ExecutionContext;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    invoke-virtual {v0, p1}, Lscala/util/control/NonFatal$;->unapply(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->executor()Lscala/concurrent/ExecutionContext;

    move-result-object p1

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lscala/concurrent/ExecutionContext;->reportFailure(Ljava/lang/Throwable;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    return-void

    :cond_1
    throw p1
.end method

.method public executor()Lscala/concurrent/ExecutionContext;
    .locals 1

    .line 26
    iget-object v0, p0, Lscala/concurrent/impl/CallbackRunnable;->executor:Lscala/concurrent/ExecutionContext;

    return-object v0
.end method

.method public onComplete()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Lscala/util/Try<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lscala/concurrent/impl/CallbackRunnable;->onComplete:Lscala/Function1;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 31
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->value()Lscala/util/Try;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lscala/Predef$;->require(Z)V

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->onComplete()Lscala/Function1;

    move-result-object v0

    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->value()Lscala/util/Try;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    invoke-virtual {v1, v0}, Lscala/util/control/NonFatal$;->unapply(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->executor()Lscala/concurrent/ExecutionContext;

    move-result-object v0

    invoke-virtual {v1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lscala/concurrent/ExecutionContext;->reportFailure(Ljava/lang/Throwable;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    return-void

    :cond_1
    throw v0
.end method

.method public value()Lscala/util/Try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/Try<",
            "TT;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lscala/concurrent/impl/CallbackRunnable;->value:Lscala/util/Try;

    return-object v0
.end method

.method public value_$eq(Lscala/util/Try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lscala/concurrent/impl/CallbackRunnable;->value:Lscala/util/Try;

    return-void
.end method
