.class public Le5/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le5/x;

.field public final b:Lj5/f;

.field public final c:Lk5/a;

.field public final d:Lf5/b;

.field public final e:Le5/i0;


# direct methods
.method public constructor <init>(Le5/x;Lj5/f;Lk5/a;Lf5/b;Le5/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le5/h0;->a:Le5/x;

    .line 3
    iput-object p2, p0, Le5/h0;->b:Lj5/f;

    .line 4
    iput-object p3, p0, Le5/h0;->c:Lk5/a;

    .line 5
    iput-object p4, p0, Le5/h0;->d:Lf5/b;

    .line 6
    iput-object p5, p0, Le5/h0;->e:Le5/i0;

    return-void
.end method

.method public static a(Landroid/content/Context;Le5/e0;Lx2/f;Le5/a;Lf5/b;Le5/i0;Ln5/c;Ll5/d;)Le5/h0;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    new-instance v1, Ljava/io/File;

    iget-object p2, p2, Lx2/f;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    const-string v2, ".com.google.firebase.crashlytics"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Le5/x;

    invoke-direct {v2, p0, p1, p3, p6}, Le5/x;-><init>(Landroid/content/Context;Le5/e0;Le5/a;Ln5/c;)V

    .line 5
    new-instance v3, Lj5/f;

    invoke-direct {v3, v0, p7}, Lj5/f;-><init>(Ljava/io/File;Ll5/d;)V

    .line 6
    sget-object p1, Lk5/a;->b:Lh5/a;

    .line 7
    invoke-static {p0}, Lu2/m;->b(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lu2/m;->a()Lu2/m;

    move-result-object p0

    new-instance p1, Ls2/a;

    sget-object p2, Lk5/a;->c:Ljava/lang/String;

    sget-object p3, Lk5/a;->d:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ls2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Lu2/m;->c(Lu2/d;)Lr2/g;

    move-result-object p0

    const-class p1, Lg5/v;

    .line 10
    new-instance p2, Lr2/b;

    const-string p3, "json"

    invoke-direct {p2, p3}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object p3, Lk5/a;->e:Lr2/e;

    .line 12
    check-cast p0, Lu2/j;

    const-string p6, "FIREBASE_CRASHLYTICS_REPORT"

    invoke-virtual {p0, p6, p1, p2, p3}, Lu2/j;->a(Ljava/lang/String;Ljava/lang/Class;Lr2/b;Lr2/e;)Lr2/f;

    move-result-object p0

    .line 13
    new-instance v4, Lk5/a;

    invoke-direct {v4, p0, p3}, Lk5/a;-><init>(Lr2/f;Lr2/e;)V

    .line 14
    new-instance p0, Le5/h0;

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Le5/h0;-><init>(Le5/x;Lj5/f;Lk5/a;Lf5/b;Le5/i0;)V

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le5/h0;->b:Lj5/f;

    .line 2
    iget-object v0, v0, Lj5/f;->b:Ljava/io/File;

    invoke-static {v0}, Lj5/f;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 3
    sget-object v1, Lj5/f;->j:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le5/h0;->b:Lj5/f;

    .line 2
    invoke-virtual {v0}, Lj5/f;->c()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 5
    invoke-virtual {v0}, Lj5/f;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 6
    :try_start_0
    sget-object v3, Lj5/f;->i:Lh5/a;

    invoke-static {v1}, Lj5/f;->h(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lh5/a;->f(Ljava/lang/String;)Lg5/v;

    move-result-object v3

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v5, Le5/b;

    invoke-direct {v5, v3, v4}, Le5/b;-><init>(Lg5/v;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load report file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; deleting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FirebaseCrashlytics"

    .line 11
    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le5/y;

    .line 15
    iget-object v3, p0, Le5/h0;->c:Lk5/a;

    .line 16
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v2}, Le5/y;->a()Lg5/v;

    move-result-object v4

    .line 18
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 19
    iget-object v3, v3, Lk5/a;->a:Lr2/f;

    .line 20
    new-instance v6, Lr2/a;

    sget-object v7, Lr2/d;->c:Lr2/d;

    const/4 v8, 0x0

    invoke-direct {v6, v8, v4, v7}, Lr2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lr2/d;)V

    .line 21
    new-instance v4, Ly2/m;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v2, v7}, Ly2/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 22
    check-cast v3, Lu2/k;

    invoke-virtual {v3, v6, v4}, Lu2/k;->a(Lr2/c;Lr2/h;)V

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 24
    new-instance v3, Ly2/l;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    .line 25
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
