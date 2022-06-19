.class public final Lscala/collection/SeqViewLike$$anon$1;
.super Lscala/collection/SeqViewLike$AbstractTransformed;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/SeqViewLike$Forced;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TB;>;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.Forced<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/SeqViewLike;

.field private final forced:Lscala/collection/GenSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/GenSeq<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/SeqViewLike;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 195
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqViewLike$$anon$1;->$outer:Lscala/collection/SeqViewLike;

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/GenSeq;

    iput-object p2, p0, Lscala/collection/SeqViewLike$$anon$1;->forced:Lscala/collection/GenSeq;

    invoke-direct {p0, p1}, Lscala/collection/SeqViewLike$AbstractTransformed;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$Forced$class;->$init$(Lscala/collection/TraversableViewLike$Forced;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Forced$class;->$init$(Lscala/collection/IterableViewLike$Forced;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Forced$class;->$init$(Lscala/collection/SeqViewLike$Forced;)V

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 195
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Forced$class;->apply(Lscala/collection/SeqViewLike$Forced;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqViewLike$$anon$1;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forced()Lscala/collection/GenSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenSeq<",
            "TB;>;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$1;->forced:Lscala/collection/GenSeq;

    return-object v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TU;>;)V"
        }
    .end annotation

    .line 195
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$Forced$class;->foreach(Lscala/collection/TraversableViewLike$Forced;Lscala/Function1;)V

    return-void
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 195
    invoke-static {p0}, Lscala/collection/IterableViewLike$Forced$class;->iterator(Lscala/collection/IterableViewLike$Forced;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 195
    invoke-static {p0}, Lscala/collection/SeqViewLike$Forced$class;->length(Lscala/collection/SeqViewLike$Forced;)I

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IterableViewLike$Forced$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 53
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$1;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$SeqViewLike$Forced$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 50
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$1;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$Forced$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 139
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$1;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 195
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Forced$class;->viewIdentifier(Lscala/collection/TraversableViewLike$Forced;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
