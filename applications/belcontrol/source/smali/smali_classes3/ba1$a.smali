.class public final Lba1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba1;->a(Li91;Ln91$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li91;


# direct methods
.method public constructor <init>(Li91;)V
    .locals 0

    iput-object p1, p0, Lba1$a;->a:Li91;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ln61;

    invoke-direct {v0}, Ln61;-><init>()V

    iget-object v1, p0, Lba1$a;->a:Li91;

    invoke-virtual {v0, v1}, Ln61;->b(Li91;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lk61;->g(Ln61;Z)Ln61;

    move-result-object v0
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received server error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lk61$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Still continue"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ln61;->d()Ln61$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lba1$a;->a:Li91;

    sget-object v1, Lq71$e;->b:Lq71$e;

    invoke-static {v0, v1}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object v0

    iget-boolean v1, v0, Ln91$b;->b:Z

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Ln91$b;->a:Ln91$a;

    sget-object v4, Ln91$a;->f:Ln91$a;

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lba1$a;->a:Li91;

    invoke-static {v1, v0, v2, v3}, Lo71;->h(Li91;Ln91$b;J)V

    return-void

    :cond_1
    iget-object v1, v0, Ln91$b;->a:Ln91$a;

    sget-object v4, Ln91$a;->q:Ln91$a;

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lba1$a;->a:Li91;

    invoke-static {v1, v0, v2, v3}, Lo71;->h(Li91;Ln91$b;J)V

    :cond_2
    sget-object v0, Lm91$c;->g:Lm91$c;

    iget-object v1, p0, Lba1$a;->a:Li91;

    invoke-static {p0, v0, v1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    sget-object v0, Lm91$c;->g:Lm91$c;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void
.end method
