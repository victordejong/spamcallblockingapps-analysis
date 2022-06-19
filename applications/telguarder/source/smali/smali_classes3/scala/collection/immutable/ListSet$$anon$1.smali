.class public final Lscala/collection/immutable/ListSet$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "ListSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/ListSet;->iterator()Lscala/collection/Iterator;
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
.field private that:Lscala/collection/immutable/ListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/ListSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 118
    iput-object p1, p0, Lscala/collection/immutable/ListSet$$anon$1;->that:Lscala/collection/immutable/ListSet;

    return-void
.end method

.method private that()Lscala/collection/immutable/ListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lscala/collection/immutable/ListSet$$anon$1;->that:Lscala/collection/immutable/ListSet;

    return-object v0
.end method

.method private that_$eq(Lscala/collection/immutable/ListSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;)V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lscala/collection/immutable/ListSet$$anon$1;->that:Lscala/collection/immutable/ListSet;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 119
    invoke-direct {p0}, Lscala/collection/immutable/ListSet$$anon$1;->that()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->nonEmpty()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lscala/collection/immutable/ListSet$$anon$1;->that()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->head()Ljava/lang/Object;

    move-result-object v0

    .line 123
    invoke-direct {p0}, Lscala/collection/immutable/ListSet$$anon$1;->that()Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/ListSet;->tail()Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-direct {p0, v1}, Lscala/collection/immutable/ListSet$$anon$1;->that_$eq(Lscala/collection/immutable/ListSet;)V

    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
