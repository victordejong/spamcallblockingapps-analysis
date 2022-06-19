.class public final Lscala/collection/parallel/ParIterableLike$Accessor$$anonfun$split$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$Accessor;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Accessor<TR;TTp;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$Accessor;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$Accessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Accessor<TR;TTp;>;)V"
        }
    .end annotation

    .line 902
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Accessor$$anonfun$split$1;->$outer:Lscala/collection/parallel/ParIterableLike$Accessor;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 902
    check-cast p1, Lscala/collection/parallel/IterableSplitter;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Accessor$$anonfun$split$1;->apply(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Accessor<TR;TTp;>;"
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Accessor$$anonfun$split$1;->$outer:Lscala/collection/parallel/ParIterableLike$Accessor;

    invoke-interface {v0, p1}, Lscala/collection/parallel/ParIterableLike$Accessor;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;

    move-result-object p1

    return-object p1
.end method
