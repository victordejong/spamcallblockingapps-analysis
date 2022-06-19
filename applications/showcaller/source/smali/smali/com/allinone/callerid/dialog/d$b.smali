.class Lcom/allinone/callerid/dialog/d$b;
.super Ljava/lang/Object;
.source "DialogLiwuhe.java"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/d;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/dialog/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/d$b;->a:Lcom/allinone/callerid/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/dialog/d$b;->a:Lcom/allinone/callerid/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/gg/d;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/dialog/d$b;->a:Lcom/allinone/callerid/dialog/d;

    invoke-static {p1}, Lcom/allinone/callerid/dialog/d;->a(Lcom/allinone/callerid/dialog/d;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/dialog/d$b;->a:Lcom/allinone/callerid/dialog/d;

    invoke-static {p1}, Lcom/allinone/callerid/dialog/d;->a(Lcom/allinone/callerid/dialog/d;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/dialog/d$b;->a:Lcom/allinone/callerid/dialog/d;

    invoke-static {p1}, Lcom/allinone/callerid/dialog/d;->a(Lcom/allinone/callerid/dialog/d;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
