.class public final Lcom/facebook/ads/redexgen/X/WK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/97;


# static fields
.field public static A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/L9;

.field public static final A07:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A08:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5p;

.field public final A01:Lcom/facebook/ads/redexgen/X/8D;

.field public final A02:Lcom/facebook/ads/redexgen/X/8o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 64082
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WK;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WK;->A06()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WK;->A07:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64083
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WK;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64084
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WK;->A03:Ljava/lang/String;

    .line 64085
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LA;->A00()Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WK;->A06:Lcom/facebook/ads/redexgen/X/L9;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;ZLcom/facebook/ads/redexgen/X/5p;)V
    .locals 1

    .line 64086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64087
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 64088
    new-instance v0, Lcom/facebook/ads/redexgen/X/8o;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/8o;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:Lcom/facebook/ads/redexgen/X/8o;

    .line 64089
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/WK;->A00:Lcom/facebook/ads/redexgen/X/5p;

    .line 64090
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/WK;->A08(Lcom/facebook/ads/redexgen/X/8D;Z)V

    .line 64091
    return-void
.end method

.method public static synthetic A00()Ljava/lang/String;
    .locals 1

    .line 64092
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WK;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64093
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 64094
    .local p1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LF;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64095
    .end local p1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 64096
    .local p1, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/ads/redexgen/X/WK;->A07:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64097
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p1

    sget p0, Lcom/facebook/ads/redexgen/X/8e;->A19:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 64098
    const/16 v2, 0x1b4

    const/4 v1, 0x7

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 64099
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64100
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/WK;->A02(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A04(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64101
    sput-object p0, Lcom/facebook/ads/redexgen/X/WK;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A05()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 64102
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static A06()V
    .locals 4

    const/16 v3, 0x1bf

    sget-object v1, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const-string v1, "e8Iif6peCxlhmB6JTHauJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "U2Egyo0LhTV3FJWkcb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WK;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x62t
        -0x46t
        -0x55t
        -0x53t
        -0x53t
        -0x51t
        -0x43t
        -0x43t
        -0x4dt
        -0x54t
        -0x4dt
        -0x4at
        -0x4dt
        -0x42t
        -0x3dt
        -0x37t
        -0x51t
        -0x48t
        -0x55t
        -0x54t
        -0x4at
        -0x51t
        -0x52t
        -0x1at
        -0x15t
        -0xbt
        -0x45t
        -0x40t
        -0x36t
        -0x4bt
        -0x26t
        -0x19t
        -0x26t
        -0x1bt
        -0x18t
        -0x20t
        -0x19t
        -0xat
        -0xat
        0x5t
        -0xdt
        -0x11t
        -0xct
        0x5t
        -0x7t
        -0x16t
        -0xft
        0x5t
        -0x4t
        -0x15t
        -0x8t
        -0x7t
        -0x11t
        -0xbt
        -0xct
        -0xet
        0x4t
        -0x7t
        -0xet
        0x4t
        -0x8t
        0xat
        0x0t
        -0x5t
        -0x7dt
        -0x6at
        -0x6at
        -0x6ct
        -0x75t
        -0x7ct
        -0x69t
        -0x6at
        -0x75t
        -0x6ft
        -0x70t
        -0x5ft
        -0x75t
        -0x7at
        -0x1at
        -0x13t
        -0x18t
        -0x18t
        -0x17t
        -0xat
        0x3t
        -0x8t
        -0xdt
        -0x11t
        -0x17t
        -0xet
        0x3t
        -0x17t
        -0x4t
        -0x8t
        -0xat
        -0x1bt
        -0x9t
        -0x6ft
        -0x5ct
        -0x63t
        -0x6dt
        -0x65t
        -0x6ct
        -0x49t
        -0x4bt
        -0x3ct
        -0x3ct
        -0x47t
        -0x48t
        -0x2dt
        -0x43t
        -0x48t
        -0x39t
        -0x60t
        -0x62t
        -0x51t
        -0x51t
        -0x5at
        -0x5et
        -0x51t
        -0x20t
        -0x23t
        -0x10t
        -0x23t
        -0x5t
        -0x14t
        -0x12t
        -0x15t
        -0x21t
        -0x1ft
        -0x11t
        -0x11t
        -0x1bt
        -0x16t
        -0x1dt
        -0x5t
        -0x15t
        -0x14t
        -0x10t
        -0x1bt
        -0x15t
        -0x16t
        -0x11t
        -0x78t
        -0x7bt
        -0x68t
        -0x7bt
        -0x5dt
        -0x6ct
        -0x6at
        -0x6dt
        -0x79t
        -0x77t
        -0x69t
        -0x69t
        -0x73t
        -0x6et
        -0x75t
        -0x5dt
        -0x6dt
        -0x6ct
        -0x68t
        -0x73t
        -0x6dt
        -0x6et
        -0x69t
        -0x5dt
        -0x79t
        -0x6dt
        -0x67t
        -0x6et
        -0x68t
        -0x6at
        -0x63t
        -0x68t
        -0x6bt
        -0x58t
        -0x6bt
        -0x4dt
        -0x5ct
        -0x5at
        -0x5dt
        -0x69t
        -0x67t
        -0x59t
        -0x59t
        -0x63t
        -0x5et
        -0x65t
        -0x4dt
        -0x5dt
        -0x5ct
        -0x58t
        -0x63t
        -0x5dt
        -0x5et
        -0x59t
        -0x4dt
        -0x59t
        -0x58t
        -0x6bt
        -0x58t
        -0x67t
        -0x47t
        -0x46t
        -0x3dt
        -0x38t
        -0x42t
        -0x37t
        -0x32t
        -0x29t
        -0x1at
        -0x21t
        -0x21t
        -0x2at
        -0x23t
        -0x10t
        -0x2ct
        -0x20t
        -0x1dt
        -0x2at
        -0x10t
        -0x2at
        -0x19t
        -0x2at
        -0x21t
        -0x1bt
        -0x1ct
        -0x19t
        -0xat
        -0x11t
        -0x11t
        -0x1at
        -0x13t
        0x0t
        -0x13t
        -0x10t
        -0x18t
        -0x18t
        -0x1at
        -0x1bt
        -0x51t
        -0x36t
        -0x2et
        -0x2bt
        -0x32t
        -0x33t
        -0x77t
        -0x23t
        -0x28t
        -0x77t
        -0x35t
        -0x22t
        -0x2et
        -0x2bt
        -0x33t
        -0x77t
        -0x22t
        -0x24t
        -0x32t
        -0x25t
        -0x77t
        -0x23t
        -0x28t
        -0x2ct
        -0x32t
        -0x29t
        -0x60t
        -0x67t
        -0x55t
        -0x49t
        -0x63t
        -0x50t
        -0x59t
        -0x58t
        -0x5ct
        -0x67t
        -0x4ft
        -0x63t
        -0x56t
        -0x6t
        -0xbt
        -0x9t
        -0xet
        -0x39t
        -0x3et
        -0x23t
        -0x3ft
        -0x41t
        -0x3ft
        -0x3at
        -0x3dt
        -0x23t
        -0x2et
        -0x2ft
        -0x23t
        -0x35t
        -0x2ft
        -0x45t
        -0x4at
        -0x2ft
        -0x3bt
        -0x3ft
        -0x39t
        -0x3ct
        -0x4bt
        -0x49t
        -0x18t
        -0x13t
        -0xet
        -0xdt
        -0x20t
        -0x15t
        -0x15t
        -0x1ct
        -0xft
        -0x68t
        -0x65t
        -0x71t
        -0x73t
        -0x68t
        -0x6ft
        0x1t
        -0xbt
        -0x1t
        -0x7t
        -0x4bt
        -0x53t
        -0x54t
        -0x4ft
        -0x57t
        -0x44t
        -0x4ft
        -0x49t
        -0x4at
        -0x39t
        -0x45t
        -0x53t
        -0x46t
        -0x42t
        -0x4ft
        -0x55t
        -0x53t
        -0xat
        -0x13t
        -0x4t
        -0x1t
        -0x9t
        -0x6t
        -0xdt
        0x7t
        -0x4t
        0x1t
        -0x8t
        -0x13t
        -0x4ft
        -0x52t
        -0x52t
        -0x4dt
        -0x5ct
        -0x5dt
        -0x63t
        -0x73t
        -0x64t
        -0x71t
        -0x71t
        -0x68t
        -0x57t
        -0x6et
        -0x71t
        -0x6dt
        -0x6ft
        -0x6et
        -0x62t
        -0x49t
        -0x59t
        -0x4at
        -0x57t
        -0x57t
        -0x4et
        -0x3dt
        -0x45t
        -0x53t
        -0x58t
        -0x48t
        -0x54t
        0x3t
        -0xct
        -0x5t
        0xft
        -0xdt
        -0xft
        0x0t
        -0xft
        -0xet
        -0x7t
        -0x4t
        -0x7t
        0x4t
        0x9t
        -0x5t
        -0x13t
        -0x5t
        -0x5t
        -0xft
        -0x9t
        -0xat
        0x7t
        -0x4t
        -0xft
        -0xbt
        -0x13t
        -0x56t
        -0x5dt
        -0x62t
        -0x57t
        -0x52t
        -0x6ct
        -0x6et
        -0x7ct
        -0x6ft
        -0x62t
        -0x80t
        -0x7at
        -0x7ct
        -0x73t
        -0x6dt
        -0x26t
        -0x3bt
        -0x30t
        -0x2ct
        -0x3bt
        -0x2at
        -0x3bt
        -0x2ft
        -0x29t
        -0x58t
        -0x5at
        -0x51t
        -0x5at
        -0x4dt
        -0x56t
        -0x5ct
        0xat
        0x11t
        0x8t
        0x8t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "txu4RBo63YQ5Q7SoAp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BY8ga9ljLbuWBmJa1ktUn6UmPorDtudq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oIcH05TUMC1H4eRB0f575BffOzLV6s"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RDV9o0Xs0wR3bMJwiMoqv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Drf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fWBbnfM052TaJjbz2mNIhyXx2yjBcv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vwrAcDNdoQtjOaT8FPnJSektvmYH0bUo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "A7bgPIcOUjT1m5u12vt0AimohlYQKPcw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/8D;Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 64103
    sget-object v1, Lcom/facebook/ads/redexgen/X/WK;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64104
    return-void

    .line 64105
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 64106
    .local p0, "sp":Landroid/content/SharedPreferences;
    new-instance v5, Lcom/facebook/ads/redexgen/X/8o;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/8o;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 64107
    .local v1, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/8o;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    const/4 v1, 0x4

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64108
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8o;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64109
    .local v4, "fingerprintSharedPrefKey":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WK;->A03:Ljava/lang/String;

    .line 64110
    new-instance v0, Lcom/facebook/ads/redexgen/X/99;

    invoke-direct {v0, p0, v6, v1}, Lcom/facebook/ads/redexgen/X/99;-><init>(Lcom/facebook/ads/redexgen/X/8D;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 64111
    .local v0, "initialiser":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 64112
    if-eqz p1, :cond_1

    .line 64113
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64114
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 64115
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final A6N()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64116
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A08(Lcom/facebook/ads/redexgen/X/8D;Z)V

    .line 64117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8n;->A0C(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 64118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8n;->A09(Landroid/content/Context;)V

    .line 64119
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 64120
    .local p0, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/94;->A02(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)Ljava/util/Map;

    .line 64121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x13c

    const/4 v1, 0x6

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64122
    sget v7, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    .line 64123
    .local v1, "density":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64124
    .local v0, "screenWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 64125
    .local v0, "screenHeight":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xcb

    const/4 v1, 0x7

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64126
    int-to-float v0, v6

    div-float/2addr v0, v7

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x176

    const/16 v1, 0xc

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64127
    int-to-float v0, v5

    div-float/2addr v0, v7

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x169

    const/16 v1, 0xd

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64128
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A03()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x40

    const/16 v1, 0xe

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64129
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A02()Lcom/facebook/ads/redexgen/X/5Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Y;->name()Ljava/lang/String;

    move-result-object v3

    .line 64130
    const/16 v2, 0x12a

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64131
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A01()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 64132
    const/16 v2, 0x11c

    const/16 v1, 0xe

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64133
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:Lcom/facebook/ads/redexgen/X/8o;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A03(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/8o;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x61

    const/4 v1, 0x6

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A08()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x71

    const/4 v1, 0x7

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A09()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x142

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64136
    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A06:Lcom/facebook/ads/redexgen/X/L9;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L9;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x163

    const/4 v1, 0x6

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A0B()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x133

    const/16 v1, 0x9

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64138
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L2;->A01()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x182

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 64140
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LZ;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/LY;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LY;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 64141
    const/16 v2, 0x157

    const/16 v1, 0xc

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 64143
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A02(D)Ljava/lang/String;

    move-result-object v3

    .line 64144
    const/16 v2, 0x190

    const/16 v1, 0xc

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64145
    sget-object v3, Lcom/facebook/ads/redexgen/X/WK;->A03:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 64146
    const/16 v2, 0x17

    const/4 v1, 0x3

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64147
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LA;->A02(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 64148
    .local v0, "app_certs":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 64149
    const/16 v2, 0x37

    const/4 v1, 0x5

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const-string v1, "7iEL97HH3XirhrNOrpwwqE5p84M9hi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "HdL5XFdXBWlE62VkmUdoEqvvbtJNN1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64150
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LE;->A06(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x19c

    const/4 v1, 0x5

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64151
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getMediationService()Ljava/lang/String;

    move-result-object v3

    .line 64152
    .local v4, "mediationService":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 64153
    const/16 v2, 0x146

    const/16 v1, 0x11

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64154
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:Lcom/facebook/ads/redexgen/X/8o;

    .line 64155
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A0C()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 64156
    const/4 v2, 0x2

    const/16 v1, 0x15

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A03()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 64158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:Lcom/facebook/ads/redexgen/X/8o;

    .line 64159
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 64160
    const/16 v2, 0x24

    const/16 v1, 0x13

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64161
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 64162
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/92;->A05(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object v3

    .line 64163
    const/16 v2, 0x1ab

    const/16 v1, 0x9

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64164
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8n;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LI;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1e

    const/4 v1, 0x6

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J3;->A05(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64166
    invoke-static {}, Lcom/facebook/ads/internal/bridge/fbsdk/FBLoginASID;->getFBLoginASID()Ljava/lang/String;

    move-result-object v6

    .line 64167
    .local v0, "fbLoginASID":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 64168
    const/16 v7, 0x3c

    const/4 v5, 0x4

    const/16 v3, 0x78

    sget-object v1, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_6

    invoke-static {v7, v5, v3}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64169
    .end local v0    # "fbLoginASID":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A02()Lcom/facebook/ads/redexgen/X/WN;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0C(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8Q;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8Q;->A6C()Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v7

    .line 64170
    .local v0, "dataProcessingOptions":Lcom/facebook/ads/redexgen/X/8P;
    const/16 v2, 0xae

    const/16 v1, 0x1d

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x8f

    const/16 v1, 0x1f

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x78

    const/16 v1, 0x17

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_5

    .line 64171
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8P;->A09()Ljava/lang/String;

    move-result-object v0

    .line 64172
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64173
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8P;->A06()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64174
    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64175
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8P;->A07()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64176
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64177
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x67

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64178
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WK;->A00:Lcom/facebook/ads/redexgen/X/5p;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5p;->A04(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object v3

    .line 64179
    .local v0, "bidderTokenExtras":Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64180
    :cond_5
    const/16 v2, 0x1bb

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64181
    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64182
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const-string v1, "QkmSwbaa5oDoCLO3aXQYsS7UmoAiO3TK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v7, v5, v3}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const-string v1, "7SgbSw5RyzGHBuMIWu6G9QVQ2oSYXhnq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v5, :cond_8

    .line 64183
    const/16 v2, 0x4e

    const/16 v1, 0x13

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64184
    :cond_8
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HL;->A0A()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10b

    const/16 v1, 0xd

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0I(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe4

    const/16 v1, 0xd

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 64187
    .local v3, "coreEventsSB":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/facebook/ads/redexgen/X/WN;->A09:[Lcom/facebook/ads/redexgen/X/0T;

    .line 64188
    .local v2, "coreEvents":[Lcom/facebook/ads/redexgen/X/0T;
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_2
    array-length v7, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const-string v1, "KBOIDxfyJsqtvIXCsOIzT2EFmg2vrm"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "4h8zrY1jaLrWIDwYy9p7qG5eg6HSN5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v3, v7, :cond_b

    .line 64189
    :goto_3
    aget-object v0, v5, v3

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0T;->A02()I

    move-result v0

    add-int/lit16 v0, v0, 0xfa0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64190
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_9

    .line 64191
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64192
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/WK;->A05:[Ljava/lang/String;

    const-string v1, "eXvjnElviFhax1QrEHRJb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "3mX4oJp47tlCgkFyL4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v3, v7, :cond_b

    goto :goto_3

    .line 64193
    .end local v1    # "i":I
    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd2

    const/16 v1, 0x12

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64194
    return-object v4

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A7J()Ljava/lang/String;
    .locals 1

    .line 64195
    invoke-static {}, Lcom/facebook/ads/redexgen/X/96;->A00()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/WK;->A7K(Lcom/facebook/ads/redexgen/X/95;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7K(Lcom/facebook/ads/redexgen/X/95;)Ljava/lang/String;
    .locals 8

    .line 64196
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A08(Lcom/facebook/ads/redexgen/X/8D;Z)V

    .line 64197
    const/4 v6, 0x0

    .line 64198
    .local p0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 64199
    .local p1, "base64":Landroid/util/Base64OutputStream;
    const/4 v4, 0x0

    .line 64200
    .local v1, "zip":Ljava/util/zip/DeflaterOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v6, v0

    .line 64201
    const/4 v7, 0x0

    new-instance v0, Landroid/util/Base64OutputStream;

    invoke-direct {v0, v6, v7}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v5, v0

    .line 64202
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v0

    .line 64203
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/WK;->A6N()Ljava/util/Map;

    move-result-object v2

    .line 64204
    .local v0, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5b;->A08(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 64206
    :cond_0
    const/16 v3, 0x118

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 64207
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A03()Ljava/lang/String;

    move-result-object v0

    .line 64208
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64209
    const/16 v3, 0x1a1

    const/16 v1, 0xa

    const/4 v0, 0x0

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WK;->A02:Lcom/facebook/ads/redexgen/X/8o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 64210
    invoke-static {v1, v0, v7}, Lcom/facebook/ads/redexgen/X/9C;->A06(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/8D;Z)Ljava/lang/String;

    move-result-object v0

    .line 64211
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WK;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64213
    const/16 v3, 0x67

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64214
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64215
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64216
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/95;->A2O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64217
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 64218
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 64219
    .local v5, "envParameters":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 64220
    invoke-virtual {v4}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 64221
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64222
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 64223
    invoke-virtual {v5}, Landroid/util/Base64OutputStream;->close()V

    .line 64224
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64225
    :catch_0
    return-object v0

    .line 64226
    :catch_1
    move-exception v3

    .line 64227
    :try_start_2
    const/16 v2, 0xf1

    const/16 v1, 0x1a

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WK;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "base64":Landroid/util/Base64OutputStream;
    .end local v1    # "zip":Ljava/util/zip/DeflaterOutputStream;
    .end local v0    # "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64228
    .end local v0
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "envParameters":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    .line 64229
    .end local v0
    .restart local p0    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "base64":Landroid/util/Base64OutputStream;
    .restart local v1    # "zip":Ljava/util/zip/DeflaterOutputStream;
    .restart local v0    # "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_4

    .line 64230
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 64231
    :cond_4
    if-eqz v5, :cond_5

    .line 64232
    invoke-virtual {v5}, Landroid/util/Base64OutputStream;->close()V

    .line 64233
    :cond_5
    if-eqz v6, :cond_6

    .line 64234
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 64235
    :catch_2
    :cond_6
    throw v0
.end method
