.class Lcom/allinone/callerid/g/i$d;
.super Ljava/lang/Object;
.source "UnknownContentFragment.java"

# interfaces
.implements Lcom/allinone/callerid/util/gg/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/i;->v2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/i;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/i$d;->a:Lcom/allinone/callerid/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/i$d;->a:Lcom/allinone/callerid/g/i;

    invoke-static {v0}, Lcom/allinone/callerid/g/i;->l2(Lcom/allinone/callerid/g/i;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    move-result-object v0

    const v1, 0x7f0c0004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/gg/d;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/i$d;->a:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->j2(Lcom/allinone/callerid/g/i;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/g/i$d;->a:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->j2(Lcom/allinone/callerid/g/i;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/g/i$d;->a:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->j2(Lcom/allinone/callerid/g/i;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/gg/c;->c()Lcom/allinone/callerid/util/gg/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/util/gg/c;->b()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/i$d;->a:Lcom/allinone/callerid/g/i;

    invoke-static {v0}, Lcom/allinone/callerid/g/i;->a2(Lcom/allinone/callerid/g/i;)V

    return-void
.end method
