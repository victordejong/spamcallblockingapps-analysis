.class final Lcom/google/android/exoplayer2/upstream/cache/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljavax/crypto/Cipher;

.field private final c:Ljavax/crypto/spec/SecretKeySpec;

.field private final d:Ljava/security/SecureRandom;

.field private final e:Lcom/google/android/exoplayer2/util/b;

.field private f:Z

.field private g:Lcom/google/android/exoplayer2/util/x;


# direct methods
.method public constructor <init>(Ljava/io/File;[BZ)V
    .locals 5

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 521
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 525
    array-length v3, p2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 1071
    :try_start_0
    invoke-static {}, Lcom/google/android/exoplayer2/upstream/cache/i;->d()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 528
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 530
    :goto_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    xor-int/lit8 p2, p3, 0x1

    .line 533
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    move-object v0, v2

    move-object v1, v0

    .line 535
    :goto_3
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->a:Z

    .line 536
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->b:Ljavax/crypto/Cipher;

    .line 537
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p3, :cond_4

    .line 538
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    :cond_4
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->d:Ljava/security/SecureRandom;

    .line 539
    new-instance p2, Lcom/google/android/exoplayer2/util/b;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/util/b;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->e:Lcom/google/android/exoplayer2/util/b;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/upstream/cache/h;I)I
    .locals 3

    .line 700
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 701
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 3068
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    .line 703
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/j$-CC;->a(Lcom/google/android/exoplayer2/upstream/cache/j;)J

    move-result-wide p0

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    xor-long/2addr p0, v1

    long-to-int p1, p0

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 4068
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    .line 706
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/l;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method private b(Ljava/util/HashMap;Landroid/util/SparseArray;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/h;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v1, p0

    .line 594
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/i$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b;->a()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 600
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/cache/i$b;->e:Lcom/google/android/exoplayer2/util/b;

    .line 2151
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/b;->b:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2152
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/b;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2153
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/b;->b:Ljava/io/File;

    iget-object v7, v5, Lcom/google/android/exoplayer2/util/b;->a:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2147
    :cond_1
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/b;->a:Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 600
    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 601
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 602
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-ltz v3, :cond_b

    const/4 v6, 0x2

    if-le v3, v6, :cond_2

    goto/16 :goto_6

    .line 607
    :cond_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    and-int/2addr v7, v2

    if-eqz v7, :cond_4

    .line 609
    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/cache/i$b;->b:Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_3

    .line 642
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V

    return v4

    :cond_3
    const/16 v7, 0x10

    :try_start_2
    new-array v7, v7, [B

    .line 613
    invoke-virtual {v5, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 614
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 616
    :try_start_3
    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/cache/i$b;->b:Ljavax/crypto/Cipher;

    iget-object v9, v1, Lcom/google/android/exoplayer2/upstream/cache/i$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Key;

    invoke-virtual {v7, v6, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 620
    :try_start_4
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v8, Ljavax/crypto/CipherInputStream;

    iget-object v9, v1, Lcom/google/android/exoplayer2/upstream/cache/i$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v8, v0, v9}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v7

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 618
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 621
    :cond_4
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/upstream/cache/i$b;->a:Z

    if-eqz v0, :cond_5

    .line 622
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/upstream/cache/i$b;->f:Z

    .line 625
    :cond_5
    :goto_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v0, :cond_7

    .line 2719
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 2720
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    if-ge v3, v6, :cond_6

    .line 2723
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    .line 2724
    new-instance v13, Lcom/google/android/exoplayer2/upstream/cache/k;

    invoke-direct {v13}, Lcom/google/android/exoplayer2/upstream/cache/k;-><init>()V

    const-string v14, "exo_len"

    .line 3046
    invoke-virtual {v13, v14, v11, v12}, Lcom/google/android/exoplayer2/upstream/cache/k;->a(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/k;

    .line 2726
    sget-object v11, Lcom/google/android/exoplayer2/upstream/cache/l;->a:Lcom/google/android/exoplayer2/upstream/cache/l;

    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/upstream/cache/l;->a(Lcom/google/android/exoplayer2/upstream/cache/k;)Lcom/google/android/exoplayer2/upstream/cache/l;

    move-result-object v11

    goto :goto_3

    .line 2728
    :cond_6
    invoke-static {v5}, Lcom/google/android/exoplayer2/upstream/cache/i;->a(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/l;

    move-result-object v11

    .line 2730
    :goto_3
    new-instance v12, Lcom/google/android/exoplayer2/upstream/cache/h;

    invoke-direct {v12, v9, v10, v11}, Lcom/google/android/exoplayer2/upstream/cache/h;-><init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/l;)V

    .line 629
    iget-object v9, v12, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    move-object/from16 v10, p1

    invoke-virtual {v10, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget v9, v12, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    iget-object v11, v12, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    move-object/from16 v13, p2

    invoke-virtual {v13, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    invoke-static {v12, v3}, Lcom/google/android/exoplayer2/upstream/cache/i$b;->a(Lcom/google/android/exoplayer2/upstream/cache/h;I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 633
    :cond_7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 634
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    if-ne v0, v8, :cond_a

    if-nez v3, :cond_9

    goto :goto_5

    .line 642
    :cond_9
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V

    return v2

    :cond_a
    :goto_5
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V

    return v4

    :cond_b
    :goto_6
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V

    return v4

    :catchall_0
    move-exception v0

    move-object v3, v5

    goto :goto_7

    :catch_2
    move-object v3, v5

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v3, :cond_c

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V

    .line 644
    :cond_c
    throw v0

    :catch_3
    nop

    :goto_8
    if-eqz v3, :cond_d

    .line 642
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V

    :cond_d
    return v4
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/cache/h;)V
    .locals 0

    const/4 p1, 0x1

    .line 584
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->f:Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/cache/h;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 589
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->f:Z

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/h;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1651
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/b;->c()Ljava/io/OutputStream;

    move-result-object v1

    .line 1652
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->g:Lcom/google/android/exoplayer2/util/x;

    if-nez v2, :cond_0

    .line 1653
    new-instance v2, Lcom/google/android/exoplayer2/util/x;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/util/x;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->g:Lcom/google/android/exoplayer2/util/x;

    goto :goto_0

    .line 1655
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/x;->a(Ljava/io/OutputStream;)V

    .line 1657
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->g:Lcom/google/android/exoplayer2/util/x;

    .line 1658
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x2

    .line 1659
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1661
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->a:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1662
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1664
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->a:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 1666
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->d:Ljava/security/SecureRandom;

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/SecureRandom;

    invoke-virtual {v7, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1667
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 1668
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    :try_start_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->b:Ljavax/crypto/Cipher;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 1671
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Key;

    invoke-virtual {v4, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1675
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1676
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Ljavax/crypto/CipherOutputStream;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v5, v1, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1673
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1679
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1681
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/cache/h;

    .line 1741
    iget v5, v4, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1742
    iget-object v5, v4, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2068
    iget-object v5, v4, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    .line 1743
    invoke-static {v5, v2}, Lcom/google/android/exoplayer2/upstream/cache/i;->a(Lcom/google/android/exoplayer2/upstream/cache/l;Ljava/io/DataOutputStream;)V

    .line 1683
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/upstream/cache/i$b;->a(Lcom/google/android/exoplayer2/upstream/cache/h;I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_4

    .line 1685
    :cond_3
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1686
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->e:Lcom/google/android/exoplayer2/util/b;

    .line 2132
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 2134
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/b;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1691
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V

    .line 571
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->f:Z

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 1691
    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/Closeable;)V

    .line 1692
    throw p1
.end method

.method public final a(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/h;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 560
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->f:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 561
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/i$b;->b(Ljava/util/HashMap;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 563
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 564
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b;->b()V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b;->a()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->e:Lcom/google/android/exoplayer2/util/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b;->b()V

    return-void
.end method

.method public final b(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/h;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i$b;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/i$b;->a(Ljava/util/HashMap;)V

    return-void
.end method
