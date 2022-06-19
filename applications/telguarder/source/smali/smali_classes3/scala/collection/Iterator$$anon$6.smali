.class public final Lscala/collection/Iterator$$anon$6;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator$;->range(III)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final end$2:I

.field private i:I

.field private final step$1:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 108
    iput p2, p0, Lscala/collection/Iterator$$anon$6;->end$2:I

    iput p3, p0, Lscala/collection/Iterator$$anon$6;->step$1:I

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    if-eqz p3, :cond_0

    .line 110
    iput p1, p0, Lscala/collection/Iterator$$anon$6;->i:I

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "zero step"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i()I
    .locals 1

    .line 110
    iget v0, p0, Lscala/collection/Iterator$$anon$6;->i:I

    return v0
.end method

.method private i_$eq(I)V
    .locals 0

    .line 110
    iput p1, p0, Lscala/collection/Iterator$$anon$6;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 111
    iget v0, p0, Lscala/collection/Iterator$$anon$6;->step$1:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$6;->i()I

    move-result v0

    iget v1, p0, Lscala/collection/Iterator$$anon$6;->end$2:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lscala/collection/Iterator$$anon$6;->step$1:I

    if-gez v0, :cond_2

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$6;->i()I

    move-result v0

    iget v1, p0, Lscala/collection/Iterator$$anon$6;->end$2:I

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()I
    .locals 3

    .line 113
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$6;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$6;->i()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$6;->i()I

    move-result v1

    iget v2, p0, Lscala/collection/Iterator$$anon$6;->step$1:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$6;->i_$eq(I)V

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$6;->next()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
