.class Lcom/allinone/callerid/mvc/controller/MainActivity$c;
.super Lcom/google/android/gms/ads/b;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Lcom/google/android/gms/ads/j;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/b;->n(Lcom/google/android/gms/ads/j;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->Z(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->m0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/customview/AVLoadingIndicatorView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->y0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/b;->q()V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AdLoaded"

    const-string v1, "gift--onAdLoaded"

    .line 3
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->m0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/customview/AVLoadingIndicatorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->w0(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)Z

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/b;->r()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->x0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/dialog/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->x0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
