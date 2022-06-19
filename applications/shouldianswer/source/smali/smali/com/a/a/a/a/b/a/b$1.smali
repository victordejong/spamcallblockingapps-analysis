.class Lcom/a/a/a/a/b/a/b$1;
.super Ljava/lang/Object;
.source "BaseItemAnimationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/a/a/b/a/b;->a(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/a/a/a/a/b/a/b;


# direct methods
.method constructor <init>(Lcom/a/a/a/a/b/a/b;Ljava/util/List;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/a/a/a/a/b/a/b$1;->b:Lcom/a/a/a/a/b/a/b;

    iput-object p2, p0, Lcom/a/a/a/a/b/a/b$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/a/b/a/e;

    .line 84
    iget-object v2, p0, Lcom/a/a/a/a/b/a/b$1;->b:Lcom/a/a/a/a/b/a/b;

    invoke-virtual {v2, v1}, Lcom/a/a/a/a/b/a/b;->b(Lcom/a/a/a/a/b/a/e;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b$1;->b:Lcom/a/a/a/a/b/a/b;

    iget-object v0, v0, Lcom/a/a/a/a/b/a/b;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/a/a/a/a/b/a/b$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
