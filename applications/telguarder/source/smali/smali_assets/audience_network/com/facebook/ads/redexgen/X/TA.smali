.class public final Lcom/facebook/ads/redexgen/X/TA;
.super Lcom/facebook/ads/redexgen/X/Q8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/T6;->A0d(Landroid/view/View;Landroid/view/View;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/c9;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/T6;

.field public final synthetic A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TA;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T6;Landroid/view/View;ZLcom/facebook/ads/redexgen/X/c9;)V
    .locals 0

    .line 53709
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TA;->A00:Landroid/view/View;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/TA;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/c9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "74Z2ZmRlPynohSy2sQceNW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "znCGLTgziK2o1r1FVaWFan6pSrgE5Q6G"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ts1v0GMT6QjjChzoP42Pi3IfPV0wvp71"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mRbXA4MQsrmVfsNWYzqr5s4SCi4tJLO6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "q8lLLa2ZO1wpSu4KeFiYORyBUhe3JXw9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "x1cHLjmToU21LpssQT2wsdUKEUp2XI3O"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "viOgmX89Wv5hxA4Jh38QIXSOb8UeKUEA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BibhuhaP68ou65iqeCIFT27joxiLUmZi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TA;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 53710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0O(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A06()V

    .line 53711
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 53712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0O(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A0A()V

    .line 53713
    return-void
.end method

.method public final A04()V
    .locals 5

    .line 53714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0O(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A0B()V

    .line 53715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    .line 53716
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 53717
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53718
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TA;->A00:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    if-eqz v0, :cond_0

    .line 53719
    check-cast v1, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->getAdContentsView()Landroid/view/View;

    move-result-object v1

    .line 53720
    .local p0, "videoView":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/PH;

    if-eqz v0, :cond_0

    .line 53721
    check-cast v1, Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/PH;->A03()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0S(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0U()V

    .line 53723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0O(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A08()V

    .line 53724
    return-void

    .line 53725
    .end local p0    # "videoView":Landroid/view/View;
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A03:Z

    if-eqz v0, :cond_1

    .line 53726
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TA;->A00:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageView;

    .line 53727
    .local p0, "iv":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    sget-object v2, Lcom/facebook/ads/redexgen/X/TA;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/TA;->A04:[Ljava/lang/String;

    const-string v1, "UMjq4onf9LXgVcAANo3hpd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/T6;->A06(Lcom/facebook/ads/redexgen/X/T6;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53728
    .local v0, "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_b

    .line 53729
    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/T6;->A0c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 53730
    .end local p0    # "iv":Landroid/widget/ImageView;
    .end local v0    # "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0O(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0G(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/c9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c9;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A0C(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V

    .line 53731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0S(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0S(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0W()V

    .line 53733
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0V(Lcom/facebook/ads/redexgen/X/T6;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/TA;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/TA;->A04:[Ljava/lang/String;

    const-string v1, "iFraMKmSiiXLAsPS3tVus8OXbaKT7G1j"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/T6;->A0V(Lcom/facebook/ads/redexgen/X/T6;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 53734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0V(Lcom/facebook/ads/redexgen/X/T6;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A04()V

    .line 53735
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0Q(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08()Z

    move-result v0

    if-nez v0, :cond_a

    .line 53736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0G(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1A(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 53737
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/TA;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_7

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/T6;->A0i(Lcom/facebook/ads/redexgen/X/T6;)V

    .line 53738
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A08(Lcom/facebook/ads/redexgen/X/T6;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A09(Lcom/facebook/ads/redexgen/X/T6;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    .line 53739
    :cond_6
    return-void

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/TA;->A04:[Ljava/lang/String;

    const-string v1, "du6RTaGd2zmUMbST5jle9Y9Dbo8JfNHy"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/T6;->A0i(Lcom/facebook/ads/redexgen/X/T6;)V

    goto :goto_0

    .line 53740
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0G(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 53741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0i(Lcom/facebook/ads/redexgen/X/T6;)V

    .line 53742
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A08(Lcom/facebook/ads/redexgen/X/T6;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A09(Landroid/view/View;)V

    .line 53743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A09(Lcom/facebook/ads/redexgen/X/T6;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A08(Landroid/view/View;)V

    .line 53744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0N(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Jd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A0C(Lcom/facebook/ads/redexgen/X/Jd;)V

    .line 53745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0r(Lcom/facebook/ads/redexgen/X/T6;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A0F(Z)V

    .line 53746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0s(Lcom/facebook/ads/redexgen/X/T6;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A0J(Z)V

    .line 53747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0t(Lcom/facebook/ads/redexgen/X/T6;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A0I(Z)V

    .line 53748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0u(Lcom/facebook/ads/redexgen/X/T6;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A0G(Z)V

    .line 53749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0D(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/0z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A0A(Lcom/facebook/ads/redexgen/X/0z;)V

    .line 53750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0v(Lcom/facebook/ads/redexgen/X/T6;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A0H(Z)V

    .line 53751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    .line 53752
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0B(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/NativeAdLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mf;->A00(Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/redexgen/X/10;

    move-result-object v0

    .line 53753
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A0B(Lcom/facebook/ads/redexgen/X/10;)V

    .line 53754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0U(Lcom/facebook/ads/redexgen/X/T6;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A0D(Ljava/lang/String;)V

    .line 53755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A03:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A0K(Z)V

    .line 53756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0E(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0p;->A02()V

    goto :goto_1

    .line 53757
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0O(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A04()V

    .line 53758
    :goto_1
    return-void

    .line 53759
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0S(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0U()V

    .line 53760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A02:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0O(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A07()V

    .line 53761
    return-void

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
