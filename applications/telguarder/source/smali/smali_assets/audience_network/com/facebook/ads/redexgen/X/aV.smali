.class public final Lcom/facebook/ads/redexgen/X/aV;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/4v;

.field public final A02:Lcom/facebook/ads/redexgen/X/Dz;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aV;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aV;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 1

    .line 67319
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    .line 67320
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0A()Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    .line 67321
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 67322
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/aV;)Landroid/view/View;
    .locals 0

    .line 67323
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aV;)Lcom/facebook/ads/redexgen/X/4v;
    .locals 0

    .line 67324
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aV;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x10

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
    .locals 4

    const/16 v0, 0x1a

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/aV;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/aV;->A04:[Ljava/lang/String;

    const-string v1, "ScK1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/aV;->A03:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x45t
        0x67t
        0x68t
        0x68t
        0x69t
        0x72t
        0x26t
        0x76t
        0x74t
        0x63t
        0x75t
        0x63t
        0x68t
        0x72t
        0x26t
        0x68t
        0x73t
        0x6at
        0x6at
        0x26t
        0x67t
        0x62t
        0x50t
        0x6ft
        0x63t
        0x71t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "G2rh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Fb5x"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6CyVQJjLjUxkB4NOtEwwqOuY7kB2daf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "v2svMG5ZVzKjVXyH1MXvdM9krQWCKsNq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oRWr7RpHwOoI3beQIRyDA09DO9LlUwST"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SjgxBMhR0kRV74MEQavsGpgIJGrbvWLl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8l9W"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lapvzpZuNASF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aV;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0C()V
    .locals 1

    .line 67325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3b()V

    .line 67326
    new-instance v0, Lcom/facebook/ads/redexgen/X/aX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aX;-><init>(Lcom/facebook/ads/redexgen/X/aV;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KU;->A00(Lcom/facebook/ads/redexgen/X/KQ;)V

    .line 67327
    return-void
.end method

.method public final A0D()V
    .locals 1

    .line 67328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3e()V

    .line 67329
    new-instance v0, Lcom/facebook/ads/redexgen/X/aW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aW;-><init>(Lcom/facebook/ads/redexgen/X/aV;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KU;->A00(Lcom/facebook/ads/redexgen/X/KQ;)V

    .line 67330
    return-void
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 4

    .line 67331
    if-eqz p1, :cond_6

    .line 67332
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aV;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    sget-object v2, Lcom/facebook/ads/redexgen/X/aV;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/aV;->A04:[Ljava/lang/String;

    const-string v1, "eqHc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3d()V

    .line 67333
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Landroid/view/View;

    .line 67334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    .line 67335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    .line 67336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/S1;

    if-eqz v0, :cond_1

    .line 67337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 67338
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A06()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0B()Lcom/facebook/ads/redexgen/X/Js;

    move-result-object v0

    .line 67339
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A04(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Js;)V

    .line 67340
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/F1;

    move-result-object v0

    .line 67341
    .local p0, "controller":Lcom/facebook/ads/redexgen/X/F1;
    if-eqz v0, :cond_2

    .line 67342
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0H()V

    .line 67343
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/aY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aY;-><init>(Lcom/facebook/ads/redexgen/X/aV;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KU;->A00(Lcom/facebook/ads/redexgen/X/KQ;)V

    .line 67344
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 67345
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 67346
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67347
    new-instance v2, Lcom/facebook/ads/redexgen/X/NV;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/NV;-><init>()V

    .line 67348
    .local p1, "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/NV;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0E(Lcom/facebook/ads/redexgen/X/NV;)V

    .line 67349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/NV;->A0D(Ljava/lang/String;)V

    .line 67350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 67351
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 67352
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/NV;->A0C(Ljava/lang/String;)V

    .line 67353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/F1;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 67354
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/F1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0F()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 67356
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/F1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0F()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0C()J

    move-result-wide v0

    .line 67357
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NV;->A0A(J)V

    .line 67358
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/S1;

    if-eqz v0, :cond_4

    .line 67359
    check-cast v1, Lcom/facebook/ads/redexgen/X/S1;

    .line 67360
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/S1;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    .line 67361
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/NV;->A0B(Lcom/facebook/ads/redexgen/X/Q9;)V

    .line 67362
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/54;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/54;-><init>(Lcom/facebook/ads/redexgen/X/aV;Lcom/facebook/ads/redexgen/X/NV;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 67364
    .end local p1    # "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/NV;
    :cond_5
    return-void

    .line 67365
    .end local p0    # "controller":Lcom/facebook/ads/redexgen/X/F1;
    :cond_6
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aV;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 2

    .line 67366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/F1;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3c(Z)V

    .line 67367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/F1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()Lcom/facebook/ads/redexgen/X/F1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0I()V

    .line 67369
    :cond_0
    return-void

    .line 67370
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 5

    .line 67371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A02:Lcom/facebook/ads/redexgen/X/Dz;

    .line 67372
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aV;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 67373
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A05()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v2

    .line 67374
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 67375
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jn;->A05()Ljava/lang/String;

    move-result-object v0

    .line 67376
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 67377
    new-instance v0, Lcom/facebook/ads/redexgen/X/aZ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/aZ;-><init>(Lcom/facebook/ads/redexgen/X/aV;Lcom/facebook/ads/redexgen/X/Jn;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KU;->A00(Lcom/facebook/ads/redexgen/X/KQ;)V

    .line 67378
    return-void
.end method
