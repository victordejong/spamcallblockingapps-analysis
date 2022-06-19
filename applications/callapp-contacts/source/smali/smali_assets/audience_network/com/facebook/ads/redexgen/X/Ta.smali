.class public final Lcom/facebook/ads/redexgen/X/Ta;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# static fields
.field public static A03:[B


# instance fields
.field public A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/4v;

.field public final A02:Lcom/facebook/ads/redexgen/X/ES;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ta;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 1

    .line 54979
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    .line 54980
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()Lcom/facebook/ads/redexgen/X/ES;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A02:Lcom/facebook/ads/redexgen/X/ES;

    .line 54981
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 54982
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ta;)Landroid/view/View;
    .locals 0

    .line 54983
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ta;)Lcom/facebook/ads/redexgen/X/4v;
    .locals 0

    .line 54984
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ta;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ta;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x17t
        0x7t
        0x14t
        0x14t
        0x15t
        0x1at
        -0x3at
        0x16t
        0x18t
        0xbt
        0x19t
        0xbt
        0x14t
        0x1at
        -0x3at
        0x14t
        0x1bt
        0x12t
        0x12t
        -0x3at
        0x7t
        0xat
        -0x4t
        0xft
        0xbt
        0x1dt
    .end array-data
.end method


# virtual methods
.method public final A0B()V
    .locals 1

    .line 54985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A02:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RY;->A3f()V

    .line 54986
    new-instance v0, Lcom/facebook/ads/redexgen/X/TY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TY;-><init>(Lcom/facebook/ads/redexgen/X/Ta;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00(Lcom/facebook/ads/redexgen/X/KO;)V

    .line 54987
    return-void
.end method

.method public final A0C()V
    .locals 1

    .line 54988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A02:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RY;->A3i()V

    .line 54989
    new-instance v0, Lcom/facebook/ads/redexgen/X/TZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TZ;-><init>(Lcom/facebook/ads/redexgen/X/Ta;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00(Lcom/facebook/ads/redexgen/X/KO;)V

    .line 54990
    return-void
.end method

.method public final A0D(Landroid/view/View;)V
    .locals 3

    .line 54991
    if-eqz p1, :cond_5

    .line 54992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A02:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RY;->A3h()V

    .line 54993
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:Landroid/view/View;

    .line 54994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    .line 54995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    .line 54996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/aD;

    if-eqz v0, :cond_0

    .line 54997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 54998
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A06()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0B()Lcom/facebook/ads/redexgen/X/Jq;

    move-result-object v0

    .line 54999
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jt;->A04(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Jq;)V

    .line 55000
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/FB;

    move-result-object v0

    .line 55001
    .local p0, "controller":Lcom/facebook/ads/redexgen/X/FB;
    if-eqz v0, :cond_1

    .line 55002
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0J()V

    .line 55003
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/TX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TX;-><init>(Lcom/facebook/ads/redexgen/X/Ta;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00(Lcom/facebook/ads/redexgen/X/KO;)V

    .line 55004
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 55005
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 55006
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55007
    new-instance v2, Lcom/facebook/ads/redexgen/X/Na;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Na;-><init>()V

    .line 55008
    .local p1, "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/Na;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0E(Lcom/facebook/ads/redexgen/X/Na;)V

    .line 55009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Na;->A0D(Ljava/lang/String;)V

    .line 55010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 55011
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 55012
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Na;->A0C(Ljava/lang/String;)V

    .line 55013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/FB;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 55014
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/FB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0H()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 55016
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/FB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0H()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0C()J

    move-result-wide v0

    .line 55017
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Na;->A0A(J)V

    .line 55018
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/aD;

    if-eqz v0, :cond_3

    .line 55019
    check-cast v1, Lcom/facebook/ads/redexgen/X/aD;

    .line 55020
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/aD;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    .line 55021
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Na;->A0B(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 55022
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/54;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/54;-><init>(Lcom/facebook/ads/redexgen/X/Ta;Lcom/facebook/ads/redexgen/X/Na;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 55023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 55024
    .end local p1    # "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/Na;
    :cond_4
    return-void

    .line 55025
    .end local p0    # "controller":Lcom/facebook/ads/redexgen/X/FB;
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ta;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 2

    .line 55026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A02:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/FB;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/RY;->A3g(Z)V

    .line 55027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/FB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/FB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0K()V

    .line 55029
    :cond_0
    return-void

    .line 55030
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 5

    .line 55031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A02:Lcom/facebook/ads/redexgen/X/ES;

    .line 55032
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 55033
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A05()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v2

    .line 55034
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 55035
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jl;->A05()Ljava/lang/String;

    move-result-object v0

    .line 55036
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d(JILjava/lang/String;)V

    .line 55037
    new-instance v0, Lcom/facebook/ads/redexgen/X/TW;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TW;-><init>(Lcom/facebook/ads/redexgen/X/Ta;Lcom/facebook/ads/redexgen/X/Jl;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00(Lcom/facebook/ads/redexgen/X/KO;)V

    .line 55038
    return-void
.end method
