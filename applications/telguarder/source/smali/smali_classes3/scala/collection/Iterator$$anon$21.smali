.class public final Lscala/collection/Iterator$$anon$21;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->zipWithIndex()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Lscala/Tuple2<",
        "TA;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/Iterator;

.field private idx:I


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 683
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$$anon$21;->$outer:Lscala/collection/Iterator;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p1, 0x0

    .line 684
    iput p1, p0, Lscala/collection/Iterator$$anon$21;->idx:I

    return-void
.end method

.method private idx()I
    .locals 1

    .line 684
    iget v0, p0, Lscala/collection/Iterator$$anon$21;->idx:I

    return v0
.end method

.method private idx_$eq(I)V
    .locals 0

    .line 684
    iput p1, p0, Lscala/collection/Iterator$$anon$21;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 685
    iget-object v0, p0, Lscala/collection/Iterator$$anon$21;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 683
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$21;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 687
    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/Iterator$$anon$21;->$outer:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$21;->idx()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 688
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$21;->idx()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$21;->idx_$eq(I)V

    return-object v0
.end method
