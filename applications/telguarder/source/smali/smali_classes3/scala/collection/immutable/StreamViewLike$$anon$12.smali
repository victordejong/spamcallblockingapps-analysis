.class public final Lscala/collection/immutable/StreamViewLike$$anon$12;
.super Lscala/collection/immutable/StreamViewLike$AbstractTransformed;
.source "StreamViewLike.scala"

# interfaces
.implements Lscala/collection/immutable/StreamViewLike$Prepended;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StreamViewLike;->newPrepended(Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TB;>;",
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.Prepended<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/StreamViewLike;

.field private final fst:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StreamViewLike;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/StreamViewLike$$anon$12;->$outer:Lscala/collection/immutable/StreamViewLike;

    iput-object p2, p0, Lscala/collection/immutable/StreamViewLike$$anon$12;->fst:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;-><init>(Lscala/collection/immutable/StreamViewLike;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Prepended$class;->$init$(Lscala/collection/SeqViewLike$Prepended;)V

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

    .line 70
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Prepended$class;->apply(Lscala/collection/SeqViewLike$Prepended;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$12;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$12;->fst:Ljava/lang/Object;

    return-object v0
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

    .line 70
    invoke-static {p0}, Lscala/collection/SeqViewLike$Prepended$class;->iterator(Lscala/collection/SeqViewLike$Prepended;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 70
    invoke-static {p0}, Lscala/collection/SeqViewLike$Prepended$class;->length(Lscala/collection/SeqViewLike$Prepended;)I

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$SeqViewLike$Prepended$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 182
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$12;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {p0}, Lscala/collection/SeqViewLike$Prepended$class;->viewIdentifier(Lscala/collection/SeqViewLike$Prepended;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
