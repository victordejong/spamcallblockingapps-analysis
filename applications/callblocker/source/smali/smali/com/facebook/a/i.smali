.class public Lcom/facebook/a/i;
.super Ljava/lang/Object;
.source "AppEventsManager.java"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/facebook/internal/j$b;->f:Lcom/facebook/internal/j$b;

    new-instance v1, Lcom/facebook/a/i$1;

    invoke-direct {v1}, Lcom/facebook/a/i$1;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    .line 54
    sget-object v0, Lcom/facebook/internal/j$b;->e:Lcom/facebook/internal/j$b;

    new-instance v1, Lcom/facebook/a/i$2;

    invoke-direct {v1}, Lcom/facebook/a/i$2;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    .line 64
    sget-object v0, Lcom/facebook/internal/j$b;->g:Lcom/facebook/internal/j$b;

    new-instance v1, Lcom/facebook/a/i$3;

    invoke-direct {v1}, Lcom/facebook/a/i$3;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    .line 74
    sget-object v0, Lcom/facebook/internal/j$b;->j:Lcom/facebook/internal/j$b;

    new-instance v1, Lcom/facebook/a/i$4;

    invoke-direct {v1}, Lcom/facebook/a/i$4;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    goto :goto_0
.end method
