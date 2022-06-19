.class public Le5/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Lm5/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Le5/o;


# direct methods
.method public constructor <init>(Le5/o;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/n;->b:Le5/o;

    iput-object p2, p0, Le5/n;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lm5/a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "FirebaseCrashlytics"

    const-string v1, "Received null app settings at app startup. Cannot send cached reports"

    .line 2
    invoke-static {p1, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le5/n;->b:Le5/o;

    iget-object p1, p1, Le5/o;->b:Le5/p$a;

    iget-object p1, p1, Le5/p$a;->b:Le5/p;

    invoke-static {p1}, Le5/p;->b(Le5/p;)Lcom/google/android/gms/tasks/Task;

    .line 5
    iget-object p1, p0, Le5/n;->b:Le5/o;

    iget-object p1, p1, Le5/o;->b:Le5/p$a;

    iget-object p1, p1, Le5/p$a;->b:Le5/p;

    .line 6
    iget-object p1, p1, Le5/p;->l:Le5/h0;

    .line 7
    iget-object v1, p0, Le5/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Le5/h0;->c(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 8
    iget-object p1, p0, Le5/n;->b:Le5/o;

    iget-object p1, p1, Le5/o;->b:Le5/p$a;

    iget-object p1, p1, Le5/p$a;->b:Le5/p;

    iget-object p1, p1, Le5/p;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_0
    return-object p1
.end method
