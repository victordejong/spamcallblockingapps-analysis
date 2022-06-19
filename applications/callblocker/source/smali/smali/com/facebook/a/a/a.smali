.class public final Lcom/facebook/a/a/a;
.super Ljava/lang/Object;
.source "MetadataIndexer.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/facebook/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a/a;->a:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/a/a$1;

    invoke-direct {v1}, Lcom/facebook/a/a/a$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    sget-object v1, Lcom/facebook/a/a/a;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 42
    :try_start_0
    sget-object v0, Lcom/facebook/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/a/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/facebook/a/a/d;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/facebook/a/a/a;->d()V

    return-void
.end method

.method private static d()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-static {v0, v1}, Lcom/facebook/internal/m;->a(Ljava/lang/String;Z)Lcom/facebook/internal/l;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/internal/l;->l()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0}, Lcom/facebook/a/a/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
