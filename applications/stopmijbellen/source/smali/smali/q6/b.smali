.class public Lq6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lu4/b;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lr6/d;

.field public final e:Lr6/d;

.field public final f:Lr6/d;

.field public final g:Lcom/google/firebase/remoteconfig/internal/a;

.field public final h:Lr6/h;

.field public final i:Lcom/google/firebase/remoteconfig/internal/b;

.field public final j:Lx5/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lt4/c;Lx5/e;Lu4/b;Ljava/util/concurrent/Executor;Lr6/d;Lr6/d;Lr6/d;Lcom/google/firebase/remoteconfig/internal/a;Lr6/h;Lcom/google/firebase/remoteconfig/internal/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq6/b;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lq6/b;->j:Lx5/e;

    .line 4
    iput-object p4, p0, Lq6/b;->b:Lu4/b;

    .line 5
    iput-object p5, p0, Lq6/b;->c:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p6, p0, Lq6/b;->d:Lr6/d;

    .line 7
    iput-object p7, p0, Lq6/b;->e:Lr6/d;

    .line 8
    iput-object p8, p0, Lq6/b;->f:Lr6/d;

    .line 9
    iput-object p9, p0, Lq6/b;->g:Lcom/google/firebase/remoteconfig/internal/a;

    .line 10
    iput-object p10, p0, Lq6/b;->h:Lr6/h;

    .line 11
    iput-object p11, p0, Lq6/b;->i:Lcom/google/firebase/remoteconfig/internal/b;

    return-void
.end method

.method public static c(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq6/b;->g:Lcom/google/firebase/remoteconfig/internal/a;

    .line 2
    iget-object v1, v0, Lcom/google/firebase/remoteconfig/internal/a;->h:Lcom/google/firebase/remoteconfig/internal/b;

    .line 3
    iget-object v1, v1, Lcom/google/firebase/remoteconfig/internal/b;->a:Landroid/content/SharedPreferences;

    sget-wide v2, Lcom/google/firebase/remoteconfig/internal/a;->j:J

    const-string v4, "minimum_fetch_interval_in_seconds"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Lcom/google/firebase/remoteconfig/internal/a;->f:Lr6/d;

    .line 5
    invoke-virtual {v3}, Lr6/d;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    iget-object v4, v0, Lcom/google/firebase/remoteconfig/internal/a;->c:Ljava/util/concurrent/Executor;

    new-instance v5, Lr6/f;

    invoke-direct {v5, v0, v1, v2}, Lr6/f;-><init>(Lcom/google/firebase/remoteconfig/internal/a;J)V

    .line 6
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 7
    sget-object v1, Ls2/c;->e:Ls2/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lq6/b;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lz2/q;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lz2/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lq6/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq6/b;->h:Lr6/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    iget-object v2, v0, Lr6/h;->c:Lr6/d;

    invoke-static {v2}, Lr6/h;->c(Lr6/d;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v2, v0, Lr6/h;->d:Lr6/d;

    invoke-static {v2}, Lr6/h;->c(Lr6/d;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    iget-object v4, v0, Lr6/h;->c:Lr6/d;

    invoke-static {v4, v3}, Lr6/h;->e(Lr6/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    iget-object v5, v0, Lr6/h;->c:Lr6/d;

    invoke-static {v5}, Lr6/h;->b(Lr6/d;)Lr6/e;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lr6/h;->a(Ljava/lang/String;Lr6/e;)V

    .line 9
    new-instance v5, Lr6/j;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lr6/j;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 10
    :cond_0
    iget-object v4, v0, Lr6/h;->d:Lr6/d;

    invoke-static {v4, v3}, Lr6/h;->e(Lr6/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 11
    new-instance v5, Lr6/j;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lr6/j;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const-string v4, "FirebaseRemoteConfigValue"

    .line 12
    invoke-static {v3, v4}, Lr6/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v5, Lr6/j;

    const/4 v4, 0x0

    const-string v6, ""

    invoke-direct {v5, v6, v4}, Lr6/j;-><init>(Ljava/lang/String;I)V

    .line 14
    :goto_1
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2
.end method
