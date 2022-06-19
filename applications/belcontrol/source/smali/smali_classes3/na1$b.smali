.class public Lna1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lna1;->s(ZLjava/util/List;Lna1$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lna1$h;

.field public final synthetic d:Landroid/os/Handler;

.field public final synthetic f:Lna1;


# direct methods
.method public constructor <init>(Lna1;ZLjava/util/List;Lna1$h;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lna1$b;->f:Lna1;

    iput-boolean p2, p0, Lna1$b;->a:Z

    iput-object p3, p0, Lna1$b;->b:Ljava/util/List;

    iput-object p4, p0, Lna1$b;->c:Lna1$h;

    iput-object p5, p0, Lna1$b;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Loa1;

    const/4 v1, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v0, v1, v2}, Loa1;-><init>(ILjava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lna1$b;->f:Lna1;

    iget-boolean v2, p0, Lna1$b;->a:Z

    iget-object v3, p0, Lna1$b;->b:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lna1;->q(ZLjava/util/List;)Lpa1;

    move-result-object v1
    :try_end_0
    .catch Lma1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lma1;->a()Loa1;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lna1$b;->f:Lna1;

    invoke-virtual {v2}, Lna1;->g()V

    iget-object v2, p0, Lna1$b;->f:Lna1;

    iget-boolean v2, v2, Lna1;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lna1$b;->c:Lna1$h;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lna1$b;->d:Landroid/os/Handler;

    new-instance v3, Lna1$b$a;

    invoke-direct {v3, p0, v0, v1}, Lna1$b$a;-><init>(Lna1$b;Loa1;Lpa1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
