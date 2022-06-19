.class public Lno0$j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzi0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0$j;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno0$w;

.field public final synthetic b:Lno0$j;


# direct methods
.method public constructor <init>(Lno0$j;Lno0$w;)V
    .locals 0

    iput-object p1, p0, Lno0$j$a;->b:Lno0$j;

    iput-object p2, p0, Lno0$j$a;->a:Lno0$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzi0;)V
    .locals 3

    iget-object p1, p0, Lno0$j$a;->b:Lno0$j;

    iget-object p1, p1, Lno0$j;->b:Lno0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lno0;->m(Lno0;Z)Z

    iget-object p1, p0, Lno0$j$a;->a:Lno0$w;

    invoke-virtual {p1}, Lno0$m;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lno0$j$a;->b:Lno0$j;

    iget-object p1, p1, Lno0$j;->b:Lno0;

    invoke-static {p1, v0}, Lno0;->n(Lno0;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lno0$j$a;->b:Lno0$j;

    iget-object p1, p1, Lno0$j;->b:Lno0;

    iget-object v0, p0, Lno0$j$a;->a:Lno0$w;

    iget-object v0, v0, Lno0$w;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfn0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lno0;->e(Lno0;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lno0$j$a;->b:Lno0$j;

    iget-object p1, p1, Lno0$j;->b:Lno0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lno0;->p(Lno0;Z)Z

    iget-object p1, p0, Lno0$j$a;->b:Lno0$j;

    iget-object p1, p1, Lno0$j;->b:Lno0;

    invoke-static {p1}, Lno0;->f(Lno0;)Lxj0;

    move-result-object p1

    iget-object v0, p0, Lno0$j$a;->b:Lno0$j;

    iget-object v0, v0, Lno0$j;->a:Landroid/os/Bundle;

    const-string v2, "fb_like_control_did_like"

    invoke-virtual {p1, v2, v1, v0}, Lxj0;->j(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    iget-object p1, p0, Lno0$j$a;->b:Lno0$j;

    iget-object v0, p1, Lno0$j;->b:Lno0;

    iget-object p1, p1, Lno0$j;->a:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lno0;->q(Lno0;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
