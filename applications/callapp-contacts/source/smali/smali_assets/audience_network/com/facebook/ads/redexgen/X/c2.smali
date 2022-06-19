.class public final Lcom/facebook/ads/redexgen/X/c2;
.super Lcom/facebook/ads/redexgen/X/55;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/DefaultMediaViewVideoRendererApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/c1;,
        Lcom/facebook/ads/redexgen/X/JR;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A01:Lcom/facebook/ads/redexgen/X/XJ;

.field public A02:Lcom/facebook/ads/redexgen/X/JR;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Jd;

.field public A04:Lcom/facebook/ads/redexgen/X/At;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/7Z;

.field public A06:Lcom/facebook/ads/redexgen/X/7U;

.field public A07:Lcom/facebook/ads/redexgen/X/QD;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A08:Lcom/facebook/ads/redexgen/X/QE;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/PL;

.field public final A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0E:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 71429
    invoke-static {}, Lcom/facebook/ads/redexgen/X/c2;->A0F()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/c2;->A0E()V

    const-class v0, Lcom/facebook/ads/redexgen/X/c2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/c2;->A0H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71430
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/55;-><init>()V

    .line 71431
    new-instance v0, Lcom/facebook/ads/redexgen/X/bw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bw;-><init>(Lcom/facebook/ads/redexgen/X/c2;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0C:Lcom/facebook/ads/redexgen/X/PL;

    .line 71432
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71433
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71434
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A03:Lcom/facebook/ads/redexgen/X/Jd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A03:Lcom/facebook/ads/redexgen/X/Jd;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/c2;)Lcom/facebook/ads/redexgen/X/JR;
    .locals 0

    .line 71435
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c2;->A02:Lcom/facebook/ads/redexgen/X/JR;

    return-object p0
.end method

