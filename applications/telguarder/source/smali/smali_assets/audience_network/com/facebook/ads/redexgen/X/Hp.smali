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
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36997
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Hp;->A07:Z

    .line 36998
    if-eqz p2, :cond_1

    .line 36999
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

    .line 37000
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hp;->A03()Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    .line 37001
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

    .line 37002
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 37003
    .local p0, "e":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 37004
    .end local p0    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    xor-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 37005
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    .line 37006
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A06:Ljavax/crypto/spec/SecretKeySpec;

    .line 37007
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    .line 37008
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    .line 37009
    const/16 v2, 0x19

    const/16 v1, 0x18

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hz;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hz;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A03:Lcom/facebook/ads/redexgen/X/Hz;

    .line 37010
    return-void
.end method

.method public static A00(Landroid/util/SparseArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 37011
    .local v0, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 37012
    .local p0, "size":I
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 37013
    .local v2, "id":I
    :goto_0
    if-gez v1, :cond_0

    .line 37014
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 37015
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 37016
    :cond_0
    return v1

    .line 37017
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37018
    :cond_2
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;
    .locals 2

    .line 37019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A00(Landroid/util/SparseArray;)I

    move-result v0

    .line 37020
    .local p0, "id":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ho;

    invoke-direct {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ho;-><init>(ILjava/lang/String;)V

    .line 37021
    .local p1, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Hp;->A07(Lcom/facebook/ads/redexgen/X/Ho;)V

    .line 37022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    .line 37023
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

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4a

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

    .line 37024
    sget v4, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/4 v2, 0x3

    const/16 v1, 0x14

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x12

    if-ne v4, v0, :cond_0

    .line 37025
    :try_start_0
    const/16 v2, 0x17

    const/4 v1, 0x2

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37026
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

    .line 37027
    const/4 v3, 0x0

    .line 37028
    .local p0, "output":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A03:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A05()Ljava/io/OutputStream;

    move-result-object v1

    .line 37029
    .local v3, "outputStream":Ljava/io/OutputStream;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/IT;

    if-nez v0, :cond_0

    .line 37030
    new-instance v0, Lcom/facebook/ads/redexgen/X/IT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IT;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/IT;

    .line 37031
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/IT;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 37032
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 37033
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A07:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 37034
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A00:Lcom/facebook/ads/redexgen/X/IT;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IT;->A01(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 37035
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 37036
    .local v1, "flags":I
    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 37037
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A07:Z

    if-eqz v0, :cond_2

    .line 37038
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 37039
    .local v0, "initializationVector":[B
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 37040
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 37041
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37042
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

    .line 37043
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 37044
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

    .line 37045
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 37046
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "output":Ljava/io/DataOutputStream;
    throw v0

    .line 37047
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

    .line 37048
    const/4 v2, 0x0

    .line 37049
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

    .line 37050
    .local v1, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ho;->A0B(Ljava/io/DataOutputStream;)V

    .line 37051
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ho;->A04(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 37052
    .end local v1    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    goto :goto_5

    .line 37053
    :cond_3
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 37054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A03:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hz;->A07(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37055
    const/4 v0, 0x0

    .line 37056
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v1
    .end local v0    # "hashCode":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 37057
    return-void

    .line 37058
    :catch_2
    move-exception v1

    .line 37059
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hf;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hf;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "output":Ljava/io/DataOutputStream;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37060
    :catchall_0
    move-exception v0

    .end local v3    # "e":Ljava/io/IOException;
    .restart local p0    # "output":Ljava/io/DataOutputStream;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 37061
    throw v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hp;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x6at
        0x7ct
        0x59t
        0x5dt
        0x4bt
        0x37t
        0x5bt
        0x5at
        0x5bt
        0x37t
        0x48t
        0x53t
        0x5bt
        0x4bt
        0x2dt
        0x48t
        0x59t
        0x5ct
        0x5ct
        0x51t
        0x56t
        0x5ft
        0x5t
        0x4t
        0x34t
        0x36t
        0x34t
        0x3ft
        0x32t
        0x33t
        0x8t
        0x34t
        0x38t
        0x39t
        0x23t
        0x32t
        0x39t
        0x23t
        0x8t
        0x3et
        0x39t
        0x33t
        0x32t
        0x2ft
        0x79t
        0x32t
        0x2ft
        0x3et
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "S6LUeXYEJKyLfi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ap7OxdQXWc53Dlu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MeZISKO90NsMmf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SKAlk1mVNXQsaPXJ9ZsxeJBeB9GUognB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XgiehH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "knfITorrxuVzKnBtSR6mk9ymQv6SCyrp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "h7PhXMgo5zMKWRo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6uNXLpVh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hp;->A09:[Ljava/lang/String;

    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Ho;)V
    .locals 3

    .line 37062
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37063
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37064
    return-void
.end method

.method private A08()Z
    .locals 10

    .line 37065
    const/4 v4, 0x0

    .line 37066
    .local p0, "input":Ljava/io/DataInputStream;
    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A03:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A04()Ljava/io/InputStream;

    move-result-object v0

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37067
    .local v9, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 37068
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 37069
    .local v0, "version":I
    if-ltz v8, :cond_0

    const/4 v3, 0x2

    if-le v8, v3, :cond_1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37070
    .end local v0    # "version":I
    .end local v6
    .end local v0
    .end local v3
    .end local v0
    :cond_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 37071
    return v9

    .line 37072
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 37073
    .local v6, "flags":I
    and-int/lit8 v0, v0, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 37074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    if-nez v0, :cond_2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37075
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 37076
    return v9

    .line 37077
    :cond_2
    const/16 v0, 0x10

    :try_start_2
    new-array v0, v0, [B

    .line 37078
    .local v0, "initializationVector":[B
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 37079
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37080
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

    .line 37081
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A05:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v6, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    goto :goto_1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37082
    .restart local v0    # "initializationVector":[B
    .restart local v3    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 37083
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "input":Ljava/io/DataInputStream;
    throw v0

    .line 37084
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v0
    .end local v3    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local p0    # "input":Ljava/io/DataInputStream;
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A07:Z

    if-eqz v0, :cond_4

    .line 37085
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    .line 37086
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 37087
    .local v0, "count":I
    const/4 v3, 0x0

    .line 37088
    .local v0, "hashCode":I
    const/4 v6, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v6, v7, :cond_6

    .line 37089
    invoke-static {v8, v4}, Lcom/facebook/ads/redexgen/X/Ho;->A00(ILjava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    .line 37090
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A07(Lcom/facebook/ads/redexgen/X/Ho;)V

    .line 37091
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Ho;->A04(I)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    add-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hp;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_5

    goto :goto_3

    .line 37092
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hp;->A09:[Ljava/lang/String;

    const-string v1, "YpOcuY1WXnEJZ9G17AtcHa4RQFcQqy5V"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37093
    .end local v3    # "i":I
    :cond_6
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 37094
    .local v3, "fileHashCode":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 37095
    .local v0, "isEOF":Z
    :goto_4
    if-ne v2, v3, :cond_8

    if-nez v0, :cond_9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 37096
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "isEOF":Z
    .restart local v0    # "isEOF":Z
    .restart local v6    # "flags":I
    .restart local v0    # "isEOF":Z
    .restart local v3    # "fileHashCode":I
    .restart local v0    # "isEOF":Z
    :cond_8
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 37097
    return v9

    .line 37098
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v0    # "isEOF":Z
    .end local v0
    .end local v6    # "flags":I
    .end local v0
    .end local v3    # "fileHashCode":I
    .end local v0
    :cond_9
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 37099
    return v5

    .line 37100
    .end local v9
    .end local v0
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_a

    .line 37101
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 37102
    :cond_a
    throw v0

    .line 37103
    .local v9, "e":Ljava/io/IOException;
    :catch_2
    if-eqz v4, :cond_b

    .line 37104
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 37105
    :cond_b
    return v9
.end method


# virtual methods
.method public final A09(Ljava/lang/String;)I
    .locals 1

    .line 37106
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    return v0
.end method

.method public final A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;
    .locals 1

    .line 37107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ho;

    return-object v0
.end method

.method public final A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;
    .locals 1

    .line 37108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ho;

    .line 37109
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hr;
    .locals 1

    .line 37110
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    .line 37111
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ho;->A06()Lcom/facebook/ads/redexgen/X/Hr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Te;->A04:Lcom/facebook/ads/redexgen/X/Te;

    goto :goto_0
.end method

.method public final A0D(I)Ljava/lang/String;
    .locals 1

    .line 37112
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

    .line 37113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final A0F()V
    .locals 1

    .line 37114
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 37115
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hp;->A08()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A03:Lcom/facebook/ads/redexgen/X/Hz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hz;->A06()V

    .line 37117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 37118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 37119
    :cond_0
    return-void
.end method

.method public final A0G()V
    .locals 7

    .line 37120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 37121
    .local p0, "keys":[Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 37122
    array-length v5, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v6, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hp;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37123
    .local v6, "key":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hp;->A09:[Ljava/lang/String;

    const-string v1, "i9y8n6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hp;->A0I(Ljava/lang/String;)V

    .line 37124
    .end local v6    # "key":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37125
    :cond_1
    return-void
.end method

.method public final A0H()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 37126
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    if-nez v0, :cond_0

    .line 37127
    return-void

    .line 37128
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hp;->A04()V

    .line 37129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    .line 37130
    return-void
.end method

.method public final A0I(Ljava/lang/String;)V
    .locals 3

    .line 37131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ho;

    .line 37132
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ho;->A0D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ho;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37134
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hp;->A02:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 37135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    .line 37136
    :cond_0
    return-void
.end method

.method public final A0J(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ht;)V
    .locals 1

    .line 37137
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Hp;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ho;

    move-result-object v0

    .line 37138
    .local p0, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Ho;->A0G(Lcom/facebook/ads/redexgen/X/Ht;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hp;->A01:Z

    .line 37140
    :cond_0
    return-void
.end method
