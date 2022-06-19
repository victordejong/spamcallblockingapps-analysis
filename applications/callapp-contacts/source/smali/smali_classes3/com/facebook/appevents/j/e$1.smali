.class final Lcom/facebook/appevents/j/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/j/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/j/e;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/j/e;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/facebook/appevents/j/e$1;->a:Lcom/facebook/appevents/j/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/j/e$1;->a:Lcom/facebook/appevents/j/e;

    invoke-static {v0}, Lcom/facebook/appevents/j/e;->a(Lcom/facebook/appevents/j/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/f/b;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/facebook/appevents/j/e$1;->a:Lcom/facebook/appevents/j/e;

    invoke-static {v1}, Lcom/facebook/appevents/j/e;->a(Lcom/facebook/appevents/j/e;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    invoke-static {v0}, Lcom/facebook/appevents/j/c;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 127
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 128
    invoke-static {v3}, Lcom/facebook/appevents/b/a/d;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 132
    invoke-static {v3}, Lcom/facebook/appevents/j/c;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_2

    .line 134
    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/facebook/appevents/j/f;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 140
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    return-void
.end method
