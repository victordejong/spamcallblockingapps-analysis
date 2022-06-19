.class public Lno0$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzi0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0;->h0(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno0$x;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lno0;


# direct methods
.method public constructor <init>(Lno0;Lno0$x;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lno0$k;->c:Lno0;

    iput-object p2, p0, Lno0$k;->a:Lno0$x;

    iput-object p3, p0, Lno0$k;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzi0;)V
    .locals 3

    iget-object p1, p0, Lno0$k;->c:Lno0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lno0;->m(Lno0;Z)Z

    iget-object p1, p0, Lno0$k;->a:Lno0$x;

    invoke-virtual {p1}, Lno0$m;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lno0$k;->c:Lno0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lno0;->n(Lno0;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lno0$k;->c:Lno0;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lno0;->e(Lno0;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lno0$k;->c:Lno0;

    invoke-static {p1, v0}, Lno0;->p(Lno0;Z)Z

    iget-object p1, p0, Lno0$k;->c:Lno0;

    invoke-static {p1}, Lno0;->f(Lno0;)Lxj0;

    move-result-object p1

    iget-object v0, p0, Lno0$k;->b:Landroid/os/Bundle;

    const-string v2, "fb_like_control_did_unlike"

    invoke-virtual {p1, v2, v1, v0}, Lxj0;->j(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    iget-object p1, p0, Lno0$k;->c:Lno0;

    iget-object v0, p0, Lno0$k;->b:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lno0;->q(Lno0;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
