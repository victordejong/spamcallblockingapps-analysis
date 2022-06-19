.class Lcom/callerid/block/mvc/controller/UnknownContactActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/util/v0/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/UnknownContactActivity;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$d;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$d;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-static {p1, v0}, Lcom/callerid/block/util/v0/a;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$d;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->e0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$d;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->e0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$d;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Q(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$d;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->e0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$d;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Q(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
