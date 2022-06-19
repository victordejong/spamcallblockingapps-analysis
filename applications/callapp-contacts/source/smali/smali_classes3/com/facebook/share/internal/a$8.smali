.class final Lcom/facebook/share/internal/a$8;
.super Lcom/facebook/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Lcom/facebook/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/AccessToken;)V
    .locals 3

    .line 347
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    .line 356
    invoke-static {}, Lcom/facebook/share/internal/a;->f()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Lcom/facebook/share/internal/a;->a(I)I

    const/4 p1, 0x0

    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    .line 358
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 359
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 360
    invoke-static {}, Lcom/facebook/share/internal/a;->f()I

    move-result v0

    const-string v1, "OBJECT_SUFFIX"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 361
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    invoke-static {}, Lcom/facebook/share/internal/a;->g()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 367
    invoke-static {}, Lcom/facebook/share/internal/a;->h()Lcom/facebook/internal/r;

    move-result-object p1

    .line 1201
    iget-object v0, p1, Lcom/facebook/internal/r;->a:Ljava/io/File;

    sget-object v1, Lcom/facebook/internal/r$a;->a:Lcom/facebook/internal/r$a;

    invoke-static {}, Lcom/facebook/internal/r$a;->a()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1202
    iget-object p1, p1, Lcom/facebook/internal/r;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-eqz v0, :cond_0

    .line 1204
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/facebook/internal/r$h;

    invoke-direct {v1, v0}, Lcom/facebook/internal/r$h;-><init>([Ljava/io/File;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const-string p1, "com.facebook.sdk.LikeActionController.DID_RESET"

    .line 369
    invoke-static {p1}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;)V

    return-void
.end method
