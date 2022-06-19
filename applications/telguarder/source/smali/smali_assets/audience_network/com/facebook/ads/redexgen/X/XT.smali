.class public final Lcom/facebook/ads/redexgen/X/XT;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/XU;
    }
.end annotation


# static fields
.field public static A01:Ljava/lang/Class;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A02:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 65101
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XT;->A09()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XT;->A08()V

    const-class v0, Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XT;->A05:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 1

    .line 65102
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 65103
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XT;->A00:Landroid/content/Context;

    .line 65104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XT;->A00:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XT;->A04(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XT;->A01:Ljava/lang/Class;

    .line 65105
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XT;->A06()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XT;->A02:Ljava/lang/reflect/Method;

    .line 65106
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 0

    .line 65107
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XT;->A02(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object p0

    return-object p0
.end method

.method private A02(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Nullable Dereference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/XU;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 65108
    .local v4, "streamFileInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/SystemPropertiesSignalCollector$SystemProperty;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wv;

    .line 65109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 65110
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A0D:Lcom/facebook/ads/redexgen/X/6s;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wv;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 65111
    return-object v0
.end method

.method public static synthetic A03()Ljava/lang/Class;
    .locals 1

    .line 65112
    sget-object v0, Lcom/facebook/ads/redexgen/X/XT;->A01:Ljava/lang/Class;

    return-object v0
.end method

.method public static A04(Landroid/content/Context;)Ljava/lang/Class;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65113
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 65114
    .local p0, "cl":Ljava/lang/ClassLoader;
    const/16 v2, 0x37

    const/16 v1, 0x1b

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XT;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65115
    .end local p0    # "cl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception p0

    .line 65116
    .local p0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/XT;->A05:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XT;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65117
    .end local p0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/XT;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()Ljava/lang/reflect/Method;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65118
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/XT;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/XT;->A04:[Ljava/lang/String;

    const-string v1, "6BL3G7sbal0jMiGAMvIEsCbFNCzhQzLT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bpH25ddID69x96Kpamb5UkZuUe8Lhc27"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v5, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    .line 65119
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v1, 0x0

    const-class v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 65120
    sget-object v0, Lcom/facebook/ads/redexgen/X/XT;->A01:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 65121
    return-object v5

    .line 65122
    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/XT;->A01:Ljava/lang/Class;

    const/16 v2, 0x52

    const/4 v1, 0x3

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XT;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65123
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 65124
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/XT;->A05:Ljava/lang/String;

    const/16 v2, 0x1b

    const/16 v1, 0x1c

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XT;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65125
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    return-object v5
.end method

.method public static synthetic A07()Ljava/lang/reflect/Method;
    .locals 1

    .line 65126
    sget-object v0, Lcom/facebook/ads/redexgen/X/XT;->A02:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x55

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XT;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x20t
        0xdt
        0xdt
        0xat
        0xdt
        -0x45t
        0x1t
        0x0t
        0xft
        -0x2t
        0x3t
        0x4t
        0x9t
        0x2t
        -0x45t
        -0x12t
        0x14t
        0xet
        0xft
        0x0t
        0x8t
        -0x45t
        -0x22t
        0x7t
        -0x4t
        0xet
        0xet
        -0x77t
        -0x4at
        -0x4at
        -0x4dt
        -0x4at
        0x64t
        -0x56t
        -0x57t
        -0x48t
        -0x59t
        -0x54t
        -0x53t
        -0x4et
        -0x55t
        0x64t
        -0x69t
        -0x43t
        -0x49t
        -0x48t
        -0x57t
        -0x4ft
        0x64t
        -0x6ft
        -0x57t
        -0x48t
        -0x54t
        -0x4dt
        -0x58t
        0xft
        0x1ct
        0x12t
        0x20t
        0x1dt
        0x17t
        0x12t
        -0x24t
        0x1dt
        0x21t
        -0x24t
        0x1t
        0x27t
        0x21t
        0x22t
        0x13t
        0x1bt
        -0x2t
        0x20t
        0x1dt
        0x1et
        0x13t
        0x20t
        0x22t
        0x17t
        0x13t
        0x21t
        -0x25t
        -0x27t
        -0x18t
    .end array-data
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3CJKYjubQeDP7L7QEO5Td29RlL89Swum"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yufMTJXzGQN6EfqEuLhq4V2wAfoc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Dp7AczGvXJBFe8YnrxkkffT7ordIyLeL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Qu53Ghw5mO9IdZ6hvg9WTot6hERq8agu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UoqAQOuzQJ7LoXJFqNPBFGNRkVg8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TRJg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aOZJOd7o"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3HidJyugC5TVfBjICkBeVkDqxiu5Amk9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XT;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0H(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6d;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6e;"
        }
    .end annotation

    .line 65127
    .local v0, "bundledSignalMetadataList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/XV;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/XV;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/List;)V

    .line 65128
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
