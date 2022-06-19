.class public final Lcom/facebook/ads/redexgen/X/cC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0n;


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0v;

.field public A01:Lcom/facebook/ads/redexgen/X/c4;

.field public A02:Lcom/facebook/ads/redexgen/X/Dz;

.field public A03:Lcom/facebook/ads/redexgen/X/JC;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/NQ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/S1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 71076
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cC;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cC;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/cC;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cC;->A0C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A07:Z

    .line 71079
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A08:Z

    .line 71080
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A09:Z

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/0v;
    .locals 0

    .line 71081
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cC;->A00:Lcom/facebook/ads/redexgen/X/0v;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/c4;
    .locals 0

    .line 71082
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cC;->A01:Lcom/facebook/ads/redexgen/X/c4;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/Dz;
    .locals 0

    .line 71083
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cC;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 71084
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cC;->A03:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static synthetic A04()Ljava/lang/String;
    .locals 4

    .line 71085
    sget-object v3, Lcom/facebook/ads/redexgen/X/cC;->A0C:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cC;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cC;->A0B:[Ljava/lang/String;

    const-string v1, "WXJgz8KbLC3zDU4Ss1zBttDGvYVaYJLF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cC;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 2

    .line 71086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A00:Lcom/facebook/ads/redexgen/X/0v;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A07:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A08:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A09:Z

    if-nez v0, :cond_1

    .line 71087
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cC;->A00:Lcom/facebook/ads/redexgen/X/0v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A05:Lcom/facebook/ads/redexgen/X/S1;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->A9b(Lcom/facebook/ads/redexgen/X/cC;Landroid/view/View;)V

    .line 71088
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A00:Lcom/facebook/ads/redexgen/X/0v;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3V(Z)V

    .line 71089
    return-void

    .line 71090
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cC;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x2dt
        0x1et
        0x31t
        0x2dt
        -0x18t
        0x21t
        0x2dt
        0x26t
        0x25t
        -0xet
        -0xft
        -0x1dt
        -0x56t
        -0x4bt
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NhwOmA8H17maQr2Thm3XPPVG1xwEsLhZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rranxCubAcBFDRhPr2LDrxoK3htxcyeL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LmhV8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZLGOK7uKxyyp5W3sNEqoBEODv8zXcPE1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dNK0bBZMrDk2YJmjrhSzlk1RMTFmUAsD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "q33l17MPfjO0fzYSahPh7EE95Ux5x03H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4VfBn9Mh4W5rafl7A4va0uDeREUgOp63"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NLrbv196ww605txiYhOndsfSQjY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cC;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/cC;)V
    .locals 0

    .line 71091
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cC;->A06()V

    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 10

    .line 71092
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1n;->A03()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c6;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v3

    .line 71093
    .local p0, "dataModel":Lcom/facebook/ads/redexgen/X/c6;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/c6;->A5x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A06:Ljava/lang/String;

    .line 71094
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cC;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A03:Lcom/facebook/ads/redexgen/X/JC;

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/0j;->A04(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/JC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A3y()V

    .line 71096
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cC;->A00:Lcom/facebook/ads/redexgen/X/0v;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->AAX(Lcom/facebook/ads/redexgen/X/cC;Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 71097
    return-void

    .line 71098
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/FM;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/FM;-><init>(Lcom/facebook/ads/redexgen/X/cC;Lcom/facebook/ads/redexgen/X/c6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A04:Lcom/facebook/ads/redexgen/X/NQ;

    .line 71099
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cC;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A04:Lcom/facebook/ads/redexgen/X/NQ;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71100
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8x;->A04()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/S1;

    invoke-direct {v0, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/S1;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/ref/WeakReference;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A05:Lcom/facebook/ads/redexgen/X/S1;

    .line 71101
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cC;->A05:Lcom/facebook/ads/redexgen/X/S1;

    .line 71102
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8x;->A07()I

    move-result v1

    .line 71103
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8x;->A08()I

    move-result v0

    .line 71104
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S1;->A0G(II)V

    .line 71105
    new-instance v9, Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/cD;-><init>(Lcom/facebook/ads/redexgen/X/cC;)V

    .line 71106
    .local v0, "impressionHelper":Lcom/facebook/ads/redexgen/X/0q;
    new-instance v4, Lcom/facebook/ads/redexgen/X/c4;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/cC;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/cC;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/cC;->A05:Lcom/facebook/ads/redexgen/X/S1;

    .line 71107
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/S1;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v8

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/c4;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/NN;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/0q;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/cC;->A01:Lcom/facebook/ads/redexgen/X/c4;

    .line 71108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A01:Lcom/facebook/ads/redexgen/X/c4;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/c4;->A09(Lcom/facebook/ads/redexgen/X/c6;)V

    .line 71109
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cC;->A05:Lcom/facebook/ads/redexgen/X/S1;

    .line 71110
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NT;->A00()Ljava/lang/String;

    move-result-object v5

    .line 71111
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/c6;->A05()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 71112
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cC;->A05(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x9

    const/4 v1, 0x5

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cC;->A05(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/S1;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A07:Z

    .line 71114
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cC;->A06()V

    .line 71115
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/cC;)Z
    .locals 0

    .line 71116
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/cC;->A09:Z

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/cC;Z)Z
    .locals 0

    .line 71117
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/cC;->A08:Z

    return p1
.end method


# virtual methods
.method public final A0D(Lcom/facebook/ads/redexgen/X/Dz;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Js;Lcom/facebook/ads/redexgen/X/0v;Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 1

    .line 71118
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3U()V

    .line 71119
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cC;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    .line 71120
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cC;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 71121
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/cC;->A00:Lcom/facebook/ads/redexgen/X/0v;

    .line 71122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    .line 71123
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71124
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A14(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A09:Z

    .line 71125
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/1n;->A01()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    .line 71126
    .local p0, "placementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    invoke-direct {p0, v0, p5}, Lcom/facebook/ads/redexgen/X/cC;->A0A(Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/1n;)V

    .line 71127
    return-void
.end method

.method public final A5x()Ljava/lang/String;
    .locals 1

    .line 71128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A06:Ljava/lang/String;

    return-object v0
.end method

.method public final A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 71129
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 71130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A05:Lcom/facebook/ads/redexgen/X/S1;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3S(Z)V

    .line 71131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A05:Lcom/facebook/ads/redexgen/X/S1;

    if-eqz v0, :cond_0

    .line 71132
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S1;->destroy()V

    .line 71133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A05:Lcom/facebook/ads/redexgen/X/S1;

    .line 71134
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cC;->A04:Lcom/facebook/ads/redexgen/X/NQ;

    .line 71135
    :cond_0
    return-void

    .line 71136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
