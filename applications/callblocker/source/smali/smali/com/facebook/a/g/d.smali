.class public final Lcom/facebook/a/g/d;
.super Ljava/lang/Object;
.source "SuggestedEventsManager.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/a/g/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/a/g/d;->b:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/a/g/d;->c:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 3

    .prologue
    .line 50
    const-class v1, Lcom/facebook/a/g/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/a/g/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    monitor-exit v1

    return-void

    .line 53
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/a/g/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    invoke-static {}, Lcom/facebook/a/g/d;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 99
    :try_start_0
    sget-object v0, Lcom/facebook/a/g/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/a/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/a/g/d;->b:Ljava/util/Set;

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/a/g/d;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/facebook/a/g/e;->a(Landroid/app/Activity;)V

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {p0}, Lcom/facebook/a/g/e;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/facebook/a/g/d;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 59
    invoke-static {v1, v2}, Lcom/facebook/internal/m;->a(Ljava/lang/String;Z)Lcom/facebook/internal/l;

    move-result-object v1

    .line 61
    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/internal/l;->m()Ljava/lang/String;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 68
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "production_events"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    const-string/jumbo v1, "production_events"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    .line 71
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 72
    sget-object v4, Lcom/facebook/a/g/d;->b:Ljava/util/Set;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    :cond_2
    const-string/jumbo v1, "eligible_for_prediction_events"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    const-string/jumbo v1, "eligible_for_prediction_events"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 77
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 78
    sget-object v2, Lcom/facebook/a/g/d;->c:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 81
    :cond_3
    sget-object v0, Lcom/facebook/a/g/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/facebook/a/g/d;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :cond_4
    const-string/jumbo v0, "SUGGEST_EVENT"

    invoke-static {v0}, Lcom/facebook/a/e/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 86
    invoke-static {v0}, Lcom/facebook/a/g/a;->a(Ljava/io/File;)V

    .line 87
    invoke-static {}, Lcom/facebook/a/d/a;->c()Landroid/app/Activity;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-static {v0}, Lcom/facebook/a/g/d;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/facebook/a/g/d;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