.method private A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 1

    .line 71436
    new-instance v0, Lcom/facebook/ads/redexgen/X/bx;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/bx;-><init>(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 1

    .line 71437
    new-instance v0, Lcom/facebook/ads/redexgen/X/by;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/by;-><init>(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    .line 71438
    .local p0, "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/JT;
    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/c2;)Lcom/facebook/ads/redexgen/X/At;
    .locals 0

    .line 71439
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c2;->A04:Lcom/facebook/ads/redexgen/X/At;

    return-object p0
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/QD;
    .locals 1

    .line 71440
    new-instance v0, Lcom/facebook/ads/redexgen/X/c0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/c0;-><init>(Lcom/facebook/ads/redexgen/X/c2;)V

    return-object v0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/QE;
    .locals 7

    .line 71441
    new-instance v1, Lcom/facebook/ads/redexgen/X/QE;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/c2;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A07:Lcom/facebook/ads/redexgen/X/QD;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/c2;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/QE;-><init>(Landroid/view/View;IZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XJ;)V

    return-object v1
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/c2;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/c2;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 71442
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/c2;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 71443
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A09()V
    .locals 4

    .line 71444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A04:Lcom/facebook/ads/redexgen/X/At;

    if-eqz v0, :cond_1

    .line 71445
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getVideoView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/PM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const-string v1, "uL1T6UePNJ7Kw1irCYcqiA1GlgiEZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "2BZHbySyGqLzqR4K5b7TQMpiAd64K"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0C:Lcom/facebook/ads/redexgen/X/PL;

    .line 71446
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/PM;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 71447
    :cond_1
    return-void
.end method

.method private A0A()V
    .locals 2

    .line 71448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A04:Lcom/facebook/ads/redexgen/X/At;

    if-eqz v0, :cond_0

    .line 71449
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getVideoView()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JQ;-><init>(Lcom/facebook/ads/redexgen/X/c2;)V

    .line 71450
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71451
    :cond_0
    return-void
.end method

.method private A0B()V
    .locals 4

    .line 71452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A04:Lcom/facebook/ads/redexgen/X/At;

    if-eqz v0, :cond_0

    .line 71453
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getVideoView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/PM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const-string v1, "MUEPyY1MJMWvhU3XHu"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/PM;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 71454
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0C()V
    .locals 4

    .line 71455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A09:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c2;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const-string v1, "vtumVYeB8x7vkBeCNzRl37Vgwgf5m"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "l5c2Nb35iHyego1JNAmcVzJY15xyfp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A08:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0V()V

    .line 71457
    :goto_0
    return-void

    .line 71458
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A04:Lcom/facebook/ads/redexgen/X/At;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_1

    .line 71459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0B:Z

    .line 71460
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A08:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0W()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D()V
    .locals 1

    .line 71461
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A03:Lcom/facebook/ads/redexgen/X/Jd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A03:Lcom/facebook/ads/redexgen/X/Jd;

    .line 71462
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A0B()V

    .line 71463
    return-void
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/c2;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x20t
        0x38t
        0x2ft
        0x22t
        0x27t
        0x2at
        0x6et
        0x3ct
        0x2bt
        0x20t
        0x2at
        0x2bt
        0x3ct
        0x2bt
        0x3ct
        0x6et
        0x2dt
        0x26t
        0x27t
        0x22t
        0x2at
        0x6et
        0x2dt
        0x21t
        0x20t
        0x28t
        0x27t
        0x29t
        0x60t
        0xet
        0x26t
        0x27t
        0x2at
        0x22t
        0x15t
        0x2at
        0x26t
        0x34t
        0x15t
        0x2at
        0x27t
        0x26t
        0x2ct
        0x63t
        0x2at
        0x30t
        0x63t
        0x2dt
        0x36t
        0x2ft
        0x2ft
        0x78t
        0x63t
        0x36t
        0x2dt
        0x22t
        0x21t
        0x2ft
        0x26t
        0x63t
        0x37t
        0x2ct
        0x63t
        0x25t
        0x2at
        0x2dt
        0x27t
        0x63t
        0x2at
        0x37t
        0x6dt
        0x10t
        0x2bt
        0x24t
        0x27t
        0x29t
        0x20t
        0x65t
        0x31t
        0x2at
        0x65t
        0x23t
        0x2ct
        0x2bt
        0x21t
        0x65t
        0x8t
        0x20t
        0x21t
        0x2ct
        0x24t
        0x13t
        0x2ct
        0x20t
        0x32t
        0x13t
        0x2ct
        0x21t
        0x20t
        0x2at
        0x65t
        0x26t
        0x2dt
        0x2ct
        0x29t
        0x21t
        0x6bt
    .end array-data
.end method

.method public static A0F()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mcYgxpLQMmIwsDd5yEmcOVEUvqtoI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GHoJM0N9xHnxy27wJlEicj6316JJBG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sAgmez8xlBVRjdgohc9cPNZKpCHjl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UXd4O0RMEZeMz8rPKuZc9Jx8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lkMSGOb1N9f2znZPpxO7v43dGPgWn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZJq7h5cFUWj9FCmvTSQNl6xA6rnC8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yifDfgH7QVrqMR4w0vNHSMY9h4Ewh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QZpfE8IVFABXRQwraZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/c2;)V
    .locals 0

    .line 71464
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A0D()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/JR;)V
    .locals 0

    .line 71465
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/c2;->A0J(Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/JR;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/redexgen/X/PO;)V
    .locals 0

    .line 71466
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/c2;->A0K(Lcom/facebook/ads/redexgen/X/PO;)V

    return-void
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/JR;)V
    .locals 5
    .param p2    # Lcom/facebook/ads/redexgen/X/JR;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0A:Z

    .line 71468
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0B:Z

    .line 71469
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/c2;->A02:Lcom/facebook/ads/redexgen/X/JR;

    .line 71470
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A09()V

    .line 71471
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c2;->A05:Lcom/facebook/ads/redexgen/X/7Z;

    .line 71472
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cD;->A12()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const-string v1, "zpp3cHPhluFOPvL30kkcY8af"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    .line 71473
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cD;->A12()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 71474
    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/bz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bz;-><init>(Lcom/facebook/ads/redexgen/X/c2;)V

    .line 71475
    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7Z;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nb;)V

    .line 71476
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cD;->A17()Lcom/facebook/ads/redexgen/X/Jd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A03:Lcom/facebook/ads/redexgen/X/Jd;

    .line 71477
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A06:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cD;->A1D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7U;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 71478
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A06:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cD;->A1C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7U;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 71479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A08:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0V()V

    .line 71480
    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/PO;)V
    .locals 4

    .line 71481
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A04:Lcom/facebook/ads/redexgen/X/At;

    if-eqz v1, :cond_1

    .line 71482
    const/16 v0, 0x18

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 71483
    :cond_0
    :goto_0
    return-void

    .line 71484
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71485
    sget-object v3, Lcom/facebook/ads/redexgen/X/c2;->A0H:Ljava/lang/String;

    const/16 v2, 0x1e

    const/16 v1, 0x2a

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c2;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private A0L()Z
    .locals 3

    .line 71486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A04:Lcom/facebook/ads/redexgen/X/At;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_1

    .line 71487
    :cond_0
    return v2

    .line 71488
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A03:Lcom/facebook/ads/redexgen/X/Jd;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A05:Lcom/facebook/ads/redexgen/X/Jd;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A03:Lcom/facebook/ads/redexgen/X/Jd;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A03:Lcom/facebook/ads/redexgen/X/Jd;

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/c2;)Z
    .locals 0

    .line 71489
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0B:Z

    return p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/c2;)Z
    .locals 0

    .line 71490
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/c2;->A0A:Z

    return p0
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/c2;)Z
    .locals 0

    .line 71491
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A0L()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/c2;Z)Z
    .locals 0

    .line 71492
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/c2;->A0B:Z

    return p1
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/c2;Z)Z
    .locals 0

    .line 71493
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/c2;->A0A:Z

    return p1
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/MediaViewVideoRenderer;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;I)V
    .locals 7

    .line 71494
    invoke-interface {p3}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/55;

    .line 71495
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/55;->A01(Lcom/facebook/ads/internal/api/AdComponentViewApi;)V

    .line 71496
    if-eqz p4, :cond_5

    const/4 v0, 0x1

    if-ne p4, v0, :cond_7

    .line 71497
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/c2;->A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v4

    .line 71498
    .local p0, "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/JT;
    :goto_0
    check-cast p3, Lcom/facebook/ads/redexgen/X/5B;

    .line 71499
    invoke-virtual {p3, v4}, Lcom/facebook/ads/redexgen/X/5B;->A07(Lcom/facebook/ads/redexgen/X/JT;)V

    .line 71500
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 71501
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/c2;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 71502
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7Z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7Z;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A05:Lcom/facebook/ads/redexgen/X/7Z;

    .line 71503
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A04()Lcom/facebook/ads/redexgen/X/QD;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A07:Lcom/facebook/ads/redexgen/X/QD;

    .line 71504
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A05()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A08:Lcom/facebook/ads/redexgen/X/QE;

    .line 71505
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    .line 71506
    .local p1, "density":F
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 71507
    .local p2, "smallPadding":I
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 71508
    .local p3, "bigPadding":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7U;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7U;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A06:Lcom/facebook/ads/redexgen/X/7U;

    .line 71509
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71510
    .local p4, "playPauseParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71511
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A06:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {v0, v3, v2, v2, v3}, Lcom/facebook/ads/redexgen/X/7U;->setPadding(IIII)V

    .line 71513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A06:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7U;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71514
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const-string v1, "oEzbzrDqpY4LpZuK9aeaZZijHYv0V"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "65U2aK7TrzSKlLOXQMMYyslcv3rZK"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v5, 0x0

    if-ge v3, v6, :cond_1

    .line 71515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 71516
    .local v0, "child":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/At;

    if-eqz v0, :cond_4

    .line 71517
    check-cast v1, Lcom/facebook/ads/redexgen/X/At;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A04:Lcom/facebook/ads/redexgen/X/At;

    .line 71518
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A04:Lcom/facebook/ads/redexgen/X/At;

    if-nez v1, :cond_3

    .line 71519
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71520
    sget-object v3, Lcom/facebook/ads/redexgen/X/c2;->A0H:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x24

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c2;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71521
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A08:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/QE;->A0X(I)V

    .line 71522
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A08:Lcom/facebook/ads/redexgen/X/QE;

    const/16 v0, 0xfa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QE;->A0Y(I)V

    .line 71523
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/JT;->ADl()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 71524
    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const-string v1, "NjD77g9sbns6FUonJskLzorZMVzfs"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "sF6jyMJNRDvSJleY8k7g51skJQqlgl"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 71525
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A05:Lcom/facebook/ads/redexgen/X/7Z;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Z(Lcom/facebook/ads/redexgen/X/PP;)V

    .line 71526
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A04:Lcom/facebook/ads/redexgen/X/At;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A06:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Z(Lcom/facebook/ads/redexgen/X/PP;)V

    goto :goto_2

    .line 71527
    .end local v0
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 71528
    :cond_5
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/c2;->A02(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v4

    .line 71529
    .restart local p0    # "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/JT;
    goto/16 :goto_0

    .line 71530
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/c2;->A0G:[Ljava/lang/String;

    const-string v1, "irNdkufru0tgAA9z3l7YlJhRv0dZK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "zN5wNlZvELtjdUjcESL7VUEU7ru13"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    .line 71531
    .end local p0    # "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/JT;
    :cond_7
    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c2;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 71532
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/55;->onAttachedToWindow()V

    .line 71533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A09:Z

    .line 71534
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A0C()V

    .line 71535
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 71536
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/55;->onDetachedFromWindow()V

    .line 71537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c2;->A09:Z

    .line 71538
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A0C()V

    .line 71539
    return-void
.end method

.method public final onPrepared()V
    .locals 2

    .line 71540
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c2;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JP;-><init>(Lcom/facebook/ads/redexgen/X/c2;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71541
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A0A()V

    .line 71542
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 71543
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/55;->onVisibilityChanged(Landroid/view/View;I)V

    .line 71544
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A0C()V

    .line 71545
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 71546
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/55;->onWindowFocusChanged(Z)V

    .line 71547
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c2;->A0C()V

    .line 71548
    return-void
.end method
