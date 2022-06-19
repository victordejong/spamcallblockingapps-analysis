.class public Lno0$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lno0$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0;->f0(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lno0;


# direct methods
.method public constructor <init>(Lno0;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lno0$j;->b:Lno0;

    iput-object p2, p0, Lno0$j;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    iget-object v0, p0, Lno0$j;->b:Lno0;

    invoke-static {v0}, Lno0;->j(Lno0;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v2, "Invalid Object Id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lno0$j;->b:Lno0;

    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v1, v2, v0}, Lno0;->i(Lno0;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Lzi0;

    invoke-direct {v0}, Lzi0;-><init>()V

    new-instance v1, Lno0$w;

    iget-object v2, p0, Lno0$j;->b:Lno0;

    invoke-static {v2}, Lno0;->j(Lno0;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lno0$j;->b:Lno0;

    invoke-static {v4}, Lno0;->l(Lno0;)Lcom/facebook/share/widget/LikeView$g;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lno0$w;-><init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    invoke-virtual {v1, v0}, Lno0$m;->a(Lzi0;)V

    new-instance v2, Lno0$j$a;

    invoke-direct {v2, p0, v1}, Lno0$j$a;-><init>(Lno0$j;Lno0$w;)V

    invoke-virtual {v0, v2}, Lzi0;->c(Lzi0$a;)V

    invoke-virtual {v0}, Lzi0;->f()Lyi0;

    return-void
.end method
