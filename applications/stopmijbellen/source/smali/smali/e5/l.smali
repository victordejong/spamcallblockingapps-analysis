.class public Le5/l;
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

.field public final synthetic b:Le5/m;


# direct methods
.method public constructor <init>(Le5/m;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/l;->b:Le5/m;

    iput-object p2, p0, Le5/l;->a:Ljava/util/concurrent/Executor;

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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "FirebaseCrashlytics"

    const-string v1, "Received null app settings, cannot send reports at crash time."

    .line 2
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/tasks/Task;

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Le5/l;->b:Le5/m;

    iget-object v1, v1, Le5/m;->e:Le5/p;

    .line 5
    invoke-static {v1}, Le5/p;->b(Le5/p;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    aput-object v1, p1, v0

    iget-object v0, p0, Le5/l;->b:Le5/m;

    iget-object v0, v0, Le5/m;->e:Le5/p;

    .line 6
    iget-object v0, v0, Le5/p;->l:Le5/h0;

    .line 7
    iget-object v1, p0, Le5/l;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Le5/h0;->c(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->whenAll([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_0
    return-object p1
.end method
