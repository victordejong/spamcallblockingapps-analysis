.class public final Lcom/facebook/ads/redexgen/X/6y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StringFormatUse",
        "SharedPreferencesUse"
    }
.end annotation


# static fields
.field public static A01:Lcom/facebook/ads/redexgen/X/6y;

.field public static A02:[B


# instance fields
.field public final A00:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6y;->A03()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6i;Ljava/lang/String;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 15835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6y;->A00:Ljava/util/HashMap;

    .line 15837
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6y;->A04(Landroid/content/Context;)V

    .line 15838
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6i;->A05()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0G:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6i;->A05()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 15839
    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/6y;->A05(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15840
    :catchall_0
    move-exception v0

    .line 15841
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V

    .line 15842
    .end local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6i;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6y;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15843
    sget-object v0, Lcom/facebook/ads/redexgen/X/6y;->A01:Lcom/facebook/ads/redexgen/X/6y;

    if-nez v0, :cond_0

    .line 15844
    new-instance v0, Lcom/facebook/ads/redexgen/X/6y;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6y;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6i;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6y;->A01:Lcom/facebook/ads/redexgen/X/6y;

    .line 15845
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6y;->A01:Lcom/facebook/ads/redexgen/X/6y;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6y;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02([B)Ljava/lang/String;
    .locals 8

    .line 15846
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 15847
    .local p0, "sb":Ljava/lang/StringBuilder;
    array-length v6, p0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v1, p0, v4

    .line 15848
    .local v4, "b":B
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15849
    .end local v4    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15850
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6y;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x43t
        0x4et
        0x50t
        -0x6at
    .end array-data
.end method

.method private A04(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15851
    const/4 v3, 0x0

    .line 15852
    .local p0, "fis":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 15853
    .local p1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 15854
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15855
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v3, v0

    .line 15856
    sget-object v0, Lcom/facebook/ads/redexgen/X/71;->A03:Lcom/facebook/ads/redexgen/X/71;

    .line 15857
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/71;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 15858
    .local v0, "messageDigestMD5":Ljava/security/MessageDigest;
    sget-object v0, Lcom/facebook/ads/redexgen/X/71;->A04:Lcom/facebook/ads/redexgen/X/71;

    .line 15859
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/71;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 15860
    .local v0, "messageDigestSHA1":Ljava/security/MessageDigest;
    sget-object v0, Lcom/facebook/ads/redexgen/X/71;->A05:Lcom/facebook/ads/redexgen/X/71;

    .line 15861
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/71;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 15862
    .local v0, "messageDigestSHA256":Ljava/security/MessageDigest;
    new-array v2, v1, [B

    .line 15863
    .local v1, "buffer":[B
    :cond_0
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 15864
    .local v2, "numRead":I
    if-lez v1, :cond_1

    .line 15865
    invoke-virtual {v6, v2, v7, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 15866
    invoke-virtual {v5, v2, v7, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 15867
    invoke-virtual {v4, v2, v7, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 15868
    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 15869
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6y;->A00:Ljava/util/HashMap;

    const/16 v0, 0x2713

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6y;->A02([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15870
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6y;->A00:Ljava/util/HashMap;

    const/16 v0, 0x2714

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6y;->A02([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15871
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6y;->A00:Ljava/util/HashMap;

    const/16 v0, 0x2715

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6y;->A02([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15872
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v0    # "messageDigestSHA256":Ljava/security/MessageDigest;
    .end local v7
    .end local v0
    .end local v0
    .end local v1    # "buffer":[B
    .end local v0
    .end local v2    # "numRead":I
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 15873
    return-void

    .line 15874
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    .line 15875
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 15876
    :cond_2
    throw v0
.end method

.method private A05(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15877
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15878
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/6y;
    .end local p1    # null:Landroid/content/Context;
    :cond_0
    return-void

    .line 15879
    .local p0, "BUFFER_SIZE":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x400

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 15880
    .local p1, "fis":Ljava/io/InputStream;
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/71;->A03:Lcom/facebook/ads/redexgen/X/71;

    .line 15881
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/71;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 15882
    .local p2, "messageDigestMD5":Ljava/security/MessageDigest;
    new-array v2, v1, [B

    .line 15883
    .local v0, "buffer":[B
    :cond_2
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 15884
    .local v0, "numRead":I
    if-lez v1, :cond_3

    .line 15885
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 15886
    :cond_3
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 15887
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6y;->A00:Ljava/util/HashMap;

    const/16 v0, 0x271a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6y;->A02([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15888
    .end local p2    # "messageDigestMD5":Ljava/security/MessageDigest;
    .end local v0    # "numRead":I
    .end local v0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 15889
    .end local p1    # "fis":Ljava/io/InputStream;
    return-void

    .line 15890
    .restart local p1    # "fis":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw v0
.end method


# virtual methods
.method public final A06(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15891
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6y;->A00:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15892
    .local p0, "preComputedChecksum":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 15893
    return-object v0

    .line 15894
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
