.class public Lw7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ln7/h;

.field public b:Ljava/lang/Runnable;

.field public final synthetic c:Lm7/g;

.field public final synthetic d:Lw7/p;


# direct methods
.method public constructor <init>(Lw7/p;Ln7/h;Lm7/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw7/j;->d:Lw7/p;

    iput-object p3, p0, Lw7/j;->c:Lm7/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lw7/j;->a:Ln7/h;

    .line 3
    iput-object p0, p0, Lw7/j;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lw7/j;->d:Lw7/p;

    iget-object v1, p0, Lw7/j;->a:Ln7/h;

    .line 2
    iget-object v2, v0, Lw7/p;->a:Lw7/e;

    iget-object v2, v2, Lw7/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw7/q;

    .line 3
    iget-object v4, v0, Lw7/p;->b:Lw7/g;

    check-cast v4, Lw7/c$b;

    .line 4
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 5
    iget-object v5, v0, Lw7/p;->a:Lw7/e;

    invoke-interface {v3, v4, v5, v1}, Lw7/q;->b(Landroid/content/Context;Lw7/e;Ln7/h;)Lm7/c;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 6
    iget-object v0, p0, Lw7/j;->c:Lm7/g;

    iget-object v1, p0, Lw7/j;->a:Ln7/h;

    invoke-virtual {v0, v1}, Lm7/g;->q(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_2
    new-instance v0, Lw7/j$a;

    invoke-direct {v0, p0}, Lw7/j$a;-><init>(Lw7/j;)V

    check-cast v3, Lm7/g;

    invoke-virtual {v3, v0}, Lm7/g;->k(Lm7/d;)V

    return-void
.end method
