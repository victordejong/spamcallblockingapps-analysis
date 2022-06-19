.class public final Lscala/collection/immutable/StreamViewLike$$anon$11;
.super Lscala/collection/immutable/StreamViewLike$AbstractTransformed;
.source "StreamViewLike.scala"

# interfaces
.implements Lscala/collection/immutable/StreamViewLike$Patched;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StreamViewLike;->newPatched(ILscala/collection/GenSeq;I)Lscala/collection/immutable/StreamViewLike$Transformed;
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
        "TA;TColl;TThis;>.Patched<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/StreamViewLike;

.field private volatile bitmap$0:Z

.field private final from:I

.field private final patch:Lscala/collection/GenSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/GenSeq<",
            "TB;>;"
        }
    .end annotation
.end field

.field private final replaced:I

.field private final scala$collection$SeqViewLike$Patched$$plen:I


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StreamViewLike;ILscala/collection/GenSeq;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->$outer:Lscala/collection/immutable/StreamViewLike;

    iput p2, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->from:I

    iput-object p3, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->patch:Lscala/collection/GenSeq;

    iput p4, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->replaced:I

    invoke-direct {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;-><init>(Lscala/collection/immutable/StreamViewLike;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Patched$class;->$init$(Lscala/collection/SeqViewLike$Patched;)V

    return-void
.end method

.method private scala$collection$SeqViewLike$Patched$$plen$lzycompute()I
    .locals 1

    .line 68
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/collection/SeqViewLike$Patched$class;->scala$collection$SeqViewLike$Patched$$plen(Lscala/collection/SeqViewLike$Patched;)I

    move-result v0

    iput v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->scala$collection$SeqViewLike$Patched$$plen:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->scala$collection$SeqViewLike$Patched$$plen:I

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Patched$class;->apply(Lscala/collection/SeqViewLike$Patched;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$11;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public from()I
    .locals 1

    .line 68
    iget v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->from:I

    return v0
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

    .line 68
    invoke-static {p0}, Lscala/collection/SeqViewLike$Patched$class;->iterator(Lscala/collection/SeqViewLike$Patched;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 68
    invoke-static {p0}, Lscala/collection/SeqViewLike$Patched$class;->length(Lscala/collection/SeqViewLike$Patched;)I

    move-result v0

    return v0
.end method

.method public patch()Lscala/collection/GenSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenSeq<",
            "TB;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->patch:Lscala/collection/GenSeq;

    return-object v0
.end method

.method public replaced()I
    .locals 1

    .line 68
    iget v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->replaced:I

    return v0
.end method

.method public synthetic scala$collection$SeqViewLike$Patched$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 161
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public scala$collection$SeqViewLike$Patched$$plen()I
    .locals 1

    .line 68
    iget-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$11;->scala$collection$SeqViewLike$Patched$$plen:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/StreamViewLike$$anon$11;->scala$collection$SeqViewLike$Patched$$plen$lzycompute()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-static {p0}, Lscala/collection/SeqViewLike$Patched$class;->viewIdentifier(Lscala/collection/SeqViewLike$Patched;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
