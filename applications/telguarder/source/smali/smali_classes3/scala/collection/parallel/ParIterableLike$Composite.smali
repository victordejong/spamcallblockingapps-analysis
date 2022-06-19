.class public abstract Lscala/collection/parallel/ParIterableLike$Composite;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$NonDivisibleTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Composite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FR:",
        "Ljava/lang/Object;",
        "SR:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "First::",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TFR;*>;Second::",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TSR;*>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.NonDivisibleTask<TR;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Composite<TFR;TSR;TR;TFirst;TSecond;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final ft:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFirst;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final st:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSecond;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;TFirst;TSecond;)V"
        }
    .end annotation

    .line 915
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$Composite;->ft:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$Composite;->st:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    .line 914
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Composite;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$NonDivisibleTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$NonDivisibleTask;)V

    const/4 p1, 0x0

    .line 918
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Composite;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract combineResults(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFR;TSR;)TR;"
        }
    .end annotation
.end method

.method public forwardThrowable()V
    .locals 0

    .line 914
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public ft()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFirst;"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Composite;->ft:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    return-object v0
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 0

    .line 914
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->merge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method

.method public mergeSubtasks()V
    .locals 2

    .line 924
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->ft()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->st()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->mergeThrowables(Lscala/collection/parallel/Task;)V

    .line 925
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->throwable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->ft()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->result()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->st()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->result()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lscala/collection/parallel/ParIterableLike$Composite;->combineResults(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/ParIterableLike$Composite;->result_$eq(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public mergeThrowables(Lscala/collection/parallel/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "**>;)V"
        }
    .end annotation

    .line 914
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 914
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    .line 927
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->ft()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->requiresStrictSplitters()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->st()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->requiresStrictSplitters()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public result()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Composite;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public result_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 918
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Composite;->result:Ljava/lang/Object;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Composite$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 914
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Composite;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$NonDivisibleTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 907
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->scala$collection$parallel$ParIterableLike$Composite$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->scala$collection$parallel$ParIterableLike$Composite$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 914
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$NonDivisibleTask$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$NonDivisibleTask;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 1

    .line 920
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->ft()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->signalAbort()V

    .line 921
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->st()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->signalAbort()V

    return-void
.end method

.method public bridge synthetic split()Lscala/collection/Seq;
    .locals 1

    .line 914
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Composite;->split()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public split()Lscala/runtime/Nothing$;
    .locals 1

    .line 914
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$NonDivisibleTask$class;->split(Lscala/collection/parallel/ParIterableLike$NonDivisibleTask;)Lscala/runtime/Nothing$;

    move-result-object v0

    return-object v0
.end method

.method public st()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSecond;"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Composite;->st:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 914
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Composite;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Composite;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public tryLeaf(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TR;>;)V"
        }
    .end annotation

    .line 914
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 914
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
