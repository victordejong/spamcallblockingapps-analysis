.class Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$j;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/util/gg/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->R0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$j;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$j;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0004

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 3
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/gg/d;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$j;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Z(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$j;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Z(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$j;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->a0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/gg/c;->c()Lcom/allinone/callerid/util/gg/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/util/gg/c;->b()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$j;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->I0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    return-void
.end method
