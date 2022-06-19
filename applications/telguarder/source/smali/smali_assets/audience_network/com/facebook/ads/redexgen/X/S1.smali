.class public final Lcom/facebook/ads/redexgen/X/S1;
.super Lcom/facebook/ads/redexgen/X/NN;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/S4;,
        Lcom/facebook/ads/redexgen/X/NR;,
        Lcom/facebook/ads/redexgen/X/S3;,
        Lcom/facebook/ads/redexgen/X/NS;,
        Lcom/facebook/ads/redexgen/X/NP;,
        Lcom/facebook/ads/redexgen/X/NQ;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/Lc;

.field public A02:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public A05:Z

.field public final A06:Landroid/graphics/Path;

.field public final A07:Landroid/graphics/RectF;

.field public final A08:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A09:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/NQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final A0D:Ljava/util/concurrent/atomic/AtomicReference;
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

    .line 51146
    invoke-static {}, Lcom/facebook/ads/redexgen/X/S1;->A09()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/S1;->A08()V

    const-class v0, Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/S1;->A0G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/ref/WeakReference;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/NQ;",
            ">;I)V"
        }
    .end annotation

    .line 51147
    .local p3, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/S1;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/ref/WeakReference;IZ)V

    .line 51148
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/ref/WeakReference;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/NQ;",
            ">;IZ)V"
        }
    .end annotation

    .line 51149
    .local v0, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NN;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51151
    const/4 v3, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51152
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A06:Landroid/graphics/Path;

    .line 51153
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A07:Landroid/graphics/RectF;

    .line 51154
    const/16 v1, 0x1388

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A0C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A0D:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51156
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51157
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/S1;->A05:Z

    .line 51158
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S1;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51159
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/S1;->A04:Z

    .line 51160
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/S1;->A09:Ljava/lang/ref/WeakReference;

    .line 51161
    new-instance v0, Lcom/facebook/ads/redexgen/X/S5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S5;-><init>(Lcom/facebook/ads/redexgen/X/S1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A02:Lcom/facebook/ads/redexgen/X/Q8;

    .line 51162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A02:Lcom/facebook/ads/redexgen/X/Q8;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S1;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-direct {v0, p0, p3, v2, v1}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    .line 51163
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S1;->A0E()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/S1;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 51164
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S1;->A0F()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/S1;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51165
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S1;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 51166
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S1;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 51167
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-le v1, v0, :cond_0

    .line 51168
    new-instance v3, Lcom/facebook/ads/redexgen/X/NP;

    .line 51169
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/NQ;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/S1;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/S1;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/S1;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/NP;-><init>(Lcom/facebook/ads/redexgen/X/S1;Lcom/facebook/ads/redexgen/X/NQ;Lcom/facebook/ads/redexgen/X/Q9;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51170
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S1;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/S1;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51171
    :cond_0
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/S1;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 51172
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S1;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/S1;)Lcom/facebook/ads/redexgen/X/Lc;
    .locals 0

    .line 51173
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S1;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    return-object p0
.end method

.method public static synthetic A04()Ljava/lang/String;
    .locals 1

    .line 51174
    sget-object v0, Lcom/facebook/ads/redexgen/X/S1;->A0G:Ljava/lang/String;

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/S1;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x34

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/S1;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 51175
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S1;->A09:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private A07()V
    .locals 3

    .line 51176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEY()V

    .line 51177
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S1;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51178
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/S3;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/S3;-><init>(Lcom/facebook/ads/redexgen/X/Q9;)V

    .line 51179
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51180
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/S1;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x2et
        0xbt
        0x2ct
        0x0t
        0x1t
        0x1bt
        0x1dt
        0x0t
        0x3t
    .end array-data
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "X5ywJXgSTO8PHmyyLHkjy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LJCQW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "068uN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "say"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rTIjgGKqeW39zjdqZS0Aqu4tLxC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Qrp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m8T4zYbfVU3hLt0iEDnj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pXMACVxBUOAUm1D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/S1;->A0F:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/S1;)V
    .locals 0

    .line 51181
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S1;->A07()V

    return-void
.end method

.method private final A0B()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 51182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/S1;)Z
    .locals 0

    .line 51183
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/S1;->A05:Z

    return p0
.end method


# virtual methods
.method public final A0E()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 51184
    new-instance v0, Lcom/facebook/ads/redexgen/X/NR;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/NR;-><init>()V

    return-object v0
.end method

.method public final A0F()Landroid/webkit/WebViewClient;
    .locals 11

    .line 51185
    new-instance v1, Lcom/facebook/ads/redexgen/X/NS;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S1;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S1;->A09:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/S1;->A0C:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/S1;->A0D:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/S1;->A04:Z

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-object v1
.end method

.method public final A0G(II)V
    .locals 1

    .line 51186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    if-eqz v0, :cond_0

    .line 51187
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Q9;->A0X(I)V

    .line 51188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Q9;->A0Y(I)V

    .line 51189
    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 51190
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 51191
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0W()V

    .line 51192
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    .line 51193
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 51194
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A02:Lcom/facebook/ads/redexgen/X/Q8;

    .line 51195
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    .line 51196
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/NT;->A03(Landroid/webkit/WebView;)V

    .line 51197
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/NN;->destroy()V

    .line 51198
    return-void
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lc;
    .locals 1

    .line 51199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    return-object v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;
    .locals 1

    .line 51200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 51201
    iget v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 51202
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S1;->A07:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S1;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S1;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/S1;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51203
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/S1;->A0F:[Ljava/lang/String;

    const-string v1, "xZYpx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "aqsn9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A06:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 51204
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S1;->A06:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S1;->A07:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v1, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 51205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A06:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 51206
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NN;->onDraw(Landroid/graphics/Canvas;)V

    .line 51207
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 51208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A01:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Lc;->A07(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 51209
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NN;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 4

    .line 51210
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NN;->onWindowVisibilityChanged(I)V

    .line 51211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A09:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A09:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 51213
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    if-nez v0, :cond_1

    .line 51214
    return-void

    .line 51215
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S1;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    sget-object v2, Lcom/facebook/ads/redexgen/X/S1;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/S1;->A0F:[Ljava/lang/String;

    const-string v1, "5ON080OOKwQwIFP5OG7h"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "JBDgk0gsadULglMDLs8S8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->AEm(I)V

    .line 51216
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S1;->A0B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 51218
    :cond_2
    :goto_0
    return-void

    .line 51219
    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 51220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0W()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setBlockLocalFileAccessOutsideCache(Z)V
    .locals 0

    .line 51221
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/S1;->A04:Z

    .line 51222
    return-void
.end method

.method public setCheckAssetsByJavascriptBridge(Z)V
    .locals 1

    .line 51223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51224
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 51225
    iput p1, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:F

    .line 51226
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S1;->invalidate()V

    .line 51227
    return-void
.end method

.method public setLogMultipleImpressions(Z)V
    .locals 0

    .line 51228
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/S1;->A05:Z

    .line 51229
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    .line 51230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A0D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 51231
    return-void
.end method

.method public setWebViewTimeoutInMillis(I)V
    .locals 1

    .line 51232
    if-ltz p1, :cond_0

    .line 51233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A0C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 51234
    :cond_0
    return-void
.end method
