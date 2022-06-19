.class public Lno0$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lno0$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno0;


# direct methods
.method public constructor <init>(Lno0;)V
    .locals 0

    iput-object p1, p0, Lno0$l;->a:Lno0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    sget-object v0, Lno0$c;->a:[I

    iget-object v1, p0, Lno0$l;->a:Lno0;

    invoke-static {v1}, Lno0;->l(Lno0;)Lcom/facebook/share/widget/LikeView$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lno0$r;

    iget-object v1, p0, Lno0$l;->a:Lno0;

    invoke-static {v1}, Lno0;->j(Lno0;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lno0$l;->a:Lno0;

    invoke-static {v3}, Lno0;->l(Lno0;)Lcom/facebook/share/widget/LikeView$g;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lno0$r;-><init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lno0$t;

    iget-object v1, p0, Lno0$l;->a:Lno0;

    invoke-static {v1}, Lno0;->j(Lno0;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lno0$t;-><init>(Lno0;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lno0$p;

    iget-object v2, p0, Lno0$l;->a:Lno0;

    invoke-static {v2}, Lno0;->j(Lno0;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lno0$l;->a:Lno0;

    invoke-static {v4}, Lno0;->l(Lno0;)Lcom/facebook/share/widget/LikeView$g;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lno0$p;-><init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    new-instance v2, Lzi0;

    invoke-direct {v2}, Lzi0;-><init>()V

    invoke-interface {v0, v2}, Lno0$z;->a(Lzi0;)V

    invoke-virtual {v1, v2}, Lno0$m;->a(Lzi0;)V

    new-instance v3, Lno0$l$a;

    invoke-direct {v3, p0, v0, v1}, Lno0$l$a;-><init>(Lno0$l;Lno0$u;Lno0$p;)V

    invoke-virtual {v2, v3}, Lzi0;->c(Lzi0$a;)V

    invoke-virtual {v2}, Lzi0;->f()Lyi0;

    return-void
.end method
