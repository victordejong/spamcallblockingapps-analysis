.class final synthetic Lcom/google/android/gms/common/api/internal/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/k;

.field private final b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/k;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ao;->a:Lcom/google/android/gms/common/api/internal/k;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ao;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ao;->a:Lcom/google/android/gms/common/api/internal/k;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ao;->b:Landroid/os/IBinder;

    const/4 v2, 0x0

    .line 1000
    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/k;->c:Z

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/k;->b:Landroid/os/IBinder;

    const-string v1, "Connected."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/k;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/k;->a:Lcom/google/android/gms/common/api/internal/e;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/e;->a()V

    return-void
.end method
