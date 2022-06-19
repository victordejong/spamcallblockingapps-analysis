.class public final Lcom/facebook/ads/redexgen/X/91;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/90;
    }
.end annotation


# static fields
.field public static A00:Z

.field public static A01:Z

.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A05:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A06:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 19210
    invoke-static {}, Lcom/facebook/ads/redexgen/X/91;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/91;->A03()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/91;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19211
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/91;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19212
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/91;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/KR;
    .locals 1

    .line 19214
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Xh;-><init>()V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/Kh;
    .locals 1

    .line 19215
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xi;-><init>(Lcom/facebook/ads/redexgen/X/XK;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/91;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    const-string v1, "IDfTBPjSyvL4biEe7dLkbKSavqcQmadb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Oy3yacq1X2KDRnpIDSUXWs28RTZJmhMt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

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

.method public static A03()V
    .locals 1

    const/16 v0, 0xde

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/91;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x39t
        -0x35t
        -0x3dt
        -0x3bt
        -0x35t
        -0x39t
        -0xat
        -0x3at
        -0x42t
        -0x46t
        -0x47t
        -0x13t
        -0x24t
        -0x1ft
        -0x23t
        -0x1at
        -0x25t
        -0x23t
        -0x3at
        -0x23t
        -0x14t
        -0x11t
        -0x19t
        -0x16t
        -0x1dt
        -0x3et
        -0x4dt
        -0x46t
        -0x71t
        -0x28t
        -0x23t
        -0x28t
        -0x1dt
        -0x28t
        -0x30t
        -0x25t
        -0x28t
        -0x17t
        -0x30t
        -0x1dt
        -0x28t
        -0x22t
        -0x23t
        -0x71t
        -0x1et
        -0x1dt
        -0x30t
        -0x1ft
        -0x1dt
        -0x2ct
        -0x2dt
        -0x3ct
        -0x2bt
        -0x24t
        -0x6ft
        -0x18t
        -0x2et
        -0x1ct
        -0x6ft
        -0x2et
        -0x23t
        -0x1dt
        -0x2at
        -0x2et
        -0x2bt
        -0x16t
        -0x6ft
        -0x26t
        -0x21t
        -0x26t
        -0x1bt
        -0x26t
        -0x2et
        -0x23t
        -0x26t
        -0x15t
        -0x2at
        -0x2bt
        -0x6et
        -0x6ft
        -0x3ct
        -0x24t
        -0x26t
        -0x1ft
        -0x1ft
        -0x26t
        -0x21t
        -0x28t
        -0x61t
        -0x3et
        -0x28t
        -0x22t
        -0x77t
        -0x33t
        -0x28t
        -0x29t
        -0x70t
        -0x23t
        -0x77t
        -0x34t
        -0x36t
        -0x2bt
        -0x2bt
        -0x77t
        -0x56t
        -0x22t
        -0x33t
        -0x2et
        -0x32t
        -0x29t
        -0x34t
        -0x32t
        -0x49t
        -0x32t
        -0x23t
        -0x20t
        -0x28t
        -0x25t
        -0x2ct
        -0x56t
        -0x33t
        -0x24t
        -0x69t
        -0x2et
        -0x29t
        -0x2et
        -0x23t
        -0x2et
        -0x36t
        -0x2bt
        -0x2et
        -0x1dt
        -0x32t
        -0x6ft
        -0x6et
        -0x69t
        -0x77t
        -0x44t
        -0x28t
        -0x2at
        -0x32t
        -0x77t
        -0x31t
        -0x22t
        -0x29t
        -0x34t
        -0x23t
        -0x2et
        -0x28t
        -0x29t
        -0x36t
        -0x2bt
        -0x2et
        -0x23t
        -0x1et
        -0x77t
        -0x2at
        -0x36t
        -0x1et
        -0x77t
        -0x29t
        -0x28t
        -0x23t
        -0x77t
        -0x20t
        -0x28t
        -0x25t
        -0x2ct
        -0x77t
        -0x27t
        -0x25t
        -0x28t
        -0x27t
        -0x32t
        -0x25t
        -0x2bt
        -0x1et
        -0x69t
        -0x42t
        -0x33t
        -0x3at
        -0x1ft
        -0x21t
        -0x18t
        -0x21t
        -0x14t
        -0x1dt
        -0x23t
        -0x9t
        -0x4t
        -0x9t
        0x2t
        -0x9t
        -0x11t
        -0x6t
        -0x9t
        0x8t
        -0xdt
        0x5t
        0xat
        0x5t
        0x10t
        0x5t
        -0x3t
        0x8t
        0x5t
        0x16t
        0x1t
        -0x3ct
        -0x3bt
        -0x44t
        0xat
        0xbt
        0x10t
        -0x44t
        -0x1t
        -0x3t
        0x8t
        0x8t
        0x1t
        0x0t
        -0x36t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qrNp1wG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4f9SKAEMWw8LBpPH9ClfYFaSVVluVAOE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "62aVnpwn360RV3u8SEcmxFYidJmBvefX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Gce9ySP9MgoEln4cNVrEo5sJO8CSkBrv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GAv6eBsy68sSiadtgyjEU9blJSusD372"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OMedkGV5dbFzDsS0dZcen"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wlEAAxVLaYYUt0VSnPi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2B4l1t7rFez9Iyb0KdS6JKEUq9HBo8Fu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 2

    .line 19216
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lc;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xg;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Xg;-><init>(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lc;->execute(Ljava/lang/Runnable;)V

    .line 19217
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 0

    .line 19218
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 19219
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/91;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 19220
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19221
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 19222
    .local p0, "defaultUncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Xk;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Xk;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/8U;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/8U;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/8T;)V

    .line 19223
    .local v0, "reportHandler":Lcom/facebook/ads/redexgen/X/8U;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19224
    :catch_0
    move-exception v0

    .line 19225
    .local p0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1G:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 19226
    const/16 v2, 0xb5

    const/4 v1, 0x7

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19227
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 2

    .line 19228
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A0G(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19229
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 2

    .line 19230
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A0G(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19231
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 1

    .line 19232
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A1N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19233
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/91;->A0F(Lcom/facebook/ads/redexgen/X/XK;I)V

    .line 19234
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19235
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/91;->A0C(Lcom/facebook/ads/redexgen/X/XK;)V

    .line 19236
    :cond_1
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 2

    .line 19237
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A1O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19238
    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A0H(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19239
    :cond_0
    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 2

    .line 19240
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lm;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xf;-><init>(Lcom/facebook/ads/redexgen/X/XK;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19241
    return-void
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 3

    .line 19242
    new-instance v2, Lcom/facebook/ads/redexgen/X/Xl;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Xl;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Xm;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Xm;-><init>()V

    .line 19243
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 19244
    invoke-static {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0D(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/8X;Lcom/facebook/ads/redexgen/X/8W;Z)V

    .line 19245
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/br;->A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/JC;

    .line 19246
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5r;->A05(Lcom/facebook/ads/redexgen/X/XK;Ljava/lang/String;)V

    .line 19247
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 0

    .line 19248
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/91;->A0D(Lcom/facebook/ads/redexgen/X/XK;)V

    return-void
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/XK;I)V
    .locals 6

    .line 19249
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8C;->A01(Lcom/facebook/ads/redexgen/X/XK;)V

    .line 19250
    sget-object v1, Lcom/facebook/ads/redexgen/X/91;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19251
    return-void

    .line 19252
    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebuggerOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19253
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jz;->A02()V

    .line 19254
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/91;->A07(Lcom/facebook/ads/redexgen/X/XK;)V

    .line 19255
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0k(Landroid/content/Context;)Z

    move-result v3

    .line 19256
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v2

    .line 19257
    invoke-static {}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/KR;

    move-result-object v1

    .line 19258
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/91;->A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/Kh;

    move-result-object v0

    .line 19259
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ke;->A00(ZZLcom/facebook/ads/redexgen/X/KR;Lcom/facebook/ads/redexgen/X/Kh;)V

    .line 19260
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A02(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    .line 19261
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5k;->A04(J)V

    .line 19262
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xj;-><init>(Lcom/facebook/ads/redexgen/X/XK;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0A(Lcom/facebook/ads/redexgen/X/QI;)V

    .line 19263
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 19264
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/16 v1, 0x59

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19265
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0G:I

    const/16 v2, 0xc6

    const/16 v1, 0x18

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 19266
    const/16 v2, 0xb2

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8l(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19267
    :cond_3
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ks;->A05(Lcom/facebook/ads/redexgen/X/XK;)V

    .line 19268
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lm;->A06(Landroid/content/Context;)V

    .line 19269
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JM;->A03(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 19270
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/0u;->A0D(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 19271
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19272
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4p;->A00(Landroid/content/Context;)V

    .line 19273
    :cond_4
    return-void
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 5
    .param p1    # Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v2, 0xbc

    const/16 v1, 0xa

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x19

    const/16 v1, 0x1a

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19274
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->A06()V

    .line 19275
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/91;->A0H(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19276
    return-void
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 3
    .param p1    # Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 19277
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8C;->A01(Lcom/facebook/ads/redexgen/X/XK;)V

    .line 19278
    const/4 v2, 0x0

    .line 19279
    .local p0, "execute":Z
    const-class v1, Lcom/facebook/ads/redexgen/X/91;

    monitor-enter v1

    .line 19280
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/91;->A00:Z

    const/4 p1, 0x1

    if-nez v0, :cond_2

    .line 19281
    if-eq p3, p1, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 19282
    :cond_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 19283
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/91;->A01:Z

    if-nez v0, :cond_2

    .line 19284
    sput-boolean p1, Lcom/facebook/ads/redexgen/X/91;->A01:Z

    .line 19285
    const/4 v2, 0x1

    goto :goto_1

    .line 19286
    :cond_1
    :goto_0
    sput-boolean p1, Lcom/facebook/ads/redexgen/X/91;->A00:Z

    .line 19287
    const/4 v2, 0x1

    .line 19288
    :cond_2
    :goto_1
    monitor-exit v1

    .line 19289
    if-eqz v2, :cond_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19290
    invoke-static {p0, p3}, Lcom/facebook/ads/redexgen/X/91;->A0F(Lcom/facebook/ads/redexgen/X/XK;I)V

    .line 19291
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lm;->A08:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xe;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/redexgen/X/Xe;-><init>(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19292
    .end local p1    # null:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
    :cond_3
    :goto_2
    return-void

    .line 19293
    :cond_4
    if-ne p3, p1, :cond_3

    .line 19294
    const/16 v2, 0x33

    const/16 v1, 0x26

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object p0

    .line 19295
    .local p1, "alreadyInitializedMessage":Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 19296
    new-instance v0, Lcom/facebook/ads/redexgen/X/90;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/90;-><init>(ZLjava/lang/String;)V

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    goto :goto_2

    .line 19297
    :cond_5
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 19298
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized A0I()Z
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/91;

    monitor-enter v1

    .line 19299
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/91;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
