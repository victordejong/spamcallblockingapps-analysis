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

    .line 18997
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8o;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8o;->A01()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/8o;->A03:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 18998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18999
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 19000
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

    add-int/lit8 v0, v0, -0x13

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
        -0x39t
        -0x2ct
        -0x36t
        -0x28t
        -0x2bt
        -0x31t
        -0x36t
        -0x6ct
        -0x2at
        -0x35t
        -0x28t
        -0x2dt
        -0x31t
        -0x27t
        -0x27t
        -0x31t
        -0x2bt
        -0x2ct
        -0x6ct
        -0x58t
        -0x51t
        -0x4ct
        -0x56t
        -0x3bt
        -0x59t
        -0x57t
        -0x57t
        -0x55t
        -0x47t
        -0x47t
        -0x51t
        -0x58t
        -0x51t
        -0x4et
        -0x51t
        -0x46t
        -0x41t
        -0x3bt
        -0x47t
        -0x55t
        -0x48t
        -0x44t
        -0x51t
        -0x57t
        -0x55t
        -0x67t
        -0x69t
        -0x60t
        -0x69t
        -0x5ct
        -0x65t
        -0x6bt
        -0x41t
        -0x49t
        -0x42t
        -0x43t
        -0x4ct
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ksHi49HeyLxhEuEQ3ZpH94jUoJqLqgaO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OjCJx3NFQ0DFgiyf16DgggNozGEs4R4q"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GEO9tIl26J6KBxgfZlF82GfP7HtNAY9Z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nOASZQwcdTvox6Zrqcm6Ob1f72Bs0sPe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "97ugpJwHRGNEpoGk3FmXenG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0hX3UIoeWP89IzRfugcPHePTUXouBxgf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dDjk4aEiSkmoIE6VCcWXk7EEukMkdVWT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2G0bY4RpV1kXQIyv7KcyHSXfT8fWnCKY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 19001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L5;->A01(Landroid/content/Context;)I

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

    .line 19002
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

    .line 19003
    :catchall_0
    move-exception v1

    .line 19004
    .local v6, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 19005
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A16:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 19006
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19007
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

    .line 19008
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8o;->A07()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 19009
    .local p0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 19010
    .local v0, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 19011
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19012
    :catchall_0
    move-exception v1

    .line 19013
    .local p0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 19014
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A16:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 19015
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19016
    .end local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

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

    .line 19017
    const/4 v6, 0x0

    .line 19018
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

    .line 19019
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19020
    :catchall_0
    move-exception v1

    .line 19021
    .local v6, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 19022
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A16:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 19023
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8n(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19024
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

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public final A07()Ljava/lang/String;
    .locals 3

    .line 19025
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v2, v0, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 19026
    .local p0, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v2, :cond_0

    .line 19027
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19028
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_1

    .line 19029
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 19030
    :goto_0
    return-object v0

    .line 19031
    :cond_1
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A08()Ljava/lang/String;
    .locals 4

    .line 19032
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 19033
    const/16 v2, 0x34

    const/4 v1, 0x5

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8D;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 19034
    .local p0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 19035
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 19036
    .local v3, "operatorName":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const-string v1, "Y0rO6junFBlFHafjvJcSeB7fUCyZ4Mo6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "E4dacaRM3DS0bJ8W8Pcl72SYoh6IL0u8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 19037
    return-object v3

    .line 19038
    .end local v3    # "operatorName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A09()Ljava/lang/String;
    .locals 4

    .line 19039
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/8o;->A02:[Ljava/lang/String;

    const-string v1, "17co7YvrhvaQQJ3lRMCxQ7nYKJi0wzqK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "xVh8HKEIQLp4oZwybdpyhu7U8ElYQBbb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0A()Ljava/lang/String;
    .locals 3

    .line 19040
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

    const/16 v0, 0x36

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

    .line 19041
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8o;->A07()Ljava/lang/String;

    move-result-object v1

    .line 19042
    .local p0, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_0

    .line 19043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19044
    .local v1, "installer_name":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 19045
    return-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19046
    :catchall_0
    move-exception v1

    .line 19047
    .local p0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 19048
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A16:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 19049
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8n(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19050
    .end local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0C()Z
    .locals 4

    .line 19051
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:Lcom/facebook/ads/redexgen/X/8D;

    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/16 v0, 0x53

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
