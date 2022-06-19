.class public final Lscala/collection/mutable/FlatHashTable$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "FlatHashTable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/FlatHashTable;->iterator()Lscala/collection/Iterator;
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
.field private final synthetic $outer:Lscala/collection/mutable/FlatHashTable;

.field private i:I


# direct methods
.method public constructor <init>(Lscala/collection/mutable/FlatHashTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable<",
            "TA;>;)V"
        }
    .end annotation

    .line 204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/FlatHashTable$$anon$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p1, 0x0

    .line 205
    iput p1, p0, Lscala/collection/mutable/FlatHashTable$$anon$1;->i:I

    return-void
.end method

.method private i()I
    .locals 1

    .line 205
    iget v0, p0, Lscala/collection/mutable/FlatHashTable$$anon$1;->i:I

    return v0
.end method

.method private i_$eq(I)V
    .locals 0

    .line 205
    iput p1, p0, Lscala/collection/mutable/FlatHashTable$$anon$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 207
    :goto_0
    invoke-direct {p0}, Lscala/collection/mutable/FlatHashTable$$anon$1;->i()I

    move-result v0

    iget-object v1, p0, Lscala/collection/mutable/FlatHashTable$$anon$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v1}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$$anon$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/FlatHashTable$$anon$1;->i()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/FlatHashTable$$anon$1;->i()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lscala/collection/mutable/FlatHashTable$$anon$1;->i_$eq(I)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/FlatHashTable$$anon$1;->i()I

    move-result v0

    iget-object v1, p0, Lscala/collection/mutable/FlatHashTable$$anon$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v1}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lscala/collection/mutable/FlatHashTable$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/FlatHashTable$$anon$1;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/FlatHashTable$$anon$1;->i_$eq(I)V

    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$$anon$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/FlatHashTable$$anon$1;->i()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lscala/collection/mutable/FlatHashTable;->entryToElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
