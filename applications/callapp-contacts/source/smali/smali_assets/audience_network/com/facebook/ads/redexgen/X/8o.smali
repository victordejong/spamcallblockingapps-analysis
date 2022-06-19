.class public final Lcom/facebook/ads/redexgen/X/8o;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8D;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 18880
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8o;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8o;->A01()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 18881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18882
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 18883
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8o;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x54

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x39

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8o;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x11t
        -0x4t
        -0xet
        0x0t
        -0x3t
        -0x9t
        -0xet
        -0x44t
        -0x2t
        -0xdt
        0x0t
        -0x5t
        -0x9t
        0x1t
        0x1t
        -0x9t
        -0x3t
        -0x4t
        -0x44t
        -0x30t
        -0x29t
        -0x24t
        -0x2et
        -0x13t
        -0x31t
        -0x2ft
        -0x2ft
        -0x2dt
        -0x1ft
        -0x1ft
        -0x29t
        -0x30t
        -0x29t
        -0x26t
        -0x29t
        -0x1et
        -0x19t
        -0x13t
        -0x1ft
        -0x2dt
        -0x20t
        -0x1ct
        -0x29t
        -0x2ft
        -0x2dt
        -0x2ft
        -0x31t
        -0x28t
        -0x31t
        -0x24t
        -0x2dt
        -0x33t
        -0xdt
        -0x15t
        -0xet
        -0xft
        -0x18t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4UXivJ9bWzVmUKEORuimcsc25E9yHKjM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eA36e27H2SQKTgfHA43cU1z3ajsDp04A"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "C0QLMKXu1JepGMQqxbYq5t6gzwkqhJGP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Vxu4w1TEkVm1YGegZeLuyUzWRGhVVehU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9DWEeZJi13noDyT5Fh2XUwX4KzxcmXKd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eTzqs10iSeQQ2KrnCOv26Mt4rNMbsJLV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "s8UczS0FAxqS0Axd9J"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JShALZiYLlnObKc6igiSgdntorMevFdl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 18884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L3;->A01(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final A04()I
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 18885
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8o;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18886
    :catchall_0
    move-exception v1

    .line 18887
    .local v6, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 18888
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A15:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 18889
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 18890
    .end local v6    # "t":Ljava/lang/Throwable;
    return v6
.end method

.method public final A05()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 18891
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8o;->A07()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 18892
    .local p0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 18893
    .local v0, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 18894
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18895
    :catchall_0
    move-exception v1

    .line 18896
    .local p0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 18897
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A15:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 18898
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 18899
    .end local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x50

    sget-object v1, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const-string v1, "1fZ6UIp0jk3A9Vyxip"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A06()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 18900
    const/4 v6, 0x0

    .line 18901
    .local p0, "appVersionName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8o;->A07()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 18902
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18903
    :catchall_0
    move-exception v1

    .line 18904
    .local v6, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 18905
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A15:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 18906
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8l(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 18907
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-object v6

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public final A07()Ljava/lang/String;
    .locals 3

    .line 18908
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v2, v0, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 18909
    .local p0, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v2, :cond_0

    .line 18910
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 18911
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_1

    .line 18912
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 18913
    :goto_0
    return-object v0

    .line 18914
    :cond_1
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A08()Ljava/lang/String;
    .locals 5

    .line 18915
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 18916
    const/16 v2, 0x34

    const/4 v1, 0x5

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8D;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 18917
    .local p0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 18918
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 18919
    .local v3, "operatorName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 18920
    return-object v1

    .line 18921
    .end local v3    # "operatorName":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const-string v1, "4uAFXpJjJNyMuVCL4IR188dhDRybrTml"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x50

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A09()Ljava/lang/String;
    .locals 4

    .line 18922
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const-string v1, "4KWcrXNI2CiMu5mhxtQIP5VVZPBJmlLQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-lez v3, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final A0A()Ljava/lang/String;
    .locals 3

    .line 18923
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0B()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 18924
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8o;->A07()Ljava/lang/String;

    move-result-object v1

    .line 18925
    .local p0, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_0

    .line 18926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18927
    .local v1, "installer_name":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 18928
    return-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18929
    :catchall_0
    move-exception v1

    .line 18930
    .local p0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 18931
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A15:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 18932
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8l(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 18933
    .end local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0C()Z
    .locals 4

    .line 18934
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8D;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
