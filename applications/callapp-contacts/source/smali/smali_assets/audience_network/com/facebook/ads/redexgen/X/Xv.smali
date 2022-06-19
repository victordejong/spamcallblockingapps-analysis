.class public final Lcom/facebook/ads/redexgen/X/Xv;
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

.field public static final A06:Lcom/facebook/ads/redexgen/X/L7;

.field public static final A07:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A08:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5p;

.field public final A01:Lcom/facebook/ads/redexgen/X/8D;

.field public final A02:Lcom/facebook/ads/redexgen/X/8o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 58252
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xv;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xv;->A06()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xv;->A07:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58253
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xv;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58254
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xv;->A03:Ljava/lang/String;

    .line 58255
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L8;->A00()Lcom/facebook/ads/redexgen/X/L7;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xv;->A06:Lcom/facebook/ads/redexgen/X/L7;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;ZLcom/facebook/ads/redexgen/X/5p;)V
    .locals 1

    .line 58256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58257
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 58258
    new-instance v0, Lcom/facebook/ads/redexgen/X/8o;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/8o;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A02:Lcom/facebook/ads/redexgen/X/8o;

    .line 58259
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Xv;->A00:Lcom/facebook/ads/redexgen/X/5p;

    .line 58260
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Xv;->A08(Lcom/facebook/ads/redexgen/X/8D;Z)V

    .line 58261
    return-void
.end method

