.class final Lcom/google/android/exoplayer2/upstream/cache/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/i$a;,
        Lcom/google/android/exoplayer2/upstream/cache/i$b;,
        Lcom/google/android/exoplayer2/upstream/cache/i$c;
    }
.end annotation


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/h;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

.field d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

.field private final e:Landroid/util/SparseBooleanArray;

.field private final f:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/database/a;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/i;-><init>(Lcom/google/android/exoplayer2/database/a;Ljava/io/File;[BZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/database/a;Ljava/io/File;[BZZ)V
    .locals 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 163
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->b:Landroid/util/SparseArray;

    .line 166
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->e:Landroid/util/SparseBooleanArray;

    .line 167
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->f:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 170
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/i$a;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/i$a;-><init>(Lcom/google/android/exoplayer2/database/a;)V

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-eqz p2, :cond_3

    .line 174
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/i$b;

    new-instance p1, Ljava/io/File;

    const-string v2, "cached_content_index.exi"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/i$b;-><init>(Ljava/io/File;[BZ)V

    :cond_3
    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    if-eqz p5, :cond_4

    goto :goto_3

    .line 183
    :cond_4
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    .line 184
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    return-void

    .line 180
    :cond_5
    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/i$c;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    .line 181
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    return-void
.end method

.method static synthetic a(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/l;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3390
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 3391
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 3393
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 3394
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-ltz v5, :cond_1

    const/high16 v6, 0xa00000

    .line 3402
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3403
    sget-object v8, Lcom/google/android/exoplayer2/util/af;->f:[B

    const/4 v9, 0x0

    :goto_1
    if-eq v9, v5, :cond_0

    add-int v10, v9, v7

    .line 3405
    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    .line 3406
    invoke-virtual {p0, v8, v9, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    sub-int v7, v5, v10

    .line 3408
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v9, v10

    goto :goto_1

    .line 3410
    :cond_0
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3396
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid value size: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3412
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/upstream/cache/l;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/l;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/cache/l;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4063
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/l;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 3424
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3425
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3426
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 3427
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3428
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3429
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static d()Ljavax/crypto/Cipher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 351
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const-string v1, "AES/CBC/PKCS5PADDING"

    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    :try_start_0
    const-string v0, "BC"

    .line 353
    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 358
    :catchall_0
    :cond_0
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;
    .locals 5

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/h;

    if-nez v0, :cond_3

    .line 1339
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->b:Landroid/util/SparseArray;

    .line 1368
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 1369
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    add-int/2addr v4, v3

    :goto_0
    if-gez v4, :cond_2

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1373
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1340
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-direct {v0, v4, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;-><init>(ILjava/lang/String;)V

    .line 1341
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1343
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1344
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->a(Lcom/google/android/exoplayer2/upstream/cache/h;)V

    :cond_3
    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->b(Ljava/util/HashMap;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->e:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 229
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->b:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->e:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->e:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/h;

    return-object p1
.end method

.method public final b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/upstream/cache/h;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/i;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    return p1
.end method

.method public final c()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Ljava/util/Collection;)Lcom/google/common/collect/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/z;->a()Lcom/google/common/collect/ay;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/i;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/h;

    if-eqz v0, :cond_1

    .line 2242
    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3084
    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget p1, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    .line 288
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 289
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->a(Lcom/google/android/exoplayer2/upstream/cache/h;Z)V

    if-eqz v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i;->e:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    return-void
.end method
