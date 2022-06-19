.class public final Lcom/facebook/ads/redexgen/X/c9;
.super Lcom/facebook/ads/redexgen/X/QD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cD;->A0d(Landroid/view/View;Landroid/view/View;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Rp;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/cD;

.field public final synthetic A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/c9;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cD;Landroid/view/View;ZLcom/facebook/ads/redexgen/X/Rp;)V
    .locals 0

    .line 71610
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/c9;->A00:Landroid/view/View;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/c9;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/c9;->A01:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QD;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oIkrHn4xYgACG98mudVump3sfyxK5ddV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YFjKaJHcUlqTZUCuvViCLkc0DiVUGWHa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SJXa56PpW3wX5cacZdRzDwGkBBUKSz1I"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ckV9cVhgNLsBh0DLAq3Qoeikc521Bhs9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5hqMSu4yQZZoRLncoc9FwnveLVEwrx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CzQXOYkU59GlqnhcU7DFTywN9jdxtP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Yo0Mb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Nr5gBmQWcCkTfFNncD5Vfty4J6ngq0ol"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/c9;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 71611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0O(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A06()V

    .line 71612
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 71613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0O(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0B()V

    .line 71614
    return-void
.end method

.method public final A04()V
    .locals 4

    .line 71615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0O(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0C()V

    .line 71616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    .line 71617
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 71618
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71619
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c9;->A00:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    if-eqz v0, :cond_1

    .line 71620
    check-cast v1, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->getAdContentsView()Landroid/view/View;

    move-result-object v1

    .line 71621
    .local p0, "videoView":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/PM;

    if-eqz v0, :cond_1

    .line 71622
    check-cast v1, Lcom/facebook/ads/redexgen/X/PM;

    const/4 v0, 0x1

    .line 71623
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PM;->A04(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0S(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0U()V

    .line 71625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0O(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Ji;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/c9;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/c9;->A04:[Ljava/lang/String;

    const-string v1, "bPUaT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ji;->A08()V

    .line 71626
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71627
    .end local p0    # "videoView":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    .line 71628
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 71629
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71630
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c9;->A00:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    if-eqz v0, :cond_2

    .line 71631
    check-cast v1, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->getAdContentsView()Landroid/view/View;

    move-result-object v1

    .line 71632
    .restart local p0    # "videoView":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/PM;

    if-eqz v0, :cond_2

    .line 71633
    check-cast v1, Lcom/facebook/ads/redexgen/X/PM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/PM;->A03()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0S(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0U()V

    .line 71635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0O(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A09()V

    .line 71636
    return-void

    .line 71637
    .end local p0    # "videoView":Landroid/view/View;
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A03:Z

    if-eqz v0, :cond_3

    .line 71638
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c9;->A00:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 71639
    .local p0, "iv":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A06(Lcom/facebook/ads/redexgen/X/cD;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71640
    .local v0, "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_a

    .line 71641
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/cD;->A0c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 71642
    .end local p0    # "iv":Landroid/widget/ImageView;
    .end local v0    # "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0O(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Ji;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0G(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A01:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0D(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V

    .line 71643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0S(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0W()V

    .line 71644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0V(Lcom/facebook/ads/redexgen/X/cD;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0V(Lcom/facebook/ads/redexgen/X/cD;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 71645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0V(Lcom/facebook/ads/redexgen/X/cD;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QD;->A04()V

    .line 71646
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0Q(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A08()Z

    move-result v0

    if-nez v0, :cond_9

    .line 71647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0G(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A19(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 71648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0i(Lcom/facebook/ads/redexgen/X/cD;)V

    .line 71649
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A08(Lcom/facebook/ads/redexgen/X/cD;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A09(Lcom/facebook/ads/redexgen/X/cD;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    .line 71650
    :cond_6
    return-void

    .line 71651
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0G(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0i(Lcom/facebook/ads/redexgen/X/cD;)V

    .line 71653
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A08(Lcom/facebook/ads/redexgen/X/cD;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A09(Landroid/view/View;)V

    .line 71654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A09(Lcom/facebook/ads/redexgen/X/cD;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A08(Landroid/view/View;)V

    .line 71655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0N(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0C(Lcom/facebook/ads/redexgen/X/Jb;)V

    .line 71656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0r(Lcom/facebook/ads/redexgen/X/cD;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0F(Z)V

    .line 71657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0s(Lcom/facebook/ads/redexgen/X/cD;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0J(Z)V

    .line 71658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0t(Lcom/facebook/ads/redexgen/X/cD;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0I(Z)V

    .line 71659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0u(Lcom/facebook/ads/redexgen/X/cD;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0G(Z)V

    .line 71660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0D(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/0z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0A(Lcom/facebook/ads/redexgen/X/0z;)V

    .line 71661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0v(Lcom/facebook/ads/redexgen/X/cD;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0H(Z)V

    .line 71662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    .line 71663
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0B(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/NativeAdLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mk;->A00(Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/redexgen/X/10;

    move-result-object v0

    .line 71664
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0B(Lcom/facebook/ads/redexgen/X/10;)V

    .line 71665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0U(Lcom/facebook/ads/redexgen/X/cD;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0D(Ljava/lang/String;)V

    .line 71666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A03:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0K(Z)V

    .line 71667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0E(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Rv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0p;->A03()V

    goto :goto_0

    .line 71668
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0O(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A04()V

    .line 71669
    :goto_0
    return-void

    .line 71670
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0S(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0U()V

    .line 71671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c9;->A02:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0O(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A07()V

    .line 71672
    return-void
.end method
