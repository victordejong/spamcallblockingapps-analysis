.class public final Lcom/facebook/ads/redexgen/X/aD;
.super Lcom/facebook/ads/redexgen/X/NS;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/aG;,
        Lcom/facebook/ads/redexgen/X/NW;,
        Lcom/facebook/ads/redexgen/X/aF;,
        Lcom/facebook/ads/redexgen/X/NX;,
        Lcom/facebook/ads/redexgen/X/NU;,
        Lcom/facebook/ads/redexgen/X/NV;
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/La;

.field public A02:Lcom/facebook/ads/redexgen/X/QD;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/QE;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public final A05:Landroid/graphics/Path;

.field public final A06:Landroid/graphics/RectF;

.field public final A07:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A08:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/NV;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0B:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 67049
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aD;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aD;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/aD;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aD;->A0F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/ref/WeakReference;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/NV;",
            ">;I)V"
        }
    .end annotation

    .line 67050
    .local v0, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67051
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67052
    const/4 v3, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67053
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A05:Landroid/graphics/Path;

    .line 67054
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A06:Landroid/graphics/RectF;

    .line 67055
    const/16 v1, 0x1388

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A0B:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67056
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67057
    new-instance v0, Lcom/facebook/ads/redexgen/X/La;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/La;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A01:Lcom/facebook/ads/redexgen/X/La;

    .line 67058
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/aD;->A04:Z

    .line 67059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aD;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67060
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aD;->A08:Ljava/lang/ref/WeakReference;

    .line 67061
    new-instance v0, Lcom/facebook/ads/redexgen/X/aH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aH;-><init>(Lcom/facebook/ads/redexgen/X/aD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A02:Lcom/facebook/ads/redexgen/X/QD;

    .line 67062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A02:Lcom/facebook/ads/redexgen/X/QD;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aD;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QE;

    invoke-direct {v0, p0, p3, v2, v1}, Lcom/facebook/ads/redexgen/X/QE;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    .line 67063
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aD;->A0D()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aD;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 67064
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aD;->A0E()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aD;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67065
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aD;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 67066
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aD;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 67067
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-le v1, v0, :cond_0

    .line 67068
    new-instance v3, Lcom/facebook/ads/redexgen/X/NU;

    .line 67069
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/NV;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/aD;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/aD;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/aD;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/aD;Lcom/facebook/ads/redexgen/X/NV;Lcom/facebook/ads/redexgen/X/QE;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67070
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aD;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/aD;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67071
    :cond_0
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aD;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 67072
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aD;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/aD;)Lcom/facebook/ads/redexgen/X/La;
    .locals 0

    .line 67073
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aD;->A01:Lcom/facebook/ads/redexgen/X/La;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/aD;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/aD;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/aD;->A0E:[Ljava/lang/String;

    const-string v1, "qkBM5EbEKD4bLDmS2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5e

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/aD;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 67074
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aD;->A08:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private A06()V
    .locals 3

    .line 67075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEW()V

    .line 67076
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aD;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67077
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/aF;-><init>(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 67078
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67079
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aD;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x17t
        0xct
        -0x15t
        0x17t
        0x16t
        0x1ct
        0x1at
        0x17t
        0x14t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8gq0YClbFfezV7VWazRrkmUo5IqHlAe0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DZEC2fF8R1zbFaxtc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FhN1N87P5UC3PnJCVDWnxEC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JmSzPmcyjiRof3lizahs2qZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "A3Evrr3LcR4BJzz79LIh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2a6NLKfKqYFtWGCWoigE8lnPrM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Nz12Z6hGfXPsqa2uThDzH9TN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eI6gTMB0yvKckA2LC3VZ0zYV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aD;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/aD;)V
    .locals 0

    .line 67080
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aD;->A06()V

    return-void
.end method

.method private final A0A()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 67081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/aD;)Z
    .locals 0

    .line 67082
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/aD;->A04:Z

    return p0
.end method


# virtual methods
.method public final A0D()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 67083
    new-instance v0, Lcom/facebook/ads/redexgen/X/NW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/NW;-><init>()V

    return-object v0
.end method

.method public final A0E()Landroid/webkit/WebViewClient;
    .locals 10

    .line 67084
    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aD;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aD;->A08:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A01:Lcom/facebook/ads/redexgen/X/La;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/aD;->A0B:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/aD;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/NX;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v1
.end method

.method public final A0F(II)V
    .locals 1

    .line 67085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    if-eqz v0, :cond_0

    .line 67086
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QE;->A0X(I)V

    .line 67087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/QE;->A0Y(I)V

    .line 67088
    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 67089
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 67090
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QE;->A0W()V

    .line 67091
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    .line 67092
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 67093
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A02:Lcom/facebook/ads/redexgen/X/QD;

    .line 67094
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A01:Lcom/facebook/ads/redexgen/X/La;

    .line 67095
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/NY;->A04(Landroid/webkit/WebView;)V

    .line 67096
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/NS;->destroy()V

    .line 67097
    return-void
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/La;
    .locals 1

    .line 67098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A01:Lcom/facebook/ads/redexgen/X/La;

    return-object v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;
    .locals 1

    .line 67099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 67100
    iget v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A00:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 67101
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aD;->A06:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aD;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aD;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 67102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A05:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 67103
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aD;->A05:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aD;->A06:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/aD;->A00:F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v1, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 67104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A05:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 67105
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NS;->onDraw(Landroid/graphics/Canvas;)V

    .line 67106
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 67107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A01:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/La;->A07(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 67108
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NS;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    .line 67109
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NS;->onWindowVisibilityChanged(I)V

    .line 67110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A08:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A08:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 67112
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    if-nez v0, :cond_1

    .line 67113
    return-void

    .line 67114
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A07:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->AEj(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/aD;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 67115
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/aD;->A0E:[Ljava/lang/String;

    const-string v1, "DtJWCHxLbH6gtxJRxIB1oyEG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "cIpyg99BbIZ2paT5Gicx86FT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aD;->A0A()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0V()V

    .line 67117
    :cond_3
    :goto_0
    return-void

    .line 67118
    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 67119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A03:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0W()V

    goto :goto_0
.end method

.method public setCheckAssetsByJavascriptBridge(Z)V
    .locals 1

    .line 67120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67121
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 67122
    iput p1, p0, Lcom/facebook/ads/redexgen/X/aD;->A00:F

    .line 67123
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aD;->invalidate()V

    .line 67124
    return-void
.end method

.method public setLogMultipleImpressions(Z)V
    .locals 0

    .line 67125
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/aD;->A04:Z

    .line 67126
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    .line 67127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67128
    return-void
.end method

.method public setWebViewTimeoutInMillis(I)V
    .locals 1

    .line 67129
    if-ltz p1, :cond_0

    .line 67130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A0B:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 67131
    :cond_0
    return-void
.end method
