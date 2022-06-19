.class Lcom/google/firebase/crashlytics/internal/common/Utils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/Utils;->callTask(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$tcs:Lcom/google/android/gms/tasks/i;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/i;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$tcs:Lcom/google/android/gms/tasks/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$callable:Ljava/util/concurrent/Callable;

    .line 64
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/h;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;-><init>(Lcom/google/firebase/crashlytics/internal/common/Utils$2;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 78
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$tcs:Lcom/google/android/gms/tasks/i;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Exception;)V

    return-void
.end method
