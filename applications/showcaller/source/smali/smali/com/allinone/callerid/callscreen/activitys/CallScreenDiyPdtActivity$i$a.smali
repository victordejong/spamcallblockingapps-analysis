.class Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a;
.super Ljava/lang/Object;
.source "CallScreenDiyPdtActivity.java"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v1, "tony"

    if-eqz v0, :cond_0

    const-string v0, "onUnifiedNativeAdLoaded"

    .line 2
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {v0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;Lcom/google/android/gms/ads/nativead/a;)Lcom/google/android/gms/ads/nativead/a;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 5
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/gg/d;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;

    iget-object p1, p1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "fl_junk"

    .line 8
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;

    iget-object p1, p1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;

    iget-object p1, p1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;

    iget-object p1, p1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
