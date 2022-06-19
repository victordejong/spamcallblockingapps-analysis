.class public Ljk0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljk0$e;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "jk0"


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Timer;

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljk0;->b:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-object p1, p0, Ljk0;->d:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ljk0;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Ljk0;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Ljk0;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic b(Ljk0;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ljk0;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljk0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Ljk0;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljk0;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ljk0;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Ljk0;->c:Ljava/util/Timer;

    return-object p0
.end method

.method public static synthetic f(Ljk0;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Ljk0;->c:Ljava/util/Timer;

    return-object p1
.end method

.method public static synthetic g(Ljk0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljk0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Ljk0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljk0;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static i(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "%s/app_indexing"

    invoke-static {v1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0, v0}, Lcom/facebook/GraphRequest;->K(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$e;)Lcom/facebook/GraphRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->y()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v0, "tree"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ltk0;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "app_version"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "platform"

    const-string v0, "android"

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "request_type"

    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "app_indexing"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lgk0;->j()Ljava/lang/String;

    move-result-object p0

    const-string p3, "device_session_id"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->Z(Landroid/os/Bundle;)V

    new-instance p0, Ljk0$d;

    invoke-direct {p0}, Ljk0$d;-><init>()V

    invoke-virtual {p1, p0}, Lcom/facebook/GraphRequest;->V(Lcom/facebook/GraphRequest$e;)V

    return-object p1
.end method


# virtual methods
.method public j()V
    .locals 3

    new-instance v0, Ljk0$a;

    invoke-direct {v0, p0}, Ljk0$a;-><init>(Ljk0;)V

    invoke-static {}, Lui0;->o()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Ljk0$b;

    invoke-direct {v2, p0, v0}, Ljk0$b;-><init>(Ljk0;Ljava/util/TimerTask;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lui0;->o()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Ljk0$c;

    invoke-direct {v1, p0, p1}, Ljk0$c;-><init>(Ljk0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Ljk0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljk0;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljk0;->c:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljk0;->e:Ljava/lang/String;

    const-string v2, "Error unscheduling indexing job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
