.class public final Lcom/facebook/ads/redexgen/X/WM;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# static fields
.field public static A07:[B

.field public static final A08:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Landroid/content/pm/PackageInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Landroid/content/pm/PackageManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/5v;

.field public final A04:[Landroid/content/pm/ActivityInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A05:[Landroid/content/pm/ServiceInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A06:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 56947
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WM;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/WM;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WM;->A08:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 1

    .line 56948
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 56949
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WM;->A00:Landroid/content/Context;

    .line 56950
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WM;->A03:Lcom/facebook/ads/redexgen/X/5v;

    .line 56951
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WM;->A02(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WM;->A01:Landroid/content/pm/PackageInfo;

    .line 56952
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WM;->A02:Landroid/content/pm/PackageManager;

    .line 56953
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WM;->A08(Landroid/content/Context;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WM;->A04:[Landroid/content/pm/ActivityInfo;

    .line 56954
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WM;->A0A(Landroid/content/Context;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WM;->A05:[Landroid/content/pm/ServiceInfo;

    .line 56955
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WM;->A0C(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WM;->A06:[Ljava/lang/String;

    .line 56956
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/WM;)Landroid/content/Context;
    .locals 0

    .line 56957
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WM;->A00:Landroid/content/Context;

    return-object p0
.end method

.method private A02(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56958
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 56959
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1000

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 56960
    return-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56961
    :catch_0
    move-exception v4

    .line 56962
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/WM;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WM;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56963
    .end local p0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/WM;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 56964
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WM;->A01:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/WM;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 56965
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WM;->A02:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/WM;)Lcom/facebook/ads/redexgen/X/5v;
    .locals 0

    .line 56966
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WM;->A03:Lcom/facebook/ads/redexgen/X/5v;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WM;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x77

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WM;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x1dt
        0x39t
        0x23t
        0x23t
        0x39t
        0x3et
        0x37t
        0x70t
        0x0t
        0x31t
        0x33t
        0x3bt
        0x31t
        0x37t
        0x35t
        0x70t
        0x0t
        0x35t
        0x22t
        0x3dt
        0x39t
        0x23t
        0x23t
        0x39t
        0x3ft
        0x3et
        0x23t
    .end array-data
.end method

.method private A08(Landroid/content/Context;)[Landroid/content/pm/ActivityInfo;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56967
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 56968
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 56969
    .local p0, "activityInfoList":[Landroid/content/pm/ActivityInfo;
    return-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56970
    .end local p0    # "activityInfoList":[Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v4

    .line 56971
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/WM;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WM;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56972
    .end local p0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/WM;)[Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 56973
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WM;->A04:[Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method private A0A(Landroid/content/Context;)[Landroid/content/pm/ServiceInfo;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56974
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 56975
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 56976
    .local p0, "serviceInfoList":[Landroid/content/pm/ServiceInfo;
    return-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56977
    .end local p0    # "serviceInfoList":[Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v4

    .line 56978
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/WM;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WM;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56979
    .end local p0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/WM;)[Landroid/content/pm/ServiceInfo;
    .locals 0

    .line 56980
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WM;->A05:[Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method private A0C(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56981
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 56982
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1000

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 56983
    .local p0, "requestedPermissionsList":[Ljava/lang/String;
    return-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56984
    .end local p0    # "requestedPermissionsList":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 56985
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/WM;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WM;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56986
    .end local p0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/WM;)[Ljava/lang/String;
    .locals 0

    .line 56987
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WM;->A06:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56988
    new-instance v0, Lcom/facebook/ads/redexgen/X/WK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WK;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 56989
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56990
    new-instance v0, Lcom/facebook/ads/redexgen/X/WJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WJ;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 56991
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56992
    new-instance v0, Lcom/facebook/ads/redexgen/X/WL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WL;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 56993
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56994
    new-instance v0, Lcom/facebook/ads/redexgen/X/WI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WI;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 56995
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56996
    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 56997
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56998
    new-instance v0, Lcom/facebook/ads/redexgen/X/W9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/W9;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 56999
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57000
    new-instance v0, Lcom/facebook/ads/redexgen/X/WE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WE;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57001
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57002
    new-instance v0, Lcom/facebook/ads/redexgen/X/WH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WH;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57003
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57004
    new-instance v0, Lcom/facebook/ads/redexgen/X/WF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WF;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57005
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57006
    new-instance v0, Lcom/facebook/ads/redexgen/X/WG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WG;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57007
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57008
    new-instance v0, Lcom/facebook/ads/redexgen/X/WC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WC;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57009
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0S()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57010
    new-instance v0, Lcom/facebook/ads/redexgen/X/WB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WB;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57011
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0T()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57012
    new-instance v0, Lcom/facebook/ads/redexgen/X/WA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WA;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57013
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0U()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57014
    new-instance v0, Lcom/facebook/ads/redexgen/X/W7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/W7;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57015
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0V()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57016
    new-instance v0, Lcom/facebook/ads/redexgen/X/W6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/W6;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57017
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0W()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57018
    new-instance v0, Lcom/facebook/ads/redexgen/X/W8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/W8;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57019
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0X()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57020
    new-instance v0, Lcom/facebook/ads/redexgen/X/W4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/W4;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57021
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Y()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57022
    new-instance v0, Lcom/facebook/ads/redexgen/X/W3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/W3;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57023
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Z()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 57024
    new-instance v0, Lcom/facebook/ads/redexgen/X/W5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/W5;-><init>(Lcom/facebook/ads/redexgen/X/WM;)V

    .line 57025
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
