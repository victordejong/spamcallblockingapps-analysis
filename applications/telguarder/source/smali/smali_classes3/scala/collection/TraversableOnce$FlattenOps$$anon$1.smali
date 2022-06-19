.class public final Lscala/collection/TraversableOnce$FlattenOps$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "TraversableOnce.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce$FlattenOps;->flatten()Lscala/collection/Iterator;
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
.field private it:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final its:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "Lscala/collection/TraversableOnce<",
            "TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce$FlattenOps;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce$FlattenOps<",
            "TA;>;)V"
        }
    .end annotation

    .line 459
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 460
    iget-object p1, p1, Lscala/collection/TraversableOnce$FlattenOps;->scala$collection$TraversableOnce$FlattenOps$$travs:Lscala/collection/TraversableOnce;

    invoke-interface {p1}, Lscala/collection/TraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->its:Lscala/collection/Iterator;

    .line 461
    sget-object p1, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {p1}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->it:Lscala/collection/Iterator;

    return-void
.end method

.method private it()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->it:Lscala/collection/Iterator;

    return-object v0
.end method

.method private it_$eq(Lscala/collection/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 461
    iput-object p1, p0, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->it:Lscala/collection/Iterator;

    return-void
.end method

.method private its()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/TraversableOnce<",
            "TA;>;>;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->its:Lscala/collection/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 462
    :goto_0
    invoke-direct {p0}, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->it()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->its()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->its()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->it_$eq(Lscala/collection/Iterator;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;->it()Lscala/collection/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
