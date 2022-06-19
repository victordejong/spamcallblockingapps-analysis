.class final synthetic Lcom/google/android/gms/common/api/internal/k0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/common/api/internal/j;

.field private final e:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/j;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/k0;->d:Lcom/google/android/gms/common/api/internal/j;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/k0;->e:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k0;->d:Lcom/google/android/gms/common/api/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/k0;->e:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/j;->s(Landroid/os/IBinder;)V

    return-void
.end method
