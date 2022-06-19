.class Lcom/callerid/block/fragment/EZCallLogFragment$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/nativead/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZCallLogFragment;->G2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/EZCallLogFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$k;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$k;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->f2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-static {p1, v0}, Lcom/callerid/block/util/v0/a;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$k;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->M1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$k;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->M1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$k;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->M1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$k;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->N1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$k;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->O1(Lcom/callerid/block/fragment/EZCallLogFragment;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$k;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->M1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$k;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->N1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
