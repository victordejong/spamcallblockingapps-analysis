.class public final Lscala/collection/immutable/StreamViewLike$$anon$6;
.super Lscala/collection/immutable/StreamViewLike$AbstractTransformed;
.source "StreamViewLike.scala"

# interfaces
.implements Lscala/collection/immutable/StreamViewLike$Sliced;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StreamViewLike;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TA;>;",
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.Sliced;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/StreamViewLike;

.field private final endpoints:Lscala/collection/generic/SliceInterval;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StreamViewLike;Lscala/collection/generic/SliceInterval;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/StreamViewLike$$anon$6;->$outer:Lscala/collection/immutable/StreamViewLike;

    iput-object p2, p0, Lscala/collection/immutable/StreamViewLike$$anon$6;->endpoints:Lscala/collection/generic/SliceInterval;

    invoke-direct {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;-><init>(Lscala/collection/immutable/StreamViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$Sliced$class;->$init$(Lscala/collection/TraversableViewLike$Sliced;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Sliced$class;->$init$(Lscala/collection/IterableViewLike$Sliced;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Sliced$class;->$init$(Lscala/collection/SeqViewLike$Sliced;)V

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

    .line 59
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Sliced$class;->apply(Lscala/collection/SeqViewLike$Sliced;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$6;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public endpoints()Lscala/collection/generic/SliceInterval;
    .locals 1

    .line 59
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$6;->endpoints:Lscala/collection/generic/SliceInterval;

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
            "Ljava/lang/Object;",
            "TU;>;)V"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Sliced$class;->foreach(Lscala/collection/SeqViewLike$Sliced;Lscala/Function1;)V

    return-void
.end method

.method public from()I
    .locals 1

    .line 59
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Sliced$class;->from(Lscala/collection/TraversableViewLike$Sliced;)I

    move-result v0

    return v0
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

    .line 59
    invoke-static {p0}, Lscala/collection/SeqViewLike$Sliced$class;->iterator(Lscala/collection/SeqViewLike$Sliced;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 59
    invoke-static {p0}, Lscala/collection/SeqViewLike$Sliced$class;->length(Lscala/collection/SeqViewLike$Sliced;)I

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IterableViewLike$Sliced$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 57
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$6;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$SeqViewLike$Sliced$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 55
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$6;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$Sliced$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 145
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$6;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public until()I
    .locals 1

    .line 59
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Sliced$class;->until(Lscala/collection/TraversableViewLike$Sliced;)I

    move-result v0

    return v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Sliced$class;->viewIdentifier(Lscala/collection/TraversableViewLike$Sliced;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
