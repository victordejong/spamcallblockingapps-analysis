.class public final Lscala/collection/SeqViewLike$$anon$12;
.super Lscala/collection/SeqViewLike$AbstractTransformed;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/SeqViewLike$Patched;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike;->newPatched(ILscala/collection/GenSeq;I)Lscala/collection/SeqViewLike$Transformed;
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
        "TA;TColl;TThis;>.Patched<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/SeqViewLike;

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
.method public constructor <init>(Lscala/collection/SeqViewLike;ILscala/collection/GenSeq;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 210
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqViewLike$$anon$12;->$outer:Lscala/collection/SeqViewLike;

    .line 211
    iput p2, p0, Lscala/collection/SeqViewLike$$anon$12;->from:I

    .line 212
    iput-object p3, p0, Lscala/collection/SeqViewLike$$anon$12;->patch:Lscala/collection/GenSeq;

    .line 213
    iput p4, p0, Lscala/collection/SeqViewLike$$anon$12;->replaced:I

    .line 214
    invoke-direct {p0, p1}, Lscala/collection/SeqViewLike$AbstractTransformed;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Patched$class;->$init$(Lscala/collection/SeqViewLike$Patched;)V

    return-void
.end method

.method private scala$collection$SeqViewLike$Patched$$plen$lzycompute()I
    .locals 1

    .line 210
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/SeqViewLike$$anon$12;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/collection/SeqViewLike$Patched$class;->scala$collection$SeqViewLike$Patched$$plen(Lscala/collection/SeqViewLike$Patched;)I

    move-result v0

    iput v0, p0, Lscala/collection/SeqViewLike$$anon$12;->scala$collection$SeqViewLike$Patched$$plen:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/SeqViewLike$$anon$12;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lscala/collection/SeqViewLike$$anon$12;->scala$collection$SeqViewLike$Patched$$plen:I

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

    .line 210
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Patched$class;->apply(Lscala/collection/SeqViewLike$Patched;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 210
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqViewLike$$anon$12;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public from()I
    .locals 1

    .line 211
    iget v0, p0, Lscala/collection/SeqViewLike$$anon$12;->from:I

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

    .line 210
    invoke-static {p0}, Lscala/collection/SeqViewLike$Patched$class;->iterator(Lscala/collection/SeqViewLike$Patched;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 210
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

    .line 212
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$12;->patch:Lscala/collection/GenSeq;

    return-object v0
.end method

.method public replaced()I
    .locals 1

    .line 213
    iget v0, p0, Lscala/collection/SeqViewLike$$anon$12;->replaced:I

    return v0
.end method

.method public synthetic scala$collection$SeqViewLike$Patched$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 161
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$12;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public scala$collection$SeqViewLike$Patched$$plen()I
    .locals 1

    .line 210
    iget-boolean v0, p0, Lscala/collection/SeqViewLike$$anon$12;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lscala/collection/SeqViewLike$$anon$12;->scala$collection$SeqViewLike$Patched$$plen:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/SeqViewLike$$anon$12;->scala$collection$SeqViewLike$Patched$$plen$lzycompute()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-static {p0}, Lscala/collection/SeqViewLike$Patched$class;->viewIdentifier(Lscala/collection/SeqViewLike$Patched;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
