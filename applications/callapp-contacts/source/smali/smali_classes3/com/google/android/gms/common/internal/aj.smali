.class final Lcom/google/android/gms/common/internal/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/j$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/j;

.field final synthetic b:Lcom/google/android/gms/tasks/i;

.field final synthetic c:Lcom/google/android/gms/common/internal/n$a;

.field final synthetic d:Lcom/google/android/gms/common/internal/al;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/tasks/i;Lcom/google/android/gms/common/internal/n$a;Lcom/google/android/gms/common/internal/al;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/aj;->a:Lcom/google/android/gms/common/api/j;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/aj;->b:Lcom/google/android/gms/tasks/i;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/aj;->c:Lcom/google/android/gms/common/internal/n$a;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/aj;->d:Lcom/google/android/gms/common/internal/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/aj;->a:Lcom/google/android/gms/common/api/j;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/common/api/j;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/m;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/aj;->b:Lcom/google/android/gms/tasks/i;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/aj;->c:Lcom/google/android/gms/common/internal/n$a;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/n$a;->a(Lcom/google/android/gms/common/api/m;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/aj;->b:Lcom/google/android/gms/tasks/i;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Exception;)V

    return-void
.end method
