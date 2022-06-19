.class public final Lra1$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lra1;->e(Li91;Ln91$b;ILandroid/content/Context;Lra1$f;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li91;

.field public final synthetic b:I

.field public final synthetic c:Ln91$b;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic f:Lra1$f;

.field public final synthetic g:Z

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Li91;ILn91$b;Landroid/content/Context;Lra1$f;ZZ)V
    .locals 0

    iput-object p1, p0, Lra1$c;->a:Li91;

    iput p2, p0, Lra1$c;->b:I

    iput-object p3, p0, Lra1$c;->c:Ln91$b;

    iput-object p4, p0, Lra1$c;->d:Landroid/content/Context;

    iput-object p5, p0, Lra1$c;->f:Lra1$f;

    iput-boolean p6, p0, Lra1$c;->g:Z

    iput-boolean p7, p0, Lra1$c;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lra1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lv61;

    invoke-direct {v0}, Lv61;-><init>()V

    iget-object v1, p0, Lra1$c;->a:Li91;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ld71;->b(Li91;Z)V

    :try_start_0
    invoke-static {v0}, Lk61;->m(Lv61;)Lv61;

    move-result-object v0

    iget-object v0, v0, Ld71;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lra1$c;->a:Li91;

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld71$b;

    iget-object v1, v0, Ld71$b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lra1$c;->a:Li91;

    iget-object v2, v0, Ld71$b;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lz91;->v(Li91;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lra1;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lra1$c$a;

    invoke-direct {v2, p0, v0}, Lra1$c$a;-><init>(Lra1$c;Ld71$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lra1;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lookup failed"

    invoke-static {v1, v2, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Personification"

    const-string v2, "Enhanced"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lw91$a;->t:Lw91$a;

    invoke-static {p0, v1, v0}, Lw91;->c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
