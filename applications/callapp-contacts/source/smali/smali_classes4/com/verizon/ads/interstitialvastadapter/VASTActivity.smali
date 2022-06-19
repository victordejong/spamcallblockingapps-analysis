.class public Lcom/verizon/ads/interstitialvastadapter/VASTActivity;
.super Lcom/verizon/ads/support/VASActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;
    }
.end annotation


# static fields
.field private static final c:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->c:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/verizon/ads/support/VASActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->finish()V

    :cond_0
    return-void
.end method

.method public static launch(Landroid/content/Context;Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;)V
    .locals 1

    .line 44
    const-class v0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;

    invoke-static {p0, v0, p1}, Lcom/verizon/ads/support/VASActivity;->launch(Landroid/content/Context;Ljava/lang/Class;Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)V

    return-void
.end method


# virtual methods
.method final a()Landroid/view/ViewGroup;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    check-cast v0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;

    invoke-static {v0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;->a(Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/verizon/ads/support/VASActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/verizon/ads/support/VASActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    check-cast p1, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;

    const-string v0, ">"

    if-nez p1, :cond_0

    .line 62
    sget-object p1, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->c:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load activity config, aborting activity launch <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->b()V

    return-void

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;->a(Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 69
    sget-object p1, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->c:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "interstitialVASTAdapter can not be null, aborting activity launch <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->b()V

    return-void

    .line 75
    :cond_1
    invoke-static {p1}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;->a(Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    sget-object p1, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->c:Lcom/verizon/ads/Logger;

    const-string v0, "interstitialVASTAdapter was released. Closing ad."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->b()V

    return-void

    .line 83
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->b:Landroid/view/ViewGroup;

    .line 84
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->b:Landroid/view/ViewGroup;

    const-string v1, "vast_activity_root_view"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->b:Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->b:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->setContentView(Landroid/view/View;)V

    .line 92
    invoke-static {p1}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;->a(Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    move-result-object p1

    .line 1311
    iget-object v0, p1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    .line 1324
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->a:Ljava/lang/ref/WeakReference;

    .line 1326
    new-instance v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;

    invoke-direct {v1, p1, p0, v0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;-><init>(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;Lcom/verizon/ads/interstitialvastadapter/VASTActivity;Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;)V

    invoke-static {v1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 2116
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    check-cast v0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;

    invoke-static {v0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;->a(Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    move-result-object v0

    .line 2420
    iget-object v1, v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz v1, :cond_0

    .line 2421
    iget-object v0, v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onClosed()V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/verizon/ads/support/VASActivity;->onDestroy()V

    return-void
.end method
