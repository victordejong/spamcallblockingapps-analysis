.class public Lscala/concurrent/DelayedLazyVal;
.super Ljava/lang/Object;
.source "DelayedLazyVal.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u001d3A!\u0001\u0002\u0001\u000f\tqA)\u001a7bs\u0016$G*\u0019>z-\u0006d\'BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u0015\'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001aD\u0001B\u0004\u0001\u0003\u0002\u0003\u0006IaD\u0001\u0002MB\u0019!\u0002\u0005\n\n\u0005E!!!\u0003$v]\u000e$\u0018n\u001c81!\t\u0019B\u0003\u0004\u0001\u0005\u000bU\u0001!\u0019\u0001\u000c\u0003\u0003Q\u000b\"a\u0006\u000e\u0011\u0005)A\u0012BA\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"AC\u000e\n\u0005q!!aA!os\"Aa\u0004\u0001B\u0001J\u0003%q$\u0001\u0003c_\u0012L\u0008c\u0001\u0006!E%\u0011\u0011\u0005\u0002\u0002\ty\tLh.Y7f}A\u0011!bI\u0005\u0003I\u0011\u0011A!\u00168ji\"Aa\u0005\u0001B\u0001B\u0003-q%\u0001\u0003fq\u0016\u001c\u0007C\u0001\u0015*\u001b\u0005\u0011\u0011B\u0001\u0016\u0003\u0005A)\u00050Z2vi&|gnQ8oi\u0016DH\u000fC\u0003-\u0001\u0011\u0005Q&\u0001\u0004=S:LGO\u0010\u000b\u0004]E\u0012DCA\u00181!\rA\u0003A\u0005\u0005\u0006M-\u0002\u001da\n\u0005\u0006\u001d-\u0002\ra\u0004\u0005\u0007=-\"\t\u0019A\u0010\t\rQ\u0002\u0001\u0015)\u00036\u0003\u001dy\u0016n\u001d#p]\u0016\u0004\"A\u0003\u001c\n\u0005]\"!a\u0002\"p_2,\u0017M\u001c\u0015\u0003ge\u0002\"A\u0003\u001e\n\u0005m\"!\u0001\u0003<pY\u0006$\u0018\u000e\\3\t\u0011u\u0002\u0001R1Q\u0005\ny\n\u0001bY8na2,G/Z\u000b\u0002%!A\u0001\t\u0001E\u0001B\u0003&!#A\u0005d_6\u0004H.\u001a;fA!)!\t\u0001C\u0001\u0007\u00061\u0011n\u001d#p]\u0016,\u0012!\u000e\u0005\u0006\u000b\u0002!\tAR\u0001\u0006CB\u0004H.\u001f\u000b\u0002%\u0001"
.end annotation


# instance fields
.field private volatile bitmap$0:Z

.field private complete:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final f:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile scala$concurrent$DelayedLazyVal$$_isDone:Z

.field public final scala$concurrent$DelayedLazyVal$$body:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Function0;Lscala/Function0;Lscala/concurrent/ExecutionContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lscala/concurrent/DelayedLazyVal;->f:Lscala/Function0;

    iput-object p2, p0, Lscala/concurrent/DelayedLazyVal;->scala$concurrent$DelayedLazyVal$$body:Lscala/Function0;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lscala/concurrent/DelayedLazyVal;->scala$concurrent$DelayedLazyVal$$_isDone:Z

    .line 42
    new-instance p1, Lscala/concurrent/DelayedLazyVal$$anon$1;

    invoke-direct {p1, p0}, Lscala/concurrent/DelayedLazyVal$$anon$1;-><init>(Lscala/concurrent/DelayedLazyVal;)V

    invoke-interface {p3, p1}, Lscala/concurrent/ExecutionContext;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private complete()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lscala/concurrent/DelayedLazyVal;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/concurrent/DelayedLazyVal;->complete:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/concurrent/DelayedLazyVal;->complete$lzycompute()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private complete$lzycompute()Ljava/lang/Object;
    .locals 1

    .line 28
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/concurrent/DelayedLazyVal;->bitmap$0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/concurrent/DelayedLazyVal;->f:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lscala/concurrent/DelayedLazyVal;->complete:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/concurrent/DelayedLazyVal;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/concurrent/DelayedLazyVal;->complete:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public apply()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lscala/concurrent/DelayedLazyVal;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/concurrent/DelayedLazyVal;->complete()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/concurrent/DelayedLazyVal;->f:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lscala/concurrent/DelayedLazyVal;->scala$concurrent$DelayedLazyVal$$_isDone:Z

    return v0
.end method
