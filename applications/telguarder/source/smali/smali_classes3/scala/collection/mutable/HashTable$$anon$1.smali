.class public final Lscala/collection/mutable/HashTable$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "HashTable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/HashTable;->entriesIterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TEntry;>;"
    }
.end annotation


# instance fields
.field private es:Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/HashEntry<",
            "TA;TEntry;>;"
        }
    .end annotation
.end field

.field private idx:I

.field private final iterTable:[Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/HashEntry<",
            "TA;TEntry;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/mutable/HashTable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable<",
            "TA;TEntry;>;)V"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 207
    invoke-interface {p1}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/mutable/HashTable$$anon$1;->iterTable:[Lscala/collection/mutable/HashEntry;

    .line 208
    invoke-static {p1}, Lscala/collection/mutable/HashTable$class;->scala$collection$mutable$HashTable$$lastPopulatedIndex(Lscala/collection/mutable/HashTable;)I

    move-result p1

    iput p1, p0, Lscala/collection/mutable/HashTable$$anon$1;->idx:I

    .line 209
    invoke-direct {p0}, Lscala/collection/mutable/HashTable$$anon$1;->iterTable()[Lscala/collection/mutable/HashEntry;

    move-result-object p1

    invoke-direct {p0}, Lscala/collection/mutable/HashTable$$anon$1;->idx()I

    move-result v0

    aget-object p1, p1, v0

    iput-object p1, p0, Lscala/collection/mutable/HashTable$$anon$1;->es:Lscala/collection/mutable/HashEntry;

    return-void
.end method

.method private es()Lscala/collection/mutable/HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashEntry<",
            "TA;TEntry;>;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lscala/collection/mutable/HashTable$$anon$1;->es:Lscala/collection/mutable/HashEntry;

    return-object v0
.end method

.method private es_$eq(Lscala/collection/mutable/HashEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashEntry<",
            "TA;TEntry;>;)V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lscala/collection/mutable/HashTable$$anon$1;->es:Lscala/collection/mutable/HashEntry;

    return-void
.end method

.method private idx()I
    .locals 1

    .line 208
    iget v0, p0, Lscala/collection/mutable/HashTable$$anon$1;->idx:I

    return v0
.end method

.method private idx_$eq(I)V
    .locals 0

    .line 208
    iput p1, p0, Lscala/collection/mutable/HashTable$$anon$1;->idx:I

    return-void
.end method

.method private iterTable()[Lscala/collection/mutable/HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry<",
            "TA;TEntry;>;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lscala/collection/mutable/HashTable$$anon$1;->iterTable:[Lscala/collection/mutable/HashEntry;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 211
    invoke-direct {p0}, Lscala/collection/mutable/HashTable$$anon$1;->es()Lscala/collection/mutable/HashEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lscala/collection/mutable/HashTable$$anon$1;->next()Lscala/collection/mutable/HashEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/collection/mutable/HashEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntry;"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lscala/collection/mutable/HashTable$$anon$1;->es()Lscala/collection/mutable/HashEntry;

    move-result-object v0

    .line 214
    invoke-direct {p0}, Lscala/collection/mutable/HashTable$$anon$1;->es()Lscala/collection/mutable/HashEntry;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/HashEntry;

    invoke-direct {p0, v1}, Lscala/collection/mutable/HashTable$$anon$1;->es_$eq(Lscala/collection/mutable/HashEntry;)V

    .line 215
    :goto_0
    invoke-direct {p0}, Lscala/collection/mutable/HashTable$$anon$1;->es()Lscala/collection/mutable/HashEntry;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/HashTable$$anon$1;->idx()I

    move-result v1

    if-lez v1, :cond_0

    .line 216
    invoke-direct {p0}, Lscala/collection/mutable/HashTable$$anon$1;->idx()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lscala/collection/mutable/HashTable$$anon$1;->idx_$eq(I)V

    .line 217
    invoke-direct {p0}, Lscala/collection/mutable/HashTable$$anon$1;->iterTable()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/HashTable$$anon$1;->idx()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lscala/collection/mutable/HashTable$$anon$1;->es_$eq(Lscala/collection/mutable/HashEntry;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
