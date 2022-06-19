.class Lcom/allinone/callerid/g/b$d$a;
.super Ljava/lang/Object;
.source "EZBlockFragment.java"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/b$d;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/b$d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/b$d$a;->a:Lcom/allinone/callerid/g/b$d;

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
    iget-object v0, p0, Lcom/allinone/callerid/g/b$d$a;->a:Lcom/allinone/callerid/g/b$d;

    iget-object v0, v0, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-static {v0, p1}, Lcom/allinone/callerid/g/b;->f2(Lcom/allinone/callerid/g/b;Lcom/google/android/gms/ads/nativead/a;)Lcom/google/android/gms/ads/nativead/a;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/g/b$d$a;->a:Lcom/allinone/callerid/g/b$d;

    iget-object v0, v0, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->L()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 5
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/gg/d;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/b$d$a;->a:Lcom/allinone/callerid/g/b$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-static {p1}, Lcom/allinone/callerid/g/b;->g2(Lcom/allinone/callerid/g/b;)Landroid/widget/FrameLayout;

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
    iget-object p1, p0, Lcom/allinone/callerid/g/b$d$a;->a:Lcom/allinone/callerid/g/b$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-static {p1}, Lcom/allinone/callerid/g/b;->g2(Lcom/allinone/callerid/g/b;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/g/b$d$a;->a:Lcom/allinone/callerid/g/b$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-static {p1}, Lcom/allinone/callerid/g/b;->g2(Lcom/allinone/callerid/g/b;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/g/b$d$a;->a:Lcom/allinone/callerid/g/b$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-static {p1}, Lcom/allinone/callerid/g/b;->g2(Lcom/allinone/callerid/g/b;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/g/b$d$a;->a:Lcom/allinone/callerid/g/b$d;

    iget-object p1, p1, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-static {p1, v3}, Lcom/allinone/callerid/g/b;->h2(Lcom/allinone/callerid/g/b;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
