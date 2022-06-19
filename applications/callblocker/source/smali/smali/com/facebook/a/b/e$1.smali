.class Lcom/facebook/a/b/e$1;
.super Ljava/util/TimerTask;
.source "ViewIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/b/e;


# direct methods
.method constructor <init>(Lcom/facebook/a/b/e;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/a/b/e$1;->a:Lcom/facebook/a/b/e;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/b/e$1;->a:Lcom/facebook/a/b/e;

    invoke-static {v0}, Lcom/facebook/a/b/e;->a(Lcom/facebook/a/b/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 89
    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 96
    invoke-static {}, Lcom/facebook/a/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/facebook/internal/p;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {}, Lcom/facebook/a/b/a/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-static {}, Lcom/facebook/a/b/e;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UI Component tree indexing failure!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 105
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/facebook/a/b/e$a;

    invoke-direct {v1, v3}, Lcom/facebook/a/b/e$a;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 107
    iget-object v1, p0, Lcom/facebook/a/b/e$1;->a:Lcom/facebook/a/b/e;

    invoke-static {v1}, Lcom/facebook/a/b/e;->b(Lcom/facebook/a/b/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    const-string/jumbo v1, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    const-wide/16 v4, 0x1

    :try_start_2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :goto_1
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 119
    :try_start_4
    const-string/jumbo v4, "screenname"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v2, "screenshot"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 123
    invoke-static {v3}, Lcom/facebook/a/b/a/f;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    const-string/jumbo v2, "view"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 130
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/facebook/a/b/e$1;->a:Lcom/facebook/a/b/e;

    invoke-static {v1, v0}, Lcom/facebook/a/b/e;->a(Lcom/facebook/a/b/e;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    invoke-static {}, Lcom/facebook/a/b/e;->c()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Failed to take screenshot."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    .line 126
    :catch_2
    move-exception v0

    .line 127
    invoke-static {}, Lcom/facebook/a/b/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Failed to create JSONObject"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method
