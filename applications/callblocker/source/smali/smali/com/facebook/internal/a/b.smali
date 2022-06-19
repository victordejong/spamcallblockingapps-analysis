.class public Lcom/facebook/internal/a/b;
.super Ljava/lang/Object;
.source "InstrumentManager.java"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/facebook/internal/j$b;->l:Lcom/facebook/internal/j$b;

    new-instance v1, Lcom/facebook/internal/a/b$1;

    invoke-direct {v1}, Lcom/facebook/internal/a/b$1;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    .line 54
    sget-object v0, Lcom/facebook/internal/j$b;->m:Lcom/facebook/internal/j$b;

    new-instance v1, Lcom/facebook/internal/a/b$2;

    invoke-direct {v1}, Lcom/facebook/internal/a/b$2;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    goto :goto_0
.end method
