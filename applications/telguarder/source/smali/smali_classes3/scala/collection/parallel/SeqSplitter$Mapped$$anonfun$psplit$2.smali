.class public final Lscala/collection/parallel/SeqSplitter$Mapped$$anonfun$psplit$2;
.super Lscala/runtime/AbstractFunction1;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/SeqSplitter$Mapped;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/SeqSplitter<",
        "TT;>;",
        "Lscala/collection/parallel/SeqSplitter<",
        "TT;>.Mapped<TS;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/SeqSplitter$Mapped;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/SeqSplitter$Mapped;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Mapped<TS;>;)V"
        }
    .end annotation

    .line 581
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/SeqSplitter$Mapped$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/SeqSplitter$Mapped;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 581
    check-cast p1, Lscala/collection/parallel/SeqSplitter;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Mapped$$anonfun$psplit$2;->apply(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Mapped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Mapped<TS;>;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lscala/collection/parallel/SeqSplitter$Mapped$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/SeqSplitter$Mapped;

    iget-object v0, v0, Lscala/collection/parallel/SeqSplitter$Mapped;->scala$collection$parallel$SeqSplitter$Mapped$$f:Lscala/Function1;

    invoke-interface {p1, v0}, Lscala/collection/parallel/SeqSplitter;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method
