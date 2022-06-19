.class final Lcom/google/android/play/core/internal/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/play/core/splitinstall/s;

.field final synthetic c:Lcom/google/android/play/core/internal/t;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/t;Ljava/util/List;Lcom/google/android/play/core/splitinstall/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/s;->c:Lcom/google/android/play/core/internal/t;

    iput-object p2, p0, Lcom/google/android/play/core/internal/s;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/internal/s;->b:Lcom/google/android/play/core/splitinstall/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "SplitCompat"

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/internal/s;->c:Lcom/google/android/play/core/internal/t;

    .line 1000
    iget-object v1, v1, Lcom/google/android/play/core/internal/t;->b:Lcom/google/android/play/core/internal/v;

    iget-object v2, p0, Lcom/google/android/play/core/internal/s;->a:Ljava/util/List;

    .line 2000
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const-string v4, "split_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/play/core/internal/v;->a:Lcom/google/android/play/core/splitcompat/d;

    invoke-virtual {v4, v3}, Lcom/google/android/play/core/splitcompat/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/play/core/internal/s;->c:Lcom/google/android/play/core/internal/t;

    iget-object v2, p0, Lcom/google/android/play/core/internal/s;->b:Lcom/google/android/play/core/splitinstall/s;

    const/16 v3, -0xc

    .line 3000
    :try_start_1
    iget-object v1, v1, Lcom/google/android/play/core/internal/t;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/play/core/splitcompat/q;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/play/core/splitcompat/a;->c(Landroid/content/Context;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_2

    const-string v1, "Emulating splits failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v3}, Lcom/google/android/play/core/splitinstall/s;->a(I)V

    return-void

    :cond_2
    invoke-interface {v2}, Lcom/google/android/play/core/splitinstall/s;->a()V

    return-void

    :catch_0
    move-exception v1

    const-string v4, "Error emulating splits."

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v2, v3}, Lcom/google/android/play/core/splitinstall/s;->a(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/play/core/internal/s;->c:Lcom/google/android/play/core/internal/t;

    iget-object v1, p0, Lcom/google/android/play/core/internal/s;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/internal/s;->b:Lcom/google/android/play/core/splitinstall/s;

    .line 4000
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/t;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v2}, Lcom/google/android/play/core/splitinstall/s;->b()V

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/google/android/play/core/splitinstall/s;->a(I)V

    :cond_5
    return-void

    :catch_1
    move-exception v1

    const-string v2, "Error checking verified files."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/play/core/internal/s;->b:Lcom/google/android/play/core/splitinstall/s;

    const/16 v1, -0xb

    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/s;->a(I)V

    return-void
.end method
