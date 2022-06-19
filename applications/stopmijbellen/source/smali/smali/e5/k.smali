.class public Le5/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/z$a;


# instance fields
.field public final synthetic a:Le5/p;


# direct methods
.method public constructor <init>(Le5/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/k;->a:Le5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll5/d;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    iget-object v6, p0, Le5/k;->a:Le5/p;

    .line 2
    monitor-enter v6

    .line 3
    :try_start_0
    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "FirebaseCrashlytics"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 7
    iget-object v7, v6, Le5/p;->d:Le5/f;

    new-instance v8, Le5/m;

    move-object v0, v8

    move-object v1, v6

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Le5/m;-><init>(Le5/p;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Ll5/d;)V

    .line 8
    invoke-virtual {v7, v8}, Le5/f;->c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-static {p1}, Le5/l0;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :catch_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v6

    throw p1
.end method
