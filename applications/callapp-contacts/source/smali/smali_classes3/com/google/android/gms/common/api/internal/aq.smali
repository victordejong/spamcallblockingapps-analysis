.class final synthetic Lcom/google/android/gms/common/api/internal/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/aq;->a:Lcom/google/android/gms/common/api/internal/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->a:Lcom/google/android/gms/common/api/internal/k;

    const/4 v1, 0x0

    .line 1000
    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/k;->c:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/k;->b:Landroid/os/IBinder;

    const-string v1, "Disconnected."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/k;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/k;->a:Lcom/google/android/gms/common/api/internal/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/e;->a(I)V

    return-void
.end method
