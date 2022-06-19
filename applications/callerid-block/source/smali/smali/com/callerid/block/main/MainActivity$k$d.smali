.class Lcom/callerid/block/main/MainActivity$k$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity$k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/main/MainActivity$k;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity$k;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->k0(Lcom/callerid/block/main/MainActivity;)Z

    move-result p1

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1, v2}, Lcom/callerid/block/main/MainActivity;->l0(Lcom/callerid/block/main/MainActivity;Z)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object v3, v3, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    const-class v4, Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object v3, v3, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->n0(Lcom/callerid/block/main/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1, v2}, Lcom/callerid/block/main/MainActivity;->o0(Lcom/callerid/block/main/MainActivity;Z)Z

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object v3, v3, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    const-class v4, Lcom/callerid/block/start/SimulateCallActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    iget-object p2, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p2, p2, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p2}, Lcom/callerid/block/main/MainActivity;->g0(Lcom/callerid/block/main/MainActivity;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$d;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->i0(Lcom/callerid/block/main/MainActivity;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->C(I)Z

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method
