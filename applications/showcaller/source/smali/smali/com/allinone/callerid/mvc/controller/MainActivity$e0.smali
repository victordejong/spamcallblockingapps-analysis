.class Lcom/allinone/callerid/mvc/controller/MainActivity$e0;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->p1()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$e0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$e0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->q0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/a1;->P()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$e0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->s0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$e0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->r0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->t1(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$e0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/MainActivity;->o0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$e0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->p0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    const p2, 0x800003

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->C(I)Z

    :cond_0
    return-void
.end method
