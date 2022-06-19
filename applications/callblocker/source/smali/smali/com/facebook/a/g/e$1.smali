.class Lcom/facebook/a/g/e$1;
.super Ljava/lang/Object;
.source "ViewObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/g/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/g/e;


# direct methods
.method constructor <init>(Lcom/facebook/a/g/e;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/a/g/e$1;->a:Lcom/facebook/a/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/g/e$1;->a:Lcom/facebook/a/g/e;

    invoke-static {v0}, Lcom/facebook/a/g/e;->a(Lcom/facebook/a/g/e;)Landroid/view/View;

    move-result-object v2

    .line 116
    iget-object v0, p0, Lcom/facebook/a/g/e$1;->a:Lcom/facebook/a/g/e;

    invoke-static {v0}, Lcom/facebook/a/g/e;->b(Lcom/facebook/a/g/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 117
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {v2}, Lcom/facebook/a/g/c;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 124
    invoke-static {v1}, Lcom/facebook/a/b/a/d;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 127
    invoke-static {v1}, Lcom/facebook/a/b/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_2

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-static {v1, v2, v4}, Lcom/facebook/a/g/f;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method
