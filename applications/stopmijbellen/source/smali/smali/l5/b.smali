.class public Ll5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/c;


# direct methods
.method public constructor <init>(Ll5/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll5/b;->a:Ll5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ll5/b;->a:Ll5/c;

    .line 3
    iget-object v0, p1, Ll5/c;->f:Lj4/s1;

    .line 4
    iget-object p1, p1, Ll5/c;->b:Lm5/f;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1}, Lj4/s1;->e(Lm5/f;)Ljava/util/Map;

    move-result-object v5

    .line 7
    invoke-virtual {v0, v5}, Lj4/s1;->c(Ljava/util/Map;)Li5/a;

    move-result-object v6

    .line 8
    invoke-virtual {v0, v6, p1}, Lj4/s1;->a(Li5/a;Lm5/f;)Li5/a;

    move-result-object p1

    .line 9
    iget-object v6, v0, Lj4/s1;->c:Ljava/lang/Object;

    check-cast v6, Lb0/a;

    .line 10
    invoke-virtual {v6, v3}, Lb0/a;->c(I)Z

    .line 11
    iget-object v6, v0, Lj4/s1;->c:Ljava/lang/Object;

    check-cast v6, Lb0/a;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    invoke-virtual {v6, v2}, Lb0/a;->c(I)Z

    .line 13
    invoke-virtual {p1}, Li5/a;->b()Lj4/c1;

    move-result-object p1

    .line 14
    iget v5, p1, Lj4/c1;->a:I

    .line 15
    iget-object v6, v0, Lj4/s1;->c:Ljava/lang/Object;

    check-cast v6, Lb0/a;

    .line 16
    invoke-virtual {v6, v2}, Lb0/a;->c(I)Z

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    const/16 v6, 0xc9

    if-eq v5, v6, :cond_1

    const/16 v6, 0xca

    if-eq v5, v6, :cond_1

    const/16 v6, 0xcb

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    .line 17
    iget-object p1, p1, Lj4/c1;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, p1}, Lj4/s1;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_3

    .line 19
    :cond_2
    iget-object p1, v0, Lj4/s1;->c:Ljava/lang/Object;

    check-cast p1, Lb0/a;

    .line 20
    invoke-virtual {p1, v1}, Lb0/a;->c(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 21
    :catch_0
    iget-object p1, v0, Lj4/s1;->c:Ljava/lang/Object;

    check-cast p1, Lb0/a;

    .line 22
    invoke-virtual {p1, v1}, Lb0/a;->c(I)Z

    :goto_2
    move-object p1, v4

    :goto_3
    if-eqz p1, :cond_5

    .line 23
    iget-object v0, p0, Ll5/b;->a:Ll5/c;

    .line 24
    iget-object v0, v0, Ll5/c;->c:Ll5/e;

    .line 25
    invoke-virtual {v0, p1}, Ll5/e;->a(Lorg/json/JSONObject;)Lm5/e;

    move-result-object v0

    .line 26
    iget-object v1, p0, Ll5/b;->a:Ll5/c;

    .line 27
    iget-object v1, v1, Ll5/c;->e:Li4/j;

    .line 28
    iget-wide v5, v0, Lm5/e;->d:J

    .line 29
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "FirebaseCrashlytics"

    .line 30
    invoke-static {v7, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :try_start_1
    const-string v2, "expires_at"

    .line 31
    invoke-virtual {p1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    new-instance v2, Ljava/io/FileWriter;

    invoke-virtual {v1}, Li4/j;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v4, v2

    goto :goto_4

    :catch_1
    nop

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v4, :cond_3

    .line 35
    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 36
    :catch_2
    :cond_3
    throw p1

    :catch_3
    move-object v2, v4

    :goto_5
    if-eqz v2, :cond_4

    .line 37
    :goto_6
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 38
    :catch_4
    :cond_4
    iget-object v1, p0, Ll5/b;->a:Ll5/c;

    .line 39
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 41
    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 42
    iget-object p1, p0, Ll5/b;->a:Ll5/c;

    .line 43
    iget-object v1, p1, Ll5/c;->b:Lm5/f;

    .line 44
    iget-object v1, v1, Lm5/f;->f:Ljava/lang/String;

    .line 45
    iget-object p1, p1, Ll5/c;->a:Landroid/content/Context;

    invoke-static {p1}, Le5/e;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 46
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "existing_instance_identifier"

    .line 47
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    iget-object p1, p0, Ll5/b;->a:Ll5/c;

    .line 50
    iget-object p1, p1, Ll5/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Ll5/b;->a:Ll5/c;

    .line 53
    iget-object p1, p1, Ll5/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 55
    iget-object v1, v0, Lm5/e;->a:Lm5/a;

    .line 56
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 57
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 58
    iget-object v0, v0, Lm5/e;->a:Lm5/a;

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Ll5/b;->a:Ll5/c;

    .line 61
    iget-object v0, v0, Ll5/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63
    :cond_5
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
