.class public final Lscala/MatchError;
.super Ljava/lang/RuntimeException;
.source "MatchError.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001!2A!\u0001\u0002\u0003\u000b\tQQ*\u0019;dQ\u0016\u0013(o\u001c:\u000b\u0003\r\tQa]2bY\u0006\u001c\u0001a\u0005\u0002\u0001\rA\u0011qa\u0003\u0008\u0003\u0011%i\u0011AA\u0005\u0003\u0015\t\tq\u0001]1dW\u0006<W-\u0003\u0002\r\u001b\t\u0001\"+\u001e8uS6,W\t_2faRLwN\u001c\u0006\u0003\u0015\tA\u0001b\u0004\u0001\u0003\u0002\u0003\u0006I\u0001E\u0001\u0004_\nT\u0007C\u0001\u0005\u0012\u0013\t\u0011\"AA\u0002B]fDQ\u0001\u0006\u0001\u0005\u0002U\ta\u0001P5oSRtDC\u0001\u000c\u0018!\tA\u0001\u0001C\u0003\u0010\'\u0001\u0007\u0001\u0003\u0003\u0005\u001a\u0001!\u0015\r\u0011\"\u0003\u001b\u0003%y\'M[*ue&tw-F\u0001\u001c!\ta\u0012%D\u0001\u001e\u0015\tqr$\u0001\u0003mC:<\'\"\u0001\u0011\u0002\t)\u000cg/Y\u0005\u0003Eu\u0011aa\u0015;sS:<\u0007\u0002\u0003\u0013\u0001\u0011\u0003\u0005\u000b\u0015B\u000e\u0002\u0015=\u0014\'n\u0015;sS:<\u0007\u0005C\u0003\'\u0001\u0011\u0005s%\u0001\u0006hKRlUm]:bO\u0016$\u0012a\u0007"
.end annotation


# instance fields
.field private volatile bitmap$0:Z

.field private final obj:Ljava/lang/Object;

.field private objString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lscala/MatchError;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method private final liftedTree1$1()Ljava/lang/String;
    .locals 2

    .line 30
    :try_start_0
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v1, p0, Lscala/MatchError;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lscala/MatchError;->ofClass$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "an instance "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lscala/MatchError;->ofClass$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private objString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-boolean v0, p0, Lscala/MatchError;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/MatchError;->objString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/MatchError;->objString$lzycompute()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private objString$lzycompute()Ljava/lang/String;
    .locals 1

    .line 26
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/MatchError;->bitmap$0:Z

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lscala/MatchError;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0}, Lscala/MatchError;->liftedTree1$1()Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    iput-object v0, p0, Lscala/MatchError;->objString:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/MatchError;->bitmap$0:Z

    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/MatchError;->objString:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final ofClass$1()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "of class "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/MatchError;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-direct {p0}, Lscala/MatchError;->objString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
