.class public final Lcom/facebook/ads/redexgen/X/Hp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/IT;

.field public A01:Z

.field public final A02:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/Hz;

.field public final A04:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Ho;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljavax/crypto/Cipher;

.field public final A06:Ljavax/crypto/spec/SecretKeySpec;

.field public final A07:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hp;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hp;->A05()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[BZ)V
    .locals 3

    .line 36821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36822
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Hp;->A07:Z

    .line 36823
    if-eqz p2, :cond_1

    .line 36824
    array-length v1, p2

    const/16 v0, 0x10

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 36825
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hp;->A03()Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    .line 36826
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A06:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36827
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 36828
    .local p0, "e":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 36829
    .end local p0    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    xor-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 36830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    .line 36831
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A06:Ljavax/crypto/spec/SecretKeySpec;

    .line 36832
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    .line 36833
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    .line 36834
    const/16 v2, 0x19

    const/16 v1, 0x18

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hz;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hz;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A03:Lcom/facebook/ads/redexgen/X/Hz;

    .line 36835
    return-void
.end method

.method public static A00(Landroid/util/SparseArray;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 36836
    .local v0, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 36837
    .local p0, "size":I
    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 36838
    .local v3, "id":I
    :goto_0
    if-gez v1, :cond_0

    .line 36839
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 36840
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 36841
    :cond_0
    return v1

    .line 36842
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36843
    :cond_2
    add-int/lit8 v4, v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hp;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hp;->A09:[Ljava/lang/String;

    const-string v1, "GpSMRVwbmVnvoZI5Ggc91zVjP9Ti"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "f9953PfVQawIaiCUJ4cnumBLGdw9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;
    .locals 2

    .line 36844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A00(Landroid/util/SparseArray;)I

    move-result v0

    .line 36845
    .local p0, "id":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ho;

    invoke-direct {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ho;-><init>(ILjava/lang/String;)V

    .line 36846
    .local p1, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Hp;->A07(Lcom/facebook/ads/redexgen/X/Ho;)V

    .line 36847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    .line 36848
    return-object v1
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hp;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x74

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()Ljavax/crypto/Cipher;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 36849
    sget v4, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/4 v2, 0x3

    const/16 v1, 0x14

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x12

    if-ne v4, v0, :cond_0

    .line 36850
    :try_start_0
    const/16 v2, 0x17

    const/4 v1, 0x2

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36851
    :catchall_0
    :cond_0
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method private A04()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 36852
    const/4 v3, 0x0

    .line 36853
    .local p0, "output":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A03:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A05()Ljava/io/OutputStream;

    move-result-object v1

    .line 36854
    .local v3, "outputStream":Ljava/io/OutputStream;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/IT;

    if-nez v0, :cond_0

    .line 36855
    new-instance v0, Lcom/facebook/ads/redexgen/X/IT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IT;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/IT;

    .line 36856
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/IT;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 36857
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36858
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A07:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 36859
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/IT;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IT;->A00(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 36860
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 36861
    .local v1, "flags":I
    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36862
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A07:Z

    if-eqz v0, :cond_2

    .line 36863
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 36864
    .local v0, "initializationVector":[B
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 36865
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 36866
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36867
    .local v1, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A06:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v5, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36868
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 36869
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/IT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, v2, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    goto :goto_4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36870
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 36871
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "output":Ljava/io/DataOutputStream;
    throw v0

    .line 36872
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v0
    .end local v1    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local p0    # "output":Ljava/io/DataOutputStream;
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36873
    const/4 v2, 0x0

    .line 36874
    .local v0, "hashCode":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ho;

    .line 36875
    .local v1, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ho;->A0B(Ljava/io/DataOutputStream;)V

    .line 36876
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ho;->A04(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 36877
    .end local v1    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    goto :goto_5

    .line 36878
    :cond_3
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A03:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hz;->A07(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36880
    const/4 v0, 0x0

    .line 36881
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v1
    .end local v0    # "hashCode":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 36882
    return-void

    .line 36883
    :catch_2
    move-exception v1

    .line 36884
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hf;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hf;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "output":Ljava/io/DataOutputStream;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36885
    :catchall_0
    move-exception v0

    .end local v3    # "e":Ljava/io/IOException;
    .restart local p0    # "output":Ljava/io/DataOutputStream;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 36886
    throw v0
.end method

.method public static A05()V
    .locals 4

    const/16 v3, 0x31

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hp;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hp;->A09:[Ljava/lang/String;

    const-string v1, "3hiG2MwLP1vY28w2jyIZHTbcKAlMPBPZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "9NEv2gVVsGFA2BwX54IQqGQXEg3TAXQS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hp;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x1at
        0x1et
        0x2ct
        0x20t
        0x24t
        0x32t
        0xet
        0x22t
        0x21t
        0x22t
        0xet
        0x2ft
        0x2at
        0x22t
        0x32t
        0x14t
        0x2ft
        0x20t
        0x23t
        0x23t
        0x28t
        0x2dt
        0x26t
        -0x30t
        -0x2ft
        0x1at
        0x18t
        0x1at
        0x1ft
        0x1ct
        0x1bt
        0x16t
        0x1at
        0x26t
        0x25t
        0x2bt
        0x1ct
        0x25t
        0x2bt
        0x16t
        0x20t
        0x25t
        0x1bt
        0x1ct
        0x2ft
        -0x1bt
        0x1ct
        0x2ft
        0x20t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XONorMmEkuhCG9piVxKUh1vkXNNJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9nfZq9rsOYHCIqBCRPzuDpg7UYzPD2Yl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Yz44fu3QSKzu2i5DyXETxtSOt38Z3WJk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HOY3mHCHBdW1ht"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XI2xTZ9JkVa2GEn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4OCnssyPGh2MUqheTrzmDcc0Epkw2MIq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4Z9FwJdzaIh4z0baUKFOBcRAp1yx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rZsSxCWfylE928lHlC5xkXC43RMRLxAb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hp;->A09:[Ljava/lang/String;

    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Ho;)V
    .locals 3

    .line 36887
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36888
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36889
    return-void
.end method

.method private A08()Z
    .locals 9

    .line 36890
    const/4 v4, 0x0

    .line 36891
    .local p0, "input":Ljava/io/DataInputStream;
    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A03:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A04()Ljava/io/InputStream;

    move-result-object v0

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36892
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 36893
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 36894
    .local v0, "version":I
    if-ltz v6, :cond_0

    const/4 v3, 0x2

    if-le v6, v3, :cond_1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36895
    .end local v0    # "version":I
    .end local v7
    .end local v0
    .end local v3
    .end local v0
    :cond_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 36896
    return v8

    .line 36897
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 36898
    .local v7, "flags":I
    and-int/lit8 v0, v0, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 36899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    if-nez v0, :cond_2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36900
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 36901
    return v8

    .line 36902
    :cond_2
    const/16 v0, 0x10

    :try_start_2
    new-array v0, v0, [B

    .line 36903
    .local v0, "initializationVector":[B
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 36904
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36905
    .local v3, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A06:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36906
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v7, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    goto :goto_1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36907
    .restart local v0    # "initializationVector":[B
    .restart local v3    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 36908
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "input":Ljava/io/DataInputStream;
    throw v0

    .line 36909
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v0
    .end local v3    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local p0    # "input":Ljava/io/DataInputStream;
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A07:Z

    if-eqz v0, :cond_4

    .line 36910
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    .line 36911
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 36912
    .local v0, "count":I
    const/4 v3, 0x0

    .line 36913
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 36914
    invoke-static {v6, v4}, Lcom/facebook/ads/redexgen/X/Ho;->A00(ILjava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    .line 36915
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A07(Lcom/facebook/ads/redexgen/X/Ho;)V

    .line 36916
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Ho;->A04(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 36917
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36918
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 36919
    .local v3, "fileHashCode":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 36920
    .local v0, "isEOF":Z
    :goto_3
    if-ne v2, v3, :cond_7

    if-nez v0, :cond_8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 36921
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "isEOF":Z
    .restart local v0    # "isEOF":Z
    .restart local v7    # "flags":I
    .restart local v0    # "isEOF":Z
    .restart local v3    # "fileHashCode":I
    .restart local v0    # "isEOF":Z
    :cond_7
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 36922
    return v8

    .line 36923
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v0    # "isEOF":Z
    .end local v0
    .end local v7    # "flags":I
    .end local v0
    .end local v3    # "fileHashCode":I
    .end local v0
    :cond_8
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 36924
    return v5

    .line 36925
    .end local v8
    .end local v0
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_9

    .line 36926
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 36927
    :cond_9
    throw v0

    .line 36928
    .local v8, "e":Ljava/io/IOException;
    :catch_2
    if-eqz v4, :cond_a

    .line 36929
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 36930
    :cond_a
    return v8
.end method


# virtual methods
.method public final A09(Ljava/lang/String;)I
    .locals 1

    .line 36931
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    return v0
.end method

.method public final A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;
    .locals 1

    .line 36932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ho;

    return-object v0
.end method

.method public final A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;
    .locals 1

    .line 36933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ho;

    .line 36934
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hr;
    .locals 1

    .line 36935
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    .line 36936
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ho;->A06()Lcom/facebook/ads/redexgen/X/Hr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/bc;->A04:Lcom/facebook/ads/redexgen/X/bc;

    goto :goto_0
.end method

.method public final A0D(I)Ljava/lang/String;
    .locals 1

    .line 36937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0E()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/Ho;",
            ">;"
        }
    .end annotation

    .line 36938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final A0F()V
    .locals 1

    .line 36939
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 36940
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hp;->A08()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A03:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A06()V

    .line 36942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 36943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 36944
    :cond_0
    return-void
.end method

.method public final A0G()V
    .locals 4

    .line 36945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 36946
    .local p0, "keys":[Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36947
    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 36948
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0I(Ljava/lang/String;)V

    .line 36949
    .end local v3    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36950
    :cond_0
    return-void
.end method

.method public final A0H()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 36951
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    if-nez v0, :cond_0

    .line 36952
    return-void

    .line 36953
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hp;->A04()V

    .line 36954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    .line 36955
    return-void
.end method

.method public final A0I(Ljava/lang/String;)V
    .locals 3

    .line 36956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ho;

    .line 36957
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ho;->A0D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ho;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36959
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 36960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    .line 36961
    :cond_0
    return-void
.end method

.method public final A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ht;)V
    .locals 1

    .line 36962
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    .line 36963
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Ho;->A0G(Lcom/facebook/ads/redexgen/X/Ht;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    .line 36965
    :cond_0
    return-void
.end method
