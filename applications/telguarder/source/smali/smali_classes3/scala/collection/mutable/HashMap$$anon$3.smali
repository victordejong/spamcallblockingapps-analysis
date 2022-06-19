.class public final Lscala/collection/mutable/HashMap$$anon$3;
.super Lscala/collection/AbstractIterator;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/HashMap;->keysIterator()Lscala/collection/Iterator;
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
.field private final iter:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/mutable/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 113
    invoke-virtual {p1}, Lscala/collection/mutable/HashMap;->entriesIterator()Lscala/collection/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/mutable/HashMap$$anon$3;->iter:Lscala/collection/Iterator;

    return-void
.end method

.method private iter()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lscala/collection/mutable/HashMap$$anon$3;->iter:Lscala/collection/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 114
    invoke-direct {p0}, Lscala/collection/mutable/HashMap$$anon$3;->iter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lscala/collection/mutable/HashMap$$anon$3;->iter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DefaultEntry;

    invoke-virtual {v0}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
