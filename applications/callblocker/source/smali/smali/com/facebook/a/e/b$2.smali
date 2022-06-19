.class final Lcom/facebook/a/e/b$2;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Lcom/facebook/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/e/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-static {}, Lcom/facebook/a/e/b;->g()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    const-string/jumbo v1, "SUGGEST_EVENT"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a;

    .line 186
    new-instance v1, Lcom/facebook/a/e/b$2$1;

    invoke-direct {v1, p0}, Lcom/facebook/a/e/b$2$1;-><init>(Lcom/facebook/a/e/b$2;)V

    invoke-virtual {v0, v1}, Lcom/facebook/a/e/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
