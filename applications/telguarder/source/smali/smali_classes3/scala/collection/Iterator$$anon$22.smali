.class public final Lscala/collection/Iterator$$anon$22;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->zipAll(Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Lscala/Tuple2<",
        "TA1;TB1;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/Iterator;

.field private final that$4:Lscala/collection/Iterator;

.field private final thatElem$1:Ljava/lang/Object;

.field private final thisElem$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 716
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$$anon$22;->$outer:Lscala/collection/Iterator;

    iput-object p2, p0, Lscala/collection/Iterator$$anon$22;->that$4:Lscala/collection/Iterator;

    iput-object p3, p0, Lscala/collection/Iterator$$anon$22;->thisElem$1:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/Iterator$$anon$22;->thatElem$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 717
    iget-object v0, p0, Lscala/collection/Iterator$$anon$22;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lscala/collection/Iterator$$anon$22;->that$4:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

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

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 716
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$22;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TA1;TB1;>;"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lscala/collection/Iterator$$anon$22;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lscala/collection/Iterator$$anon$22;->that$4:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/Iterator$$anon$22;->$outer:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/Iterator$$anon$22;->that$4:Lscala/collection/Iterator;

    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 721
    :cond_0
    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/Iterator$$anon$22;->$outer:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/Iterator$$anon$22;->thatElem$1:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 723
    :cond_1
    iget-object v0, p0, Lscala/collection/Iterator$$anon$22;->that$4:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/Iterator$$anon$22;->thisElem$1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/Iterator$$anon$22;->that$4:Lscala/collection/Iterator;

    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 724
    :cond_2
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    :goto_0
    return-object v0
.end method
