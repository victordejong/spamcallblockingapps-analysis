.class public Lcom/google/firebase/analytics/connector/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/analytics/connector/a;


# static fields
.field private static volatile c:Lcom/google/firebase/analytics/connector/a;


# instance fields
.field final a:Lcom/google/android/gms/measurement/a/a;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/b;->a:Lcom/google/android/gms/measurement/a/a;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/b;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/google/firebase/b;Landroid/content/Context;Lcom/google/firebase/b/d;)Lcom/google/firebase/analytics/connector/a;
    .locals 5

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/analytics/connector/b;->c:Lcom/google/firebase/analytics/connector/a;

    if-nez v0, :cond_2

    const-class v0, Lcom/google/firebase/analytics/connector/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/analytics/connector/b;->c:Lcom/google/firebase/analytics/connector/a;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    .line 7
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/b;->f()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const-class v2, Lcom/google/firebase/a;

    :try_start_1
    sget-object v3, Lcom/google/firebase/analytics/connector/c;->a:Ljava/util/concurrent/Executor;

    .line 9
    sget-object v4, Lcom/google/firebase/analytics/connector/d;->a:Lcom/google/firebase/b/b;

    invoke-interface {p2, v2, v3, v4}, Lcom/google/firebase/b/d;->a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/b/b;)V

    const-string p2, "dataCollectionDefaultEnabled"

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/b;->e()Z

    move-result p0

    .line 11
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance p0, Lcom/google/firebase/analytics/connector/b;

    const/4 p2, 0x0

    .line 12
    invoke-static {p1, p2, p2, p2, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/ak;

    move-result-object p1

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ak;->c:Lcom/google/android/gms/measurement/a/a;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firebase/analytics/connector/b;-><init>(Lcom/google/android/gms/measurement/a/a;)V

    sput-object p0, Lcom/google/firebase/analytics/connector/b;->c:Lcom/google/firebase/analytics/connector/a;

    .line 14
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/google/firebase/analytics/connector/b;->c:Lcom/google/firebase/analytics/connector/a;

    return-object p0
.end method

.method static final synthetic a(Lcom/google/firebase/b/a;)V
    .locals 2

    .line 1042
    iget-object p0, p0, Lcom/google/firebase/b/a;->b:Ljava/lang/Object;

    .line 1
    check-cast p0, Lcom/google/firebase/a;

    iget-boolean p0, p0, Lcom/google/firebase/a;->a:Z

    const-class v0, Lcom/google/firebase/analytics/connector/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/analytics/connector/b;->c:Lcom/google/firebase/analytics/connector/a;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/analytics/connector/b;

    iget-object v1, v1, Lcom/google/firebase/analytics/connector/b;->a:Lcom/google/android/gms/measurement/a/a;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 2001
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/measurement/ak;->a(Z)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/firebase/analytics/connector/a$b;)Lcom/google/firebase/analytics/connector/a$a;
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1001
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-object v1

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/b;->a:Lcom/google/android/gms/measurement/a/a;

    const-string v2, "fiam"

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/firebase/analytics/connector/internal/d;

    .line 5
    invoke-direct {v2, v0, p2}, Lcom/google/firebase/analytics/connector/internal/d;-><init>(Lcom/google/android/gms/measurement/a/a;Lcom/google/firebase/analytics/connector/a$b;)V

    goto :goto_2

    :cond_3
    const-string v2, "crash"

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "clx"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v2, Lcom/google/firebase/analytics/connector/internal/f;

    .line 8
    invoke-direct {v2, v0, p2}, Lcom/google/firebase/analytics/connector/internal/f;-><init>(Lcom/google/android/gms/measurement/a/a;Lcom/google/firebase/analytics/connector/a$b;)V

    :goto_2
    if-eqz v2, :cond_6

    .line 5
    iget-object p2, p0, Lcom/google/firebase/analytics/connector/b;->b:Ljava/util/Map;

    .line 9
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p2, Lcom/google/firebase/analytics/connector/b$1;

    invoke-direct {p2, p0, p1}, Lcom/google/firebase/analytics/connector/b$1;-><init>(Lcom/google/firebase/analytics/connector/b;Ljava/lang/String;)V

    return-object p2

    :cond_6
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/a$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/analytics/connector/b;->a:Lcom/google/android/gms/measurement/a/a;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 3
    invoke-static {p2}, Lcom/google/firebase/analytics/connector/internal/b;->a(Landroid/os/Bundle;)Lcom/google/firebase/analytics/connector/a$c;

    move-result-object p2

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/b;->a:Lcom/google/android/gms/measurement/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v1, v2}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/firebase/analytics/connector/a$c;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->a(Lcom/google/firebase/analytics/connector/a$c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/b;->a:Lcom/google/android/gms/measurement/a/a;

    .line 2
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->b(Lcom/google/firebase/analytics/connector/a$c;)Landroid/os/Bundle;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/a/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/b;->a:Lcom/google/android/gms/measurement/a/a;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, v1}, Lcom/google/android/gms/measurement/a/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    .line 1
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/b;->a:Lcom/google/android/gms/measurement/a/a;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/b;->a:Lcom/google/android/gms/measurement/a/a;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/b;->a:Lcom/google/android/gms/measurement/a/a;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
