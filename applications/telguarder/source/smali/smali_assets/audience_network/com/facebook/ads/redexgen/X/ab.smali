.class public Lcom/facebook/ads/redexgen/X/ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudienceNetworkAdListenerImpl"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/50;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ab;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 1

    .line 67400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67401
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    .line 67402
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/4w;)V
    .locals 0

    .line 67403
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/50;)V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Bvt0yOf8FkrLVqhnXFXGSwTYRXrGULO3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HxNp7y71HWaTrEYCa1nD8Q2w"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GmZN0k76LWJEONKZ4nkepGQX2ZOx7JZ7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "g8AWVKT3YU82ugLHB7wYAKpmFjsw1mJQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VYPRTiAFBVFZEcqZYDcE2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "S8Un61AWpe6QIh7bgPvPotPUqr9HktRI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0dnAQlroe7V8NZLZXIkyq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EcVYj8waT8yQnKjMoNebf09vn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ab;->A01:[Ljava/lang/String;

    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 2

    .line 67404
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/50;->A03(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/Ow;

    move-result-object v1

    .line 67405
    .local p0, "mediationOverlay":Lcom/facebook/ads/redexgen/X/Ow;
    if-eqz v1, :cond_0

    .line 67406
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/50;->A00(Lcom/facebook/ads/redexgen/X/50;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 67407
    :cond_0
    return-void
.end method


# virtual methods
.method public final A3H(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 5

    .line 67408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/50;

    .line 67409
    .local p0, "audienceNetworkActivityApi":Lcom/facebook/ads/redexgen/X/50;
    if-eqz v4, :cond_0

    .line 67410
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/50;->A00(Lcom/facebook/ads/redexgen/X/50;)Landroid/widget/RelativeLayout;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ab;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ab;->A01:[Ljava/lang/String;

    const-string v1, "cDGFq5bAjYu4v8NyT6nKuBhmBHm3A23D"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "zGFOIxwrJwqQi4Ory1MR8T6pqQQ3QE6v"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 67411
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/ab;->A01(Lcom/facebook/ads/redexgen/X/50;)V

    .line 67412
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 67413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/50;

    .line 67414
    .local p0, "audienceNetworkActivityApi":Lcom/facebook/ads/redexgen/X/50;
    if-eqz v1, :cond_0

    .line 67415
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/50;->A00(Lcom/facebook/ads/redexgen/X/50;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67416
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/ab;->A01(Lcom/facebook/ads/redexgen/X/50;)V

    .line 67417
    :cond_0
    return-void
.end method

.method public A3p(Ljava/lang/String;)V
    .locals 1

    .line 67418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->A0B(Lcom/facebook/ads/redexgen/X/50;Ljava/lang/String;)V

    .line 67420
    :cond_0
    return-void
.end method

.method public A3q(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 4

    .line 67421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/50;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ab;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ab;->A01:[Ljava/lang/String;

    const-string v1, "clRtITGcFEoSpMou6QoME4qt3OvZccY9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/50;->A0D(Lcom/facebook/ads/redexgen/X/50;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 67423
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A8H(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 1

    .line 67424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/50;->A0C(Lcom/facebook/ads/redexgen/X/50;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    .line 67426
    :cond_0
    return-void
.end method

.method public final A9d(I)V
    .locals 1

    .line 67427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/50;

    .line 67428
    .local p0, "activityApi":Lcom/facebook/ads/redexgen/X/50;
    if-eqz v0, :cond_0

    .line 67429
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 67430
    :cond_0
    return-void
.end method
