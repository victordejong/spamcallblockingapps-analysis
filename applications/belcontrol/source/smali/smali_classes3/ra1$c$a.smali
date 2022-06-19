.class public Lra1$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lra1$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld71$b;

.field public final synthetic b:Lra1$c;


# direct methods
.method public constructor <init>(Lra1$c;Ld71$b;)V
    .locals 0

    iput-object p1, p0, Lra1$c$a;->b:Lra1$c;

    iput-object p2, p0, Lra1$c$a;->a:Ld71$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v0, v0, Lra1$c;->a:Li91;

    invoke-virtual {v0}, Li91;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lra1$c$a;->a:Ld71$b;

    if-eqz v0, :cond_0

    iget v0, v0, Ld71$b;->b:I

    if-lez v0, :cond_0

    new-instance v0, Lo81;

    invoke-direct {v0}, Lo81;-><init>()V

    iget-object v2, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v2, v2, Lra1$c;->a:Li91;

    invoke-virtual {v2}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo81;->I(Ljava/lang/String;Z)Lo81;

    invoke-virtual {v0}, Lo81;->K()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v2, v2, Lra1$c;->a:Li91;

    invoke-virtual {v0, v2}, Lo81;->N(Li91;)V

    iget-object v2, p0, Lra1$c$a;->a:Ld71$b;

    iget v2, v2, Ld71$b;->g:I

    iput v2, v0, Lo81;->d:I

    invoke-virtual {v0}, Lo81;->z()Z

    :cond_0
    iget-object v0, p0, Lra1$c$a;->a:Ld71$b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ld71$b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v2, v2, Lra1$c;->a:Li91;

    invoke-static {v2, v0}, Lz91;->v(Li91;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lra1$c$a;->a:Ld71$b;

    if-eqz v0, :cond_2

    iget v1, v0, Ld71$b;->b:I

    :cond_2
    iget-object v0, p0, Lra1$c$a;->b:Lra1$c;

    iget v0, v0, Lra1$c;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v2, v1, Lra1$c;->c:Ln91$b;

    iget-boolean v3, v2, Ln91$b;->b:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v2, v2, Ln91$b;->a:Ln91$a;

    sget-object v3, Ln91$a;->p:Ln91$a;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lra1$c$a;->a:Ld71$b;

    iget v3, v2, Ld71$b;->g:I

    if-eq v3, v4, :cond_3

    iget-object v2, v2, Ld71$b;->d:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v2, v5

    :goto_0
    iget-object v1, v1, Lra1$c;->a:Li91;

    sget-object v3, Lq71$e;->b:Lq71$e;

    invoke-static {v1, v3}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object v1

    iget-object v3, p0, Lra1$c$a;->a:Ld71$b;

    if-eqz v3, :cond_4

    iget-object v3, v3, Ld71$b;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lra1$c$a;->a:Ld71$b;

    iget-object v3, v3, Ld71$b;->c:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v3, v5

    :goto_1
    iput-object v3, v1, Ln91$b;->f:Ljava/lang/String;

    iget-object v3, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v3, v3, Lra1$c;->c:Ln91$b;

    if-eqz v3, :cond_9

    iget-object v3, v3, Ln91$b;->a:Ln91$a;

    sget-object v6, Ln91$a;->q:Ln91$a;

    if-eq v3, v6, :cond_9

    const-string v3, "CACHE_SAVE"

    invoke-static {v3}, Lj91;->C(Ljava/lang/String;)V

    iget-object v6, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v6, v6, Lra1$c;->c:Ln91$b;

    iget-object v6, v6, Ln91$b;->a:Ln91$a;

    sget-object v7, Ln91$a;->p:Ln91$a;

    if-ne v6, v7, :cond_5

    const-wide/32 v8, 0x5265c00

    goto :goto_2

    :cond_5
    const-wide/16 v8, -0x1

    :goto_2
    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lra1$c$a;->a:Ld71$b;

    iget v6, v6, Ld71$b;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Ln91$b;->g:Ljava/lang/Integer;

    :cond_6
    if-nez v2, :cond_8

    iget-boolean v2, v1, Ln91$b;->b:Z

    if-eqz v2, :cond_7

    iget-object v2, v1, Ln91$b;->a:Ln91$a;

    if-ne v2, v7, :cond_7

    iget-object v2, p0, Lra1$c$a;->a:Ld71$b;

    iget v6, v2, Ld71$b;->g:I

    if-eq v6, v4, :cond_7

    iget-object v5, v2, Ld71$b;->d:Ljava/lang/String;

    :cond_7
    move-object v2, v5

    :cond_8
    iget-object v4, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v4, v4, Lra1$c;->a:Li91;

    invoke-static {v4, v1, v8, v9}, Lo71;->h(Li91;Ln91$b;J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time to save "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v5, v5, Lra1$c;->a:Li91;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    :cond_9
    if-nez v2, :cond_a

    iget-object v2, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v3, v2, Lra1$c;->d:Landroid/content/Context;

    iget-object v2, v2, Lra1$c;->c:Ln91$b;

    iget-object v2, v2, Ln91$b;->a:Ln91$a;

    invoke-virtual {v2}, Ln91$a;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :cond_a
    invoke-static {}, Lra1;->a()Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    iget-object v2, p0, Lra1$c$a;->b:Lra1$c;

    iget-object v3, v2, Lra1$c;->f:Lra1$f;

    iget-object v4, v2, Lra1$c;->a:Li91;

    iget-object v5, v2, Lra1$c;->c:Ln91$b;

    iget-object v6, v1, Ln91$b;->f:Ljava/lang/String;

    iget v1, v2, Lra1$c;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p0, Lra1$c$a;->b:Lra1$c;

    iget-boolean v8, v0, Lra1$c;->g:Z

    iget-boolean v9, v0, Lra1$c;->h:Z

    invoke-interface/range {v3 .. v9}, Lra1$f;->b(Li91;Ln91$b;Ljava/lang/String;IZZ)V

    const-string v0, "lookup complete"

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Personification"

    const-string v2, "Enhanced"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lra1$c$a;->a:Ld71$b;

    iget-object v1, v1, Ld71$b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lra1$c$a;->a:Ld71$b;

    iget v1, v1, Ld71$b;->b:I

    if-lez v1, :cond_c

    goto :goto_3

    :cond_c
    sget-object v1, Lw91$a;->r:Lw91$a;

    goto :goto_4

    :cond_d
    :goto_3
    sget-object v1, Lw91$a;->s:Lw91$a;

    :goto_4
    invoke-static {p0, v1, v0}, Lw91;->c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V

    return-void
.end method
