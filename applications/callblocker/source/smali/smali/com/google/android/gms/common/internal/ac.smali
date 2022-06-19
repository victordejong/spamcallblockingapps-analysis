.class final Lcom/google/android/gms/common/internal/ac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/e$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/e;

.field private final synthetic b:Lcom/google/android/gms/tasks/h;

.field private final synthetic c:Lcom/google/android/gms/common/internal/r$a;

.field private final synthetic d:Lcom/google/android/gms/common/internal/r$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/common/internal/r$a;Lcom/google/android/gms/common/internal/r$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ac;->a:Lcom/google/android/gms/common/api/e;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ac;->b:Lcom/google/android/gms/tasks/h;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ac;->c:Lcom/google/android/gms/common/internal/r$a;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ac;->d:Lcom/google/android/gms/common/internal/r$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ac;->a:Lcom/google/android/gms/common/api/e;

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/e;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/internal/ac;->b:Lcom/google/android/gms/tasks/h;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ac;->c:Lcom/google/android/gms/common/internal/r$a;

    invoke-interface {v2, v0}, Lcom/google/android/gms/common/internal/r$a;->a(Lcom/google/android/gms/common/api/h;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Object;)V

    .line 7
    :goto_0
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ac;->b:Lcom/google/android/gms/tasks/h;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ac;->d:Lcom/google/android/gms/common/internal/r$b;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/r$b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
