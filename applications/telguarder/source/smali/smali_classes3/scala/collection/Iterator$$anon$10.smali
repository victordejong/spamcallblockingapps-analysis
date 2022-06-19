.class public final Lscala/collection/Iterator$$anon$10;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->slice(II)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/Iterator;

.field private remaining:I


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 348
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$$anon$10;->$outer:Lscala/collection/Iterator;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    sub-int/2addr p3, p2

    .line 349
    iput p3, p0, Lscala/collection/Iterator$$anon$10;->remaining:I

    return-void
.end method

.method private remaining()I
    .locals 1

    .line 349
    iget v0, p0, Lscala/collection/Iterator$$anon$10;->remaining:I

    return v0
.end method

.method private remaining_$eq(I)V
    .locals 0

    .line 349
    iput p1, p0, Lscala/collection/Iterator$$anon$10;->remaining:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 350
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$10;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lscala/collection/Iterator$$anon$10;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$10;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$10;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$10;->remaining_$eq(I)V

    .line 354
    iget-object v0, p0, Lscala/collection/Iterator$$anon$10;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
