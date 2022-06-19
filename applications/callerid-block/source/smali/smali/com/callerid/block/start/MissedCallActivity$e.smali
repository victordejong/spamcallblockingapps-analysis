.class Lcom/callerid/block/start/MissedCallActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/nativead/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/MissedCallActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/start/MissedCallActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/MissedCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$e;->a:Lcom/callerid/block/start/MissedCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity$e;->a:Lcom/callerid/block/start/MissedCallActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-static {p1, v0}, Lcom/callerid/block/util/v0/a;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$e;->a:Lcom/callerid/block/start/MissedCallActivity;

    invoke-static {p1}, Lcom/callerid/block/start/MissedCallActivity;->Y(Lcom/callerid/block/start/MissedCallActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$e;->a:Lcom/callerid/block/start/MissedCallActivity;

    invoke-static {p1}, Lcom/callerid/block/start/MissedCallActivity;->Y(Lcom/callerid/block/start/MissedCallActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$e;->a:Lcom/callerid/block/start/MissedCallActivity;

    invoke-static {p1}, Lcom/callerid/block/start/MissedCallActivity;->Y(Lcom/callerid/block/start/MissedCallActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$e;->a:Lcom/callerid/block/start/MissedCallActivity;

    invoke-static {p1}, Lcom/callerid/block/start/MissedCallActivity;->Z(Lcom/callerid/block/start/MissedCallActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
