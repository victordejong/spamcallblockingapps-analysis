.class public Lnf1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnf1$c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnf1;-><init>(Ldf1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnf1;


# direct methods
.method public constructor <init>(Lnf1;)V
    .locals 0

    iput-object p1, p0, Lnf1$b;->a:Lnf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmf1$b;)V
    .locals 4

    invoke-static {}, Lnf1;->d()Lmf1$b;

    move-result-object v0

    if-eq v0, p1, :cond_3

    invoke-static {}, Lnf1;->f()Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmf1$b;->b:Lmf1$b;

    if-ne p1, v1, :cond_0

    invoke-static {}, Lnf1;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MoatOnOff"

    const-string v2, "Moat enabled - Version 1.7.11"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lnf1;->e(Lmf1$b;)Lmf1$b;

    invoke-static {}, Lnf1;->f()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf1$a;

    sget-object v3, Lmf1$b;->b:Lmf1$b;

    if-ne p1, v3, :cond_1

    invoke-interface {v2}, Lmf1$a;->d()V

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lmf1$a;->b()V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    iget-object p1, p0, Lnf1$b;->a:Lnf1;

    invoke-static {p1}, Lnf1;->i(Lnf1;)V

    return-void
.end method
