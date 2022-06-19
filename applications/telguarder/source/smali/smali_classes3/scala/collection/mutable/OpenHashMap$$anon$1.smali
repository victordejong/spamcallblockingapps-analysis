.class public final Lscala/collection/mutable/OpenHashMap$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "OpenHashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/OpenHashMap;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Lscala/Tuple2<",
        "TKey;TValue;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/OpenHashMap;

.field private index:I

.field private final initialModCount:I


# direct methods
.method public constructor <init>(Lscala/collection/mutable/OpenHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    .line 182
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->index:I

    .line 184
    iget p1, p1, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$modCount:I

    iput p1, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->initialModCount:I

    return-void
.end method

.method private advance()V
    .locals 2

    .line 187
    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->initialModCount()I

    move-result v0

    iget-object v1, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    iget v1, v1, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$modCount:I

    if-ne v0, v1, :cond_3

    .line 188
    :goto_0
    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->index()I

    move-result v0

    iget-object v1, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    invoke-virtual {v1}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    invoke-virtual {v0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->index()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    invoke-virtual {v0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->index()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object v0

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->index()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->index_$eq(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 187
    :cond_3
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Concurrent modification"

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method private index()I
    .locals 1

    .line 183
    iget v0, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->index:I

    return v0
.end method

.method private index_$eq(I)V
    .locals 0

    .line 183
    iput p1, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->index:I

    return-void
.end method

.method private initialModCount()I
    .locals 1

    .line 184
    iget v0, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->initialModCount:I

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 191
    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->advance()V

    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->index()I

    move-result v0

    iget-object v1, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    invoke-virtual {v1}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->advance()V

    .line 195
    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$$anon$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    invoke-virtual {v0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->index()I

    move-result v1

    aget-object v0, v0, v1

    .line 196
    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;->index()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/mutable/OpenHashMap$$anon$1;->index_$eq(I)V

    .line 197
    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
