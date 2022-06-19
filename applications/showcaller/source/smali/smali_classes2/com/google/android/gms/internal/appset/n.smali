.class final Lcom/google/android/gms/internal/appset/n;
.super Lcom/google/android/gms/internal/appset/e;
.source "com.google.android.gms:play-services-appset@@16.0.0"


# instance fields
.field final synthetic d:Lcom/google/android/gms/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/appset/o;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/appset/n;->d:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Lcom/google/android/gms/internal/appset/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final K3(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/appset/zzc;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcom/google/android/gms/appset/c;

    invoke-virtual {p2}, Lcom/google/android/gms/appset/zzc;->l0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/appset/zzc;->k0()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/appset/c;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/appset/n;->d:Lcom/google/android/gms/tasks/h;

    .line 2
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/r;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
