.class public Leh1$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Leh1;


# direct methods
.method public constructor <init>(Leh1;)V
    .locals 0

    iput-object p1, p0, Leh1$c;->a:Leh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Leh1$c;->a:Leh1;

    invoke-static {v0}, Leh1;->a(Leh1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leh1$c;->a:Leh1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leh1;->c(Leh1;Z)Z

    iget-object v0, p0, Leh1$c;->a:Leh1;

    invoke-static {v0}, Leh1;->f(Leh1;)Leh1$b;

    move-result-object v0

    iget-object v1, p0, Leh1$c;->a:Leh1;

    invoke-static {v1}, Leh1;->d(Leh1;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Leh1$c;->a:Leh1;

    invoke-static {v2}, Leh1;->e(Leh1;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Leh1$b;->c(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leh1$c;->a:Leh1;

    invoke-static {v0}, Leh1;->f(Leh1;)Leh1$b;

    move-result-object v0

    invoke-virtual {v0}, Leh1$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leh1$c;->a:Leh1;

    invoke-static {v0}, Leh1;->f(Leh1;)Leh1$b;

    move-result-object v0

    invoke-virtual {v0}, Leh1$b;->d()V

    :cond_1
    iget-object v0, p0, Leh1$c;->a:Leh1;

    invoke-static {v0}, Leh1;->f(Leh1;)Leh1$b;

    move-result-object v0

    invoke-virtual {v0}, Leh1$b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leh1$c;->a:Leh1;

    invoke-static {v0}, Leh1;->g(Leh1;)Leh1$d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leh1$c;->a:Leh1;

    invoke-static {v0}, Leh1;->g(Leh1;)Leh1$d;

    move-result-object v0

    invoke-interface {v0}, Leh1$d;->onVisibilityChanged()V

    iget-object v0, p0, Leh1$c;->a:Leh1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leh1;->b(Leh1;Z)Z

    :cond_2
    iget-object v0, p0, Leh1$c;->a:Leh1;

    invoke-static {v0}, Leh1;->a(Leh1;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Leh1$c;->a:Leh1;

    invoke-virtual {v0}, Leh1;->i()V

    :cond_3
    return-void
.end method
