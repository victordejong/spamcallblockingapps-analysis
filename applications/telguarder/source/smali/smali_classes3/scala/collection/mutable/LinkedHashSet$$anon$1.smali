.class public final Lscala/collection/mutable/LinkedHashSet$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "LinkedHashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/LinkedHashSet;->iterator()Lscala/collection/Iterator;
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
.field private cur:Lscala/collection/mutable/LinkedHashSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/mutable/LinkedHashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedHashSet<",
            "TA;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 81
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedHashSet;->firstEntry()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet$$anon$1;->cur:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-void
.end method

.method private cur()Lscala/collection/mutable/LinkedHashSet$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashSet$$anon$1;->cur:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-object v0
.end method

.method private cur_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet$$anon$1;->cur:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 82
    invoke-direct {p0}, Lscala/collection/mutable/LinkedHashSet$$anon$1;->cur()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/LinkedHashSet$$anon$1;->cur()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedHashSet$Entry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/LinkedHashSet$$anon$1;->cur()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/LinkedHashSet$Entry;->later()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lscala/collection/mutable/LinkedHashSet$$anon$1;->cur_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
