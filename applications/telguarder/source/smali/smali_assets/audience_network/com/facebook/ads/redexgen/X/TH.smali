.class public final Lcom/facebook/ads/redexgen/X/TH;
.super Lcom/facebook/ads/redexgen/X/55;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/DefaultMediaViewVideoRendererApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/TI;,
        Lcom/facebook/ads/redexgen/X/JT;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A01:Lcom/facebook/ads/redexgen/X/Wm;

.field public A02:Lcom/facebook/ads/redexgen/X/JT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Jf;

.field public A04:Lcom/facebook/ads/redexgen/X/AN;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/7Z;

.field public A06:Lcom/facebook/ads/redexgen/X/7U;

.field public A07:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A08:Lcom/facebook/ads/redexgen/X/Q9;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/PG;

.field public final A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0E:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 53823
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TH;->A0F()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TH;->A0E()V

    const-class v0, Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TH;->A0H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53824
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/55;-><init>()V

    .line 53825
    new-instance v0, Lcom/facebook/ads/redexgen/X/TN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TN;-><init>(Lcom/facebook/ads/redexgen/X/TH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0C:Lcom/facebook/ads/redexgen/X/PG;

    .line 53826
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53827
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53828
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jf;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 0

    .line 53829
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TH;->A02:Lcom/facebook/ads/redexgen/X/JT;

    return-object p0
.end method

.method private A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JV;
    .locals 1

    .line 53830
    new-instance v0, Lcom/facebook/ads/redexgen/X/TM;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TM;-><init>(Lcom/facebook/ads/redexgen/X/TH;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JV;
    .locals 1

    .line 53831
    new-instance v0, Lcom/facebook/ads/redexgen/X/TL;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TL;-><init>(Lcom/facebook/ads/redexgen/X/TH;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    .line 53832
    .local p0, "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/JV;
    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/AN;
    .locals 0

    .line 53833
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Lcom/facebook/ads/redexgen/X/AN;

    return-object p0
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/Q8;
    .locals 1

    .line 53834
    new-instance v0, Lcom/facebook/ads/redexgen/X/TJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TJ;-><init>(Lcom/facebook/ads/redexgen/X/TH;)V

    return-object v0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/Q9;
    .locals 7

    .line 53835
    new-instance v1, Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A07:Lcom/facebook/ads/redexgen/X/Q8;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/TH;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Landroid/view/View;IZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V

    return-object v1
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TH;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/TH;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53836
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/TH;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53837
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A09()V
    .locals 4

    .line 53838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Lcom/facebook/ads/redexgen/X/AN;

    if-eqz v0, :cond_1

    .line 53839
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getVideoView()Landroid/view/View;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TH;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TH;->A0G:[Ljava/lang/String;

    const-string v1, "Ntv0Vby76dSesAjQjgB6ptCIElpzOEzL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/PH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0C:Lcom/facebook/ads/redexgen/X/PG;

    .line 53840
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/PH;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/PG;)V

    .line 53841
    :cond_1
    return-void
.end method

.method private A0A()V
    .locals 2

    .line 53842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Lcom/facebook/ads/redexgen/X/AN;

    if-eqz v0, :cond_0

    .line 53843
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getVideoView()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JS;-><init>(Lcom/facebook/ads/redexgen/X/TH;)V

    .line 53844
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53845
    :cond_0
    return-void
.end method

.method private A0B()V
    .locals 2

    .line 53846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Lcom/facebook/ads/redexgen/X/AN;

    if-eqz v0, :cond_0

    .line 53847
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getVideoView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/PH;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PH;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/PG;)V

    .line 53848
    :cond_0
    return-void
.end method

.method private A0C()V
    .locals 5

    .line 53849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A08:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 53851
    :goto_0
    return-void

    .line 53852
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Lcom/facebook/ads/redexgen/X/AN;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/TH;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/TH;->A0G:[Ljava/lang/String;

    const-string v1, "rz79LrkWpr7afRwAllWq14kp6jWBs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "wbkVnmCbF5MZ3bnx1CVAmIjXG33Lp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_2

    .line 53853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Z

    .line 53854
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A08:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0W()V

    goto :goto_0
.end method

.method private A0D()V
    .locals 1

    .line 53855
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jf;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    .line 53856
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A0B()V

    .line 53857
    return-void
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TH;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x2ct
        0x34t
        0x23t
        0x2et
        0x2bt
        0x26t
        0x62t
        0x30t
        0x27t
        0x2ct
        0x26t
        0x27t
        0x30t
        0x27t
        0x30t
        0x62t
        0x21t
        0x2at
        0x2bt
        0x2et
        0x26t
        0x62t
        0x21t
        0x2dt
        0x2ct
        0x24t
        0x2bt
        0x25t
        0x6ct
        0x7t
        0x2ft
        0x2et
        0x23t
        0x2bt
        0x1ct
        0x23t
        0x2ft
        0x3dt
        0x1ct
        0x23t
        0x2et
        0x2ft
        0x25t
        0x6at
        0x23t
        0x39t
        0x6at
        0x24t
        0x3ft
        0x26t
        0x26t
        0x71t
        0x6at
        0x3ft
        0x24t
        0x2bt
        0x28t
        0x26t
        0x2ft
        0x6at
        0x3et
        0x25t
        0x6at
        0x2ct
        0x23t
        0x24t
        0x2et
        0x6at
        0x23t
        0x3et
        0x64t
        0x7at
        0x41t
        0x4et
        0x4dt
        0x43t
        0x4at
        0xft
        0x5bt
        0x40t
        0xft
        0x49t
        0x46t
        0x41t
        0x4bt
        0xft
        0x62t
        0x4at
        0x4bt
        0x46t
        0x4et
        0x79t
        0x46t
        0x4at
        0x58t
        0x79t
        0x46t
        0x4bt
        0x4at
        0x40t
        0xft
        0x4ct
        0x47t
        0x46t
        0x43t
        0x4bt
        0x1t
    .end array-data
.end method

.method public static A0F()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gicLODNc4Ss02ASp0SH6jYH1jReGCf7D"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ud1g41PfTpgHVgN2zMRJY9l5AGp7t"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qgXpVhlOa1wHLevNk8n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YvRZAMwcrsdunGxdPmTtNWzK4vSRpQc4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eiRiwAROr6ki2Hau4nBgoUP0cJGv3yGG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AknM7mKZVSENDtzyALrGWQlwPvra0WAt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RqySj6gASebQYnIOdgQzgXbIWVvFlmni"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rcToBCOkHOudlFUS35924ELLk4KD1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TH;->A0G:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/TH;)V
    .locals 0

    .line 53858
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A0D()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/TH;Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/JT;)V
    .locals 0

    .line 53859
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TH;->A0J(Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/JT;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/TH;Lcom/facebook/ads/redexgen/X/PJ;)V
    .locals 0

    .line 53860
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TH;->A0K(Lcom/facebook/ads/redexgen/X/PJ;)V

    return-void
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/JT;)V
    .locals 5
    .param p2    # Lcom/facebook/ads/redexgen/X/JT;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0A:Z

    .line 53862
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Z

    .line 53863
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TH;->A02:Lcom/facebook/ads/redexgen/X/JT;

    .line 53864
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A09()V

    .line 53865
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TH;->A05:Lcom/facebook/ads/redexgen/X/7Z;

    .line 53866
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T6;->A12()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53867
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T6;->A12()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/TH;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TH;->A0G:[Ljava/lang/String;

    const-string v1, "TnDtOWvYiNMfLmp09Wf7ctnD5adJ0dsa"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 53868
    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/TK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TK;-><init>(Lcom/facebook/ads/redexgen/X/TH;)V

    .line 53869
    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7Z;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NW;)V

    .line 53870
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T6;->A17()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    .line 53871
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A06:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T6;->A1D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7U;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 53872
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A06:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T6;->A1C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7U;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 53873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A08:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 53874
    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/PJ;)V
    .locals 4

    .line 53875
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Lcom/facebook/ads/redexgen/X/AN;

    if-eqz v1, :cond_1

    .line 53876
    const/16 v0, 0x18

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Z(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 53877
    :cond_0
    :goto_0
    return-void

    .line 53878
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53879
    sget-object v3, Lcom/facebook/ads/redexgen/X/TH;->A0H:Ljava/lang/String;

    const/16 v2, 0x1e

    const/16 v1, 0x2a

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private A0L()Z
    .locals 3

    .line 53880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Lcom/facebook/ads/redexgen/X/AN;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_1

    .line 53881
    :cond_0
    return v2

    .line 53882
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jf;->A05:Lcom/facebook/ads/redexgen/X/Jf;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jf;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/TH;)Z
    .locals 0

    .line 53883
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Z

    return p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/TH;)Z
    .locals 0

    .line 53884
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0A:Z

    return p0
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/TH;)Z
    .locals 0

    .line 53885
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A0L()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/TH;Z)Z
    .locals 0

    .line 53886
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Z

    return p1
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/TH;Z)Z
    .locals 0

    .line 53887
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/TH;->A0A:Z

    return p1
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/MediaViewVideoRenderer;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;I)V
    .locals 7

    .line 53888
    invoke-interface {p3}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/55;

    .line 53889
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/55;->A00(Lcom/facebook/ads/internal/api/AdComponentViewApi;)V

    .line 53890
    if-eqz p4, :cond_4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_6

    .line 53891
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/TH;->A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JV;

    move-result-object v4

    .line 53892
    .local p0, "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/JV;
    :goto_0
    check-cast p3, Lcom/facebook/ads/redexgen/X/5B;

    .line 53893
    invoke-virtual {p3, v4}, Lcom/facebook/ads/redexgen/X/5B;->A07(Lcom/facebook/ads/redexgen/X/JV;)V

    .line 53894
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 53895
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 53896
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7Z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7Z;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A05:Lcom/facebook/ads/redexgen/X/7Z;

    .line 53897
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A04()Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A07:Lcom/facebook/ads/redexgen/X/Q8;

    .line 53898
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A05()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A08:Lcom/facebook/ads/redexgen/X/Q9;

    .line 53899
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    .line 53900
    .local p1, "density":F
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 53901
    .local p2, "smallPadding":I
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 53902
    .local p3, "bigPadding":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7U;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7U;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A06:Lcom/facebook/ads/redexgen/X/7U;

    .line 53903
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53904
    .local p4, "playPauseParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53905
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A06:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {v0, v3, v2, v2, v3}, Lcom/facebook/ads/redexgen/X/7U;->setPadding(IIII)V

    .line 53907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A06:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7U;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53908
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    if-ge v6, v0, :cond_0

    .line 53909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TH;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    .line 53910
    .local v0, "child":Landroid/view/View;
    sget-object v2, Lcom/facebook/ads/redexgen/X/TH;->A0G:[Ljava/lang/String;

    const-string v1, "7BCad5LO6te39ERddnjUHTKJR8zzbght"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/AN;

    if-eqz v0, :cond_3

    .line 53911
    check-cast v3, Lcom/facebook/ads/redexgen/X/AN;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Lcom/facebook/ads/redexgen/X/AN;

    .line 53912
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Lcom/facebook/ads/redexgen/X/AN;

    if-nez v1, :cond_2

    .line 53913
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53914
    sget-object v3, Lcom/facebook/ads/redexgen/X/TH;->A0H:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x24

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53915
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A08:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Q9;->A0X(I)V

    .line 53916
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A08:Lcom/facebook/ads/redexgen/X/Q9;

    const/16 v0, 0xfa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0Y(I)V

    .line 53917
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/JV;->ADm()V

    .line 53918
    return-void

    .line 53919
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A05:Lcom/facebook/ads/redexgen/X/7Z;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0a(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 53920
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Lcom/facebook/ads/redexgen/X/AN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A06:Lcom/facebook/ads/redexgen/X/7U;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0a(Lcom/facebook/ads/redexgen/X/PK;)V

    goto :goto_2

    .line 53921
    .end local v0
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 53922
    :cond_4
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/TH;->A02(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JV;

    move-result-object v4

    .line 53923
    .restart local p0    # "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/JV;
    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53924
    .end local p0    # "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/JV;
    :cond_6
    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 53925
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/55;->onAttachedToWindow()V

    .line 53926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Z

    .line 53927
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A0C()V

    .line 53928
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 53929
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/55;->onDetachedFromWindow()V

    .line 53930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Z

    .line 53931
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A0C()V

    .line 53932
    return-void
.end method

.method public final onPrepared()V
    .locals 2

    .line 53933
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JR;-><init>(Lcom/facebook/ads/redexgen/X/TH;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53934
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A0A()V

    .line 53935
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 53936
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/55;->onVisibilityChanged(Landroid/view/View;I)V

    .line 53937
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A0C()V

    .line 53938
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 53939
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/55;->onWindowFocusChanged(Z)V

    .line 53940
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TH;->A0C()V

    .line 53941
    return-void
.end method
