.class public Lno0$l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzi0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0$l;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno0$u;

.field public final synthetic b:Lno0$p;

.field public final synthetic c:Lno0$l;


# direct methods
.method public constructor <init>(Lno0$l;Lno0$u;Lno0$p;)V
    .locals 0

    iput-object p1, p0, Lno0$l$a;->c:Lno0$l;

    iput-object p2, p0, Lno0$l$a;->a:Lno0$u;

    iput-object p3, p0, Lno0$l$a;->b:Lno0$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzi0;)V
    .locals 7

    iget-object p1, p0, Lno0$l$a;->a:Lno0$u;

    invoke-interface {p1}, Lno0$z;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lno0$l$a;->b:Lno0$p;

    invoke-virtual {p1}, Lno0$m;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lno0$l$a;->c:Lno0$l;

    iget-object v0, p1, Lno0$l;->a:Lno0;

    iget-object p1, p0, Lno0$l$a;->a:Lno0$u;

    invoke-interface {p1}, Lno0$u;->b()Z

    move-result v1

    iget-object p1, p0, Lno0$l$a;->b:Lno0$p;

    iget-object v2, p1, Lno0$p;->e:Ljava/lang/String;

    iget-object v3, p1, Lno0$p;->f:Ljava/lang/String;

    iget-object v4, p1, Lno0$p;->g:Ljava/lang/String;

    iget-object v5, p1, Lno0$p;->h:Ljava/lang/String;

    iget-object p1, p0, Lno0$l$a;->a:Lno0$u;

    invoke-interface {p1}, Lno0$u;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lno0;->g(Lno0;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Ldj0;->a:Ldj0;

    invoke-static {}, Lno0;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lno0$l$a;->c:Lno0$l;

    iget-object v3, v3, Lno0$l;->a:Lno0;

    invoke-static {v3}, Lno0;->r(Lno0;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to refresh like state for id: \'%s\'"

    invoke-static {p1, v0, v2, v1}, Lxm0;->h(Ldj0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