.method public static synthetic A00()Ljava/lang/String;
    .locals 1

    .line 58262
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xv;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xv;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const-string v1, "AJGqtkftO03LFXDJsHlFXR4ujVWNfKsn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "0weTThgY8dzMPuXGgH30KJvXs1017h9U"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x49

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
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

    .line 58263
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 58264
    .local p1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LD;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58265
    .end local p1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 58266
    .local p1, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Xv;->A07:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58267
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p1

    sget p0, Lcom/facebook/ads/redexgen/X/8e;->A18:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 58268
    const/16 v2, 0x1b4

    const/4 v1, 0x7

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 58269
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58270
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Xv;->A02(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A04(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58271
    sput-object p0, Lcom/facebook/ads/redexgen/X/Xv;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A05()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 58272
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xv;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x1bf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xv;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0xdt
        0x15t
        0x17t
        0x17t
        0x11t
        0x7t
        0x7t
        0x1dt
        0x16t
        0x1dt
        0x18t
        0x1dt
        0x0t
        0xdt
        0xbt
        0x11t
        0x1at
        0x15t
        0x16t
        0x18t
        0x11t
        0x10t
        0x29t
        0x2et
        0x38t
        0x2dt
        0x2at
        0x3ct
        0x57t
        0x62t
        0x6dt
        0x62t
        0x6ft
        0x6ct
        0x64t
        0x55t
        0x44t
        0x44t
        0x4bt
        0x59t
        0x5dt
        0x5at
        0x4bt
        0x47t
        0x50t
        0x5ft
        0x4bt
        0x42t
        0x51t
        0x46t
        0x47t
        0x5dt
        0x5bt
        0x5at
        0x4et
        0x5ct
        0x47t
        0x4et
        0x5ct
        0x2ct
        0x3et
        0x24t
        0x29t
        0x56t
        0x43t
        0x43t
        0x45t
        0x5et
        0x55t
        0x42t
        0x43t
        0x5et
        0x58t
        0x59t
        0x48t
        0x5et
        0x53t
        0x6at
        0x61t
        0x6ct
        0x6ct
        0x6dt
        0x7at
        0x77t
        0x7ct
        0x67t
        0x63t
        0x6dt
        0x66t
        0x77t
        0x6dt
        0x70t
        0x7ct
        0x7at
        0x69t
        0x7bt
        0x3et
        0x29t
        0x32t
        0x38t
        0x30t
        0x39t
        0x4ft
        0x4dt
        0x5ct
        0x5ct
        0x49t
        0x48t
        0x53t
        0x45t
        0x48t
        0x5ft
        0x15t
        0x17t
        0x4t
        0x4t
        0x1ft
        0x13t
        0x4t
        0x43t
        0x46t
        0x53t
        0x46t
        0x58t
        0x57t
        0x55t
        0x48t
        0x44t
        0x42t
        0x54t
        0x54t
        0x4et
        0x49t
        0x40t
        0x58t
        0x48t
        0x57t
        0x53t
        0x4et
        0x48t
        0x49t
        0x54t
        0x5ct
        0x59t
        0x4ct
        0x59t
        0x47t
        0x48t
        0x4at
        0x57t
        0x5bt
        0x5dt
        0x4bt
        0x4bt
        0x51t
        0x56t
        0x5ft
        0x47t
        0x57t
        0x48t
        0x4ct
        0x51t
        0x57t
        0x56t
        0x4bt
        0x47t
        0x5bt
        0x57t
        0x4dt
        0x56t
        0x4ct
        0x4at
        0x41t
        0x6ft
        0x6at
        0x7ft
        0x6at
        0x74t
        0x7bt
        0x79t
        0x64t
        0x68t
        0x6et
        0x78t
        0x78t
        0x62t
        0x65t
        0x6ct
        0x74t
        0x64t
        0x7bt
        0x7ft
        0x62t
        0x64t
        0x65t
        0x78t
        0x74t
        0x78t
        0x7ft
        0x6at
        0x7ft
        0x6et
        0x1ct
        0x1dt
        0x16t
        0xbt
        0x11t
        0xct
        0x1t
        0xdt
        0x1et
        0x5t
        0x5t
        0xet
        0x7t
        0x14t
        0x8t
        0x4t
        0x19t
        0xet
        0x14t
        0xet
        0x1dt
        0xet
        0x5t
        0x1ft
        0x18t
        0x30t
        0x23t
        0x38t
        0x38t
        0x33t
        0x3at
        0x29t
        0x3at
        0x39t
        0x31t
        0x31t
        0x33t
        0x32t
        0x1et
        0x39t
        0x31t
        0x34t
        0x3dt
        0x3ct
        0x78t
        0x2ct
        0x37t
        0x78t
        0x3at
        0x2dt
        0x31t
        0x34t
        0x3ct
        0x78t
        0x2dt
        0x2bt
        0x3dt
        0x2at
        0x78t
        0x2ct
        0x37t
        0x33t
        0x3dt
        0x36t
        0x5ft
        0x56t
        0x44t
        0x48t
        0x52t
        0x4ft
        0x58t
        0x47t
        0x5bt
        0x56t
        0x4et
        0x52t
        0x45t
        0x34t
        0x39t
        0x3bt
        0x3ct
        0x30t
        0x3dt
        0x26t
        0x3at
        0x38t
        0x3at
        0x31t
        0x3ct
        0x26t
        0x2dt
        0x2at
        0x26t
        0x34t
        0x2at
        0x25t
        0x28t
        0x33t
        0x3ft
        0x23t
        0x39t
        0x3et
        0x2ft
        0x29t
        0x2ft
        0x28t
        0x35t
        0x32t
        0x27t
        0x2at
        0x2at
        0x23t
        0x34t
        0x4bt
        0x48t
        0x44t
        0x46t
        0x4bt
        0x42t
        0x6dt
        0x61t
        0x6bt
        0x65t
        0x5t
        0xdt
        0xct
        0x1t
        0x9t
        0x1ct
        0x1t
        0x7t
        0x6t
        0x17t
        0x1bt
        0xdt
        0x1at
        0x1et
        0x1t
        0xbt
        0xdt
        0x48t
        0x43t
        0x52t
        0x51t
        0x49t
        0x54t
        0x4dt
        0x59t
        0x52t
        0x5ft
        0x56t
        0x43t
        0x5dt
        0x40t
        0x40t
        0x5bt
        0x4at
        0x4bt
        0xet
        0x1et
        0xft
        0x18t
        0x18t
        0x13t
        0x2t
        0x15t
        0x18t
        0x14t
        0x1at
        0x15t
        0x9t
        0x61t
        0x71t
        0x60t
        0x77t
        0x77t
        0x7ct
        0x6dt
        0x65t
        0x7bt
        0x76t
        0x66t
        0x7at
        0x61t
        0x76t
        0x79t
        0x6dt
        0x71t
        0x73t
        0x62t
        0x73t
        0x70t
        0x7bt
        0x7et
        0x7bt
        0x66t
        0x6bt
        0x3ft
        0x29t
        0x3ft
        0x3ft
        0x25t
        0x23t
        0x22t
        0x33t
        0x38t
        0x25t
        0x21t
        0x29t
        0x79t
        0x62t
        0x65t
        0x78t
        0x75t
        0x33t
        0x35t
        0x23t
        0x34t
        0x39t
        0x27t
        0x21t
        0x23t
        0x28t
        0x32t
        0x19t
        0xet
        0x3t
        0x1ft
        0xet
        0x1dt
        0xet
        0x2t
        0x1ct
        0x74t
        0x76t
        0x7dt
        0x76t
        0x61t
        0x7at
        0x70t
        0x19t
        0x2t
        0x1bt
        0x1bt
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rjWu3o3XUIKJimpXtRLH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N3hUjd9gC1zTrolrzHWDwio6K0KaeF7v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "V8BOZxTrBek9nlJry76rEN1tEiA1lgnf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2kaCuDD1e44XjFqxj97oS3bW7Y4jUXps"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VcJxC1jbHxk7XwGyeCWvHwY9E4qRcx1x"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dO6RHNbAuKw0kDbwpnJR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8jPNINbp0cYAxxIn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ugIdyp1aSJPFHYCiUHctz2XPYC5YD6Ud"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/8D;Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 58273
    sget-object v1, Lcom/facebook/ads/redexgen/X/Xv;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58274
    return-void

    .line 58275
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 58276
    .local p0, "sp":Landroid/content/SharedPreferences;
    new-instance v5, Lcom/facebook/ads/redexgen/X/8o;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/8o;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 58277
    .local v1, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/8o;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    const/4 v1, 0x4

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58278
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8o;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58279
    .local v4, "fingerprintSharedPrefKey":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xv;->A03:Ljava/lang/String;

    .line 58280
    new-instance v0, Lcom/facebook/ads/redexgen/X/99;

    invoke-direct {v0, p0, v6, v1}, Lcom/facebook/ads/redexgen/X/99;-><init>(Lcom/facebook/ads/redexgen/X/8D;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 58281
    .local v0, "initialiser":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 58282
    if-eqz p1, :cond_1

    .line 58283
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58284
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/Xv;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const-string v1, "BG3uZRuA0Chr9fB7D4fD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ED3rHXlImwDD4lq5TiwH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 58285
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
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

    .line 58286
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A08(Lcom/facebook/ads/redexgen/X/8D;Z)V

    .line 58287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8n;->A0B(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 58288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8n;->A08(Landroid/content/Context;)V

    .line 58289
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 58290
    .local p0, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/94;->A02(Lcom/facebook/ads/redexgen/X/8D;Ljava/util/Map;)Ljava/util/Map;

    .line 58291
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x13c

    const/4 v1, 0x6

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58292
    sget v7, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    .line 58293
    .local v1, "density":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 58294
    .local v0, "screenWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 58295
    .local v0, "screenHeight":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xcb

    const/4 v1, 0x7

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58296
    int-to-float v0, v6

    div-float/2addr v0, v7

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x176

    const/16 v1, 0xc

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58297
    int-to-float v0, v5

    div-float/2addr v0, v7

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x169

    const/16 v1, 0xd

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58298
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A03()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x40

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58299
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A02()Lcom/facebook/ads/redexgen/X/5Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Y;->name()Ljava/lang/String;

    move-result-object v3

    .line 58300
    const/16 v2, 0x12a

    const/16 v1, 0x9

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58301
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A01()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 58302
    const/16 v2, 0x11c

    const/16 v1, 0xe

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58303
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A02:Lcom/facebook/ads/redexgen/X/8o;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A03(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/8o;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x61

    const/4 v1, 0x6

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A02:Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A08()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x71

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A02:Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A09()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x142

    const/4 v1, 0x4

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58306
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xv;->A06:Lcom/facebook/ads/redexgen/X/L7;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/L7;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x163

    const/4 v1, 0x6

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A02:Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A0B()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x133

    const/16 v1, 0x9

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58308
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L0;->A01()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x182

    const/16 v1, 0xe

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 58310
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LX;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/LW;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LW;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 58311
    const/16 v2, 0x157

    const/16 v1, 0xc

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 58313
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A02(D)Ljava/lang/String;

    move-result-object v3

    .line 58314
    const/16 v2, 0x190

    const/16 v1, 0xc

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58315
    sget-object v5, Lcom/facebook/ads/redexgen/X/Xv;->A03:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 58316
    const/16 v2, 0x17

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const-string v1, "AqiFfSJaVcvWeekshHh0ldvtL31lvyuj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "9HeqxNTbWRKyR8KfBHSSaEFZWfPVqzw4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58317
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L8;->A02(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    .line 58318
    .local v0, "app_certs":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 58319
    :goto_0
    const/16 v2, 0x37

    const/4 v1, 0x5

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58320
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LC;->A05(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x19c

    const/4 v1, 0x5

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58321
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getMediationService()Ljava/lang/String;

    move-result-object v3

    .line 58322
    .local v4, "mediationService":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 58323
    const/16 v2, 0x146

    const/16 v1, 0x11

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58324
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A02:Lcom/facebook/ads/redexgen/X/8o;

    .line 58325
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A0C()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 58326
    const/4 v2, 0x2

    const/16 v1, 0x15

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A02:Lcom/facebook/ads/redexgen/X/8o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A03()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_4

    .line 58328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A02:Lcom/facebook/ads/redexgen/X/8o;

    .line 58329
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8o;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 58330
    const/16 v2, 0x24

    const/16 v1, 0x13

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58331
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 58332
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/92;->A05(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object v3

    .line 58333
    const/16 v2, 0x1ab

    const/16 v1, 0x9

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58334
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8n;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LG;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1e

    const/4 v1, 0x6

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J3;->A06(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58336
    invoke-static {}, Lcom/facebook/ads/internal/bridge/fbsdk/FBLoginASID;->getFBLoginASID()Ljava/lang/String;

    move-result-object v3

    .line 58337
    .local v0, "fbLoginASID":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 58338
    const/16 v2, 0x3c

    const/4 v1, 0x4

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58339
    .end local v0    # "fbLoginASID":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xs;->A02()Lcom/facebook/ads/redexgen/X/Xs;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xs;->A0C(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8Q;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8Q;->A6C()Lcom/facebook/ads/redexgen/X/8P;

    move-result-object v7

    .line 58340
    .local v0, "dataProcessingOptions":Lcom/facebook/ads/redexgen/X/8P;
    const/16 v2, 0xae

    const/16 v1, 0x1d

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x8f

    const/16 v1, 0x1f

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x78

    const/16 v1, 0x17

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_8

    .line 58341
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8P;->A09()Ljava/lang/String;

    move-result-object v0

    .line 58342
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58343
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8P;->A06()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58344
    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58345
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/8P;->A07()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58346
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58347
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x67

    const/16 v1, 0xa

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58348
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xv;->A00:Lcom/facebook/ads/redexgen/X/5p;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5p;->A03(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object v3

    .line 58349
    .local v0, "bidderTokenExtras":Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 58350
    const/16 v2, 0x4e

    const/16 v1, 0x13

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58351
    :cond_6
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HQ;->A0A()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10b

    const/16 v1, 0xd

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0I(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe4

    const/16 v1, 0xd

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 58354
    .local v3, "coreEventsSB":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/facebook/ads/redexgen/X/Xs;->A08:[Lcom/facebook/ads/redexgen/X/0T;

    .line 58355
    .local v2, "coreEvents":[Lcom/facebook/ads/redexgen/X/0T;
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_2
    array-length v0, v5

    if-ge v3, v0, :cond_a

    .line 58356
    aget-object v0, v5, v3

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0T;->A02()I

    move-result v0

    add-int/lit16 v0, v0, 0xfa0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58357
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_7

    .line 58358
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58359
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 58360
    :cond_8
    const/16 v2, 0x1bb

    const/4 v1, 0x4

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58361
    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58362
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 58363
    .local v0, "app_certs":Ljava/lang/String;
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const-string v1, "BCkwQrwTZAh8DbNWYHcyNfiOEn9j0AAp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Pk3Ope4wXmj489nPkHNYEkNTYlpVjL8G"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 58364
    .end local v1    # "i":I
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const-string v1, "RdA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v1, 0x12

    const/4 v0, 0x2

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58365
    return-object v4
.end method

.method public final A7H()Ljava/lang/String;
    .locals 1

    .line 58366
    invoke-static {}, Lcom/facebook/ads/redexgen/X/96;->A00()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A7I(Lcom/facebook/ads/redexgen/X/95;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7I(Lcom/facebook/ads/redexgen/X/95;)Ljava/lang/String;
    .locals 8

    .line 58367
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A08(Lcom/facebook/ads/redexgen/X/8D;Z)V

    .line 58368
    const/4 v5, 0x0

    .line 58369
    .local p0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 58370
    .local p1, "base64":Landroid/util/Base64OutputStream;
    const/4 v3, 0x0

    .line 58371
    .local v1, "zip":Ljava/util/zip/DeflaterOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    .line 58372
    const/4 v7, 0x0

    new-instance v0, Landroid/util/Base64OutputStream;

    invoke-direct {v0, v5, v7}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v4, v0

    .line 58373
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 58374
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Xv;->A6N()Ljava/util/Map;

    move-result-object v2

    .line 58375
    .local v0, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5b;->A08(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 58377
    :cond_0
    const/16 v6, 0x118

    const/4 v1, 0x4

    const/16 v0, 0x34

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 58378
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A03()Ljava/lang/String;

    move-result-object v0

    .line 58379
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58380
    const/16 v6, 0x1a1

    const/16 v1, 0xa

    const/16 v0, 0x2f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xv;->A02:Lcom/facebook/ads/redexgen/X/8o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 58381
    invoke-static {v1, v0, v7}, Lcom/facebook/ads/redexgen/X/9C;->A06(Lcom/facebook/ads/redexgen/X/8o;Lcom/facebook/ads/redexgen/X/8D;Z)Ljava/lang/String;

    move-result-object v0

    .line 58382
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xv;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58384
    const/16 v6, 0x67

    const/16 v1, 0xa

    const/16 v0, 0x45

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58385
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 58386
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58387
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/95;->A2O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58388
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 58389
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 58390
    .local v4, "envParameters":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 58391
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 58392
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58393
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 58394
    invoke-virtual {v4}, Landroid/util/Base64OutputStream;->close()V

    .line 58395
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58396
    :catch_0
    return-object v0

    .line 58397
    :catch_1
    move-exception v6

    .line 58398
    :try_start_2
    const/16 v2, 0xf1

    const/16 v1, 0x1a

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "base64":Landroid/util/Base64OutputStream;
    .end local v1    # "zip":Ljava/util/zip/DeflaterOutputStream;
    .end local v0    # "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58399
    .end local v0
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "envParameters":Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58400
    .end local v0
    .restart local p0    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "base64":Landroid/util/Base64OutputStream;
    .restart local v1    # "zip":Ljava/util/zip/DeflaterOutputStream;
    .restart local v0    # "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xv;->A05:[Ljava/lang/String;

    const-string v1, "tBEywTa582eygB6ZDfuZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "t5OASyUSxnrvHDDzBp0B"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 58401
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 58402
    :cond_5
    if-eqz v4, :cond_6

    .line 58403
    invoke-virtual {v4}, Landroid/util/Base64OutputStream;->close()V

    .line 58404
    :cond_6
    if-eqz v5, :cond_7

    .line 58405
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 58406
    :catch_2
    :cond_7
    throw v6
.end method
