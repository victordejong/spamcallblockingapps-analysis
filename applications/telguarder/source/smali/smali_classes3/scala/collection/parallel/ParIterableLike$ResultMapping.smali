.class public abstract Lscala/collection/parallel/ParIterableLike$ResultMapping;
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
    name = "ResultMapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "Tp:",
        "Ljava/lang/Object;",
        "R1:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.NonDivisibleTask<TR1;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.ResultMapping<TR;TTp;TR1;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final inner:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR;TTp;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR1;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR;TTp;>;)V"
        }
    .end annotation

    .line 953
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$ResultMapping;->inner:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ResultMapping;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$NonDivisibleTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$NonDivisibleTask;)V

    const/4 p1, 0x0

    .line 955
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ResultMapping;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 953
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public inner()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR;TTp;>;"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ResultMapping;->inner:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    return-object v0
.end method

.method public leaf(Lscala/Option;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TR1;>;)V"
        }
    .end annotation

    .line 958
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ResultMapping;->scala$collection$parallel$ParIterableLike$ResultMapping$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ResultMapping;->inner()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p1

    .line 959
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$ResultMapping;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$ResultMapping;->result_$eq(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract map(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR1;"
        }
    .end annotation
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 0

    .line 953
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->merge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

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

    .line 953
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 953
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    .line 964
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ResultMapping;->inner()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->requiresStrictSplitters()Z

    move-result v0

    return v0
.end method

.method public result()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR1;"
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ResultMapping;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public result_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR1;)V"
        }
    .end annotation

    .line 955
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ResultMapping;->result:Ljava/lang/Object;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$NonDivisibleTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 907
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ResultMapping;->scala$collection$parallel$ParIterableLike$ResultMapping$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$ResultMapping$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 953
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ResultMapping;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ResultMapping;->scala$collection$parallel$ParIterableLike$ResultMapping$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 953
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$NonDivisibleTask$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$NonDivisibleTask;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 1

    .line 962
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ResultMapping;->inner()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->signalAbort()V

    return-void
.end method

.method public bridge synthetic split()Lscala/collection/Seq;
    .locals 1

    .line 953
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ResultMapping;->split()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public split()Lscala/runtime/Nothing$;
    .locals 1

    .line 953
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$NonDivisibleTask$class;->split(Lscala/collection/parallel/ParIterableLike$NonDivisibleTask;)Lscala/runtime/Nothing$;

    move-result-object v0

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 953
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ResultMapping;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ResultMapping;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public tryLeaf(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TR1;>;)V"
        }
    .end annotation

    .line 953
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 953
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
