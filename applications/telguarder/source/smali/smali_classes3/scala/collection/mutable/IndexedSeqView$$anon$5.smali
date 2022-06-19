.class public final Lscala/collection/mutable/IndexedSeqView$$anon$5;
.super Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;
.source "IndexedSeqView.scala"

# interfaces
.implements Lscala/collection/mutable/IndexedSeqView$Reversed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/IndexedSeqView;->newReversed()Lscala/collection/mutable/IndexedSeqView$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>.AbstractTransformed<TA;>;",
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>.Reversed;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/IndexedSeqView;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/IndexedSeqView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;)V"
        }
    .end annotation

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/IndexedSeqView$$anon$5;->$outer:Lscala/collection/mutable/IndexedSeqView;

    invoke-direct {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;-><init>(Lscala/collection/mutable/IndexedSeqView;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Reversed$class;->$init$(Lscala/collection/SeqViewLike$Reversed;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqView$Reversed$class;->$init$(Lscala/collection/mutable/IndexedSeqView$Reversed;)V

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Reversed$class;->apply(Lscala/collection/SeqViewLike$Reversed;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$$anon$5;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lscala/collection/SeqViewLike$Reversed$class;->iterator(Lscala/collection/SeqViewLike$Reversed;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 84
    invoke-static {p0}, Lscala/collection/SeqViewLike$Reversed$class;->length(Lscala/collection/SeqViewLike$Reversed;)I

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$SeqViewLike$Reversed$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 145
    iget-object v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$5;->$outer:Lscala/collection/mutable/IndexedSeqView;

    return-object v0
.end method

.method public synthetic scala$collection$mutable$IndexedSeqView$Reversed$$$outer()Lscala/collection/mutable/IndexedSeqView;
    .locals 1

    .line 73
    iget-object v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$5;->$outer:Lscala/collection/mutable/IndexedSeqView;

    return-object v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView$Reversed$class;->update(Lscala/collection/mutable/IndexedSeqView$Reversed;ILjava/lang/Object;)V

    return-void
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {p0}, Lscala/collection/SeqViewLike$Reversed$class;->viewIdentifier(Lscala/collection/SeqViewLike$Reversed;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
