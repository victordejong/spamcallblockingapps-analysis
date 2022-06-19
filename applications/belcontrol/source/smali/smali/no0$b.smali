.class public Lno0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzi0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0;->M(Lno0$y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno0$q;

.field public final synthetic b:Lno0$s;

.field public final synthetic c:Lno0$y;

.field public final synthetic d:Lno0;


# direct methods
.method public constructor <init>(Lno0;Lno0$q;Lno0$s;Lno0$y;)V
    .locals 0

    iput-object p1, p0, Lno0$b;->d:Lno0;

    iput-object p2, p0, Lno0$b;->a:Lno0$q;

    iput-object p3, p0, Lno0$b;->b:Lno0$s;

    iput-object p4, p0, Lno0$b;->c:Lno0$y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzi0;)V
    .locals 4

    iget-object p1, p0, Lno0$b;->d:Lno0;

    iget-object v0, p0, Lno0$b;->a:Lno0$q;

    iget-object v0, v0, Lno0$q;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lno0;->k(Lno0;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lno0$b;->d:Lno0;

    invoke-static {p1}, Lno0;->j(Lno0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lno0$b;->d:Lno0;

    iget-object v0, p0, Lno0$b;->b:Lno0$s;

    iget-object v0, v0, Lno0$s;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lno0;->k(Lno0;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lno0$b;->d:Lno0;

    iget-object v0, p0, Lno0$b;->b:Lno0$s;

    iget-boolean v0, v0, Lno0$s;->f:Z

    invoke-static {p1, v0}, Lno0;->s(Lno0;Z)Z

    :cond_0
    iget-object p1, p0, Lno0$b;->d:Lno0;

    invoke-static {p1}, Lno0;->j(Lno0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ldj0;->g:Ldj0;

    invoke-static {}, Lno0;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lno0$b;->d:Lno0;

    invoke-static {v3}, Lno0;->r(Lno0;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to verify the FB id for \'%s\'. Verify that it is a valid FB object or page"

    invoke-static {p1, v0, v2, v1}, Lxm0;->h(Ldj0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lno0$b;->d:Lno0;

    iget-object v0, p0, Lno0$b;->b:Lno0$s;

    invoke-virtual {v0}, Lno0$m;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lno0$b;->b:Lno0$s;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lno0$b;->a:Lno0$q;

    :goto_0
    invoke-virtual {v0}, Lno0$m;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    const-string v1, "get_verified_id"

    invoke-static {p1, v1, v0}, Lno0;->t(Lno0;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    :cond_2
    iget-object p1, p0, Lno0$b;->c:Lno0$y;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lno0$y;->onComplete()V

    :cond_3
    return-void
.end method
