.class public Lcom/facebook/a/b/e;
.super Ljava/lang/Object;
.source "ViewIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/b/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:Lcom/facebook/a/b/e;


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Timer;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/facebook/a/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/b/e;->c:Ljava/lang/ref/WeakReference;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/a/b/e;->e:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/a/b/e;->b:Landroid/os/Handler;

    .line 80
    sput-object p0, Lcom/facebook/a/b/e;->f:Lcom/facebook/a/b/e;

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/k;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 232
    if-nez p0, :cond_0

    .line 265
    :goto_0
    return-object v0

    .line 236
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%s/app_indexing"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 238
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {p1, v1, v0, v0}, Lcom/facebook/k;->a(Lcom/facebook/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lcom/facebook/k;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    if-nez v0, :cond_1

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    :cond_1
    const-string/jumbo v2, "tree"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v2, "app_version"

    invoke-static {}, Lcom/facebook/a/d/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v2, "request_type"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v2, "app_indexing"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    const-string/jumbo v2, "device_session_id"

    .line 253
    invoke-static {}, Lcom/facebook/a/b/b;->c()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_2
    invoke-virtual {v1, v0}, Lcom/facebook/k;->a(Landroid/os/Bundle;)V

    .line 258
    new-instance v0, Lcom/facebook/a/b/e$4;

    invoke-direct {v0}, Lcom/facebook/a/b/e$4;-><init>()V

    invoke-virtual {v1, v0}, Lcom/facebook/k;->a(Lcom/facebook/k$b;)V

    move-object v0, v1

    .line 265
    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/a/b/e;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/a/b/e;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/a/b/e;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/a/b/e;->d:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/a/b/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/a/b/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/b/e$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/a/b/e$3;-><init>(Lcom/facebook/a/b/e;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method static synthetic b(Lcom/facebook/a/b/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/a/b/e;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/a/b/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/a/b/e;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/a/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/a/b/e;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/a/b/e;->d:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/a/b/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/a/b/e;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/facebook/a/b/e$1;

    invoke-direct {v0, p0}, Lcom/facebook/a/b/e$1;-><init>(Lcom/facebook/a/b/e;)V

    .line 138
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/a/b/e$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/a/b/e$2;-><init>(Lcom/facebook/a/b/e;Ljava/util/TimerTask;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/a/b/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 161
    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/b/e;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/b/e;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/a/b/e;->d:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/facebook/a/b/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "Error unscheduling indexing job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
