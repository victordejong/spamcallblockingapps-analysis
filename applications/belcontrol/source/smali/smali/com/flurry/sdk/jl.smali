.class public Lcom/flurry/sdk/jl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jl$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "jl"


# instance fields
.field public a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/jl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/jm;)V
    .locals 11

    const-string v0, "fl.OrderJSONSignature"

    const-string v1, "fl.OrderJSON"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x9

    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p1, Lcom/flurry/sdk/jm;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v5, p1, Lcom/flurry/sdk/jm;->b:J

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v5, p1, Lcom/flurry/sdk/jm;->c:J

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v5, p1, Lcom/flurry/sdk/jm;->d:J

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v6, p1, Lcom/flurry/sdk/jm;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v6, p1, Lcom/flurry/sdk/jm;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :goto_0
    iget-object v6, p1, Lcom/flurry/sdk/jm;->g:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v6, p1, Lcom/flurry/sdk/jm;->g:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :goto_1
    iget-object v6, p1, Lcom/flurry/sdk/jm;->h:Ljava/util/Map;

    if-nez v6, :cond_2

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v6, p1, Lcom/flurry/sdk/jm;->e:Ljava/util/Map;

    if-nez v6, :cond_4

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_5

    :cond_4
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v6, p1, Lcom/flurry/sdk/jm;->i:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/flurry/sdk/jm;->j:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v6, p1, Lcom/flurry/sdk/jm;->k:I

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v6, p1, Lcom/flurry/sdk/jm;->l:I

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v6, p1, Lcom/flurry/sdk/jm;->m:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/flurry/sdk/jm;->n:Landroid/location/Location;

    if-nez v6, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {}, Lcom/flurry/sdk/jx;->b()I

    move-result v6

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v8, p1, Lcom/flurry/sdk/jm;->n:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9, v6}, Lcom/flurry/sdk/md;->a(DI)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-object v8, p1, Lcom/flurry/sdk/jm;->n:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9, v6}, Lcom/flurry/sdk/md;->a(DI)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-object v8, p1, Lcom/flurry/sdk/jm;->n:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeFloat(F)V

    if-eq v6, v5, :cond_7

    const/4 v6, 0x1

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v6, p1, Lcom/flurry/sdk/jm;->o:I

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v5, p1, Lcom/flurry/sdk/jm;->p:B

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v5, p1, Lcom/flurry/sdk/jm;->q:Ljava/lang/Long;

    if-nez v5, :cond_8

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_8

    :cond_8
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v2, p1, Lcom/flurry/sdk/jm;->q:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    :goto_8
    iget-object v2, p1, Lcom/flurry/sdk/jm;->r:Ljava/util/Map;

    if-nez v2, :cond_9

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_a

    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/jh;

    iget v5, v5, Lcom/flurry/sdk/jh;->a:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_9

    :cond_a
    :goto_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p1, Lcom/flurry/sdk/jm;->s:Ljava/util/List;

    if-nez v5, :cond_b

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_c

    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/ji;

    invoke-virtual {v6}, Lcom/flurry/sdk/ji;->a()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v9, :cond_c

    if-eqz v10, :cond_c

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v8}, Lcom/flurry/sdk/ji;->b(Ljava/util/Map;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {v6}, Lcom/flurry/sdk/ji;->b()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_b

    :cond_d
    :goto_c
    iget-boolean v0, p1, Lcom/flurry/sdk/jm;->t:Z

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p1, Lcom/flurry/sdk/jm;->v:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/sdk/jg;

    invoke-virtual {v8}, Lcom/flurry/sdk/jg;->a()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v5, v8

    const v8, 0x27100

    if-le v5, v8, :cond_e

    const/4 v1, 0x5

    sget-object v5, Lcom/flurry/sdk/jl;->b:Ljava/lang/String;

    const-string v8, "Error Log size exceeded. No more event details logged."

    invoke-static {v1, v5, v8}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_f
    const/4 v6, 0x0

    :cond_10
    :goto_e
    iget p1, p1, Lcom/flurry/sdk/jm;->u:I

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p1, 0x0

    :goto_f
    if-ge p1, v6, :cond_11

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/jg;

    invoke-virtual {v1}, Lcom/flurry/sdk/jg;->a()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_11
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v1, v0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_10

    :cond_12
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/jl;->a:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_12

    :catch_0
    move-exception p1

    move-object v2, v4

    goto :goto_11

    :catchall_1
    move-exception p1

    goto :goto_12

    :catch_1
    move-exception p1

    :goto_11
    const/4 v0, 0x6

    :try_start_2
    sget-object v1, Lcom/flurry/sdk/jl;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v3, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_12
    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/jl;->a:[B

    return-void
.end method
