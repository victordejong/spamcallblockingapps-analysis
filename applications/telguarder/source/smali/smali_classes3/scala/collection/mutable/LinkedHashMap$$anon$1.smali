.class public final Lscala/collection/mutable/LinkedHashMap$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "LinkedHashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/LinkedHashMap;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;"
    }
.end annotation


# instance fields
.field private cur:Lscala/collection/mutable/LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/mutable/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedHashMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 95
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedHashMap;->firstEntry()Lscala/collection/mutable/LinkedEntry;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/mutable/LinkedHashMap$$anon$1;->cur:Lscala/collection/mutable/LinkedEntry;

    return-void
.end method

.method private cur()Lscala/collection/mutable/LinkedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashMap$$anon$1;->cur:Lscala/collection/mutable/LinkedEntry;

    return-object v0
.end method

.method private cur_$eq(Lscala/collection/mutable/LinkedEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashMap$$anon$1;->cur:Lscala/collection/mutable/LinkedEntry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 96
    invoke-direct {p0}, Lscala/collection/mutable/LinkedHashMap$$anon$1;->cur()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap$$anon$1;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Tuple2;

    invoke-direct {p0}, Lscala/collection/mutable/LinkedHashMap$$anon$1;->cur()Lscala/collection/mutable/LinkedEntry;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/LinkedEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/LinkedHashMap$$anon$1;->cur()Lscala/collection/mutable/LinkedEntry;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/LinkedEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lscala/collection/mutable/LinkedHashMap$$anon$1;->cur()Lscala/collection/mutable/LinkedEntry;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/LinkedEntry;->later()Lscala/collection/mutable/LinkedEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lscala/collection/mutable/LinkedHashMap$$anon$1;->cur_$eq(Lscala/collection/mutable/LinkedEntry;)V

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    :goto_0
    return-object v0
.end method
