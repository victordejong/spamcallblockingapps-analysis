.class public Lcom/criteo/publisher/model/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/criteo/publisher/e/c;

.field private final c:Lcom/criteo/publisher/m0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/m0/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/e/c;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    .line 45
    new-instance v0, Lcom/criteo/publisher/m0/h;

    invoke-direct {v0}, Lcom/criteo/publisher/m0/h;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/model/u;->c:Lcom/criteo/publisher/m0/h;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/criteo/publisher/model/u;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    iput-object p1, p0, Lcom/criteo/publisher/model/u;->a:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/criteo/publisher/model/u;->b:Lcom/criteo/publisher/e/c;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "http.agent"

    .line 125
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 127
    invoke-static {v0}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/criteo/publisher/model/u;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/criteo/publisher/model/u;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 78
    new-instance v0, Lcom/criteo/publisher/model/u$b;

    invoke-direct {v0, p0, p1}, Lcom/criteo/publisher/model/u$b;-><init>(Lcom/criteo/publisher/model/u;Ljava/lang/Runnable;)V

    .line 85
    iget-object p1, p0, Lcom/criteo/publisher/model/u;->b:Lcom/criteo/publisher/e/c;

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/e/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/criteo/publisher/model/u;)Lcom/criteo/publisher/m0/h;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/criteo/publisher/model/u;->c:Lcom/criteo/publisher/m0/h;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/criteo/publisher/model/u;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-object v1
.end method


# virtual methods
.method public b()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/criteo/publisher/model/u;->d()V

    .line 74
    iget-object v0, p0, Lcom/criteo/publisher/model/u;->c:Lcom/criteo/publisher/m0/h;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 58
    new-instance v0, Lcom/criteo/publisher/model/u$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/u$a;-><init>(Lcom/criteo/publisher/model/u;)V

    invoke-direct {p0, v0}, Lcom/criteo/publisher/model/u;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method e()Ljava/lang/String;
    .locals 2

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/criteo/publisher/model/u;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/criteo/publisher/model/u;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
