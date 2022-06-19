.class final Lcom/google/android/gms/internal/measurement/q;
.super Lcom/google/android/gms/internal/measurement/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/gms/internal/measurement/lu;

.field final synthetic e:Lcom/google/android/gms/internal/measurement/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/lu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/q;->e:Lcom/google/android/gms/internal/measurement/ak;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/q;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/q;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/q;->c:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/q;->d:Lcom/google/android/gms/internal/measurement/lu;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/aa;-><init>(Lcom/google/android/gms/internal/measurement/ak;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->e:Lcom/google/android/gms/internal/measurement/ak;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ak;->c(Lcom/google/android/gms/internal/measurement/ak;)Lcom/google/android/gms/internal/measurement/mz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/mz;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/q;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/q;->c:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/q;->d:Lcom/google/android/gms/internal/measurement/lu;

    .line 2
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/mz;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/nc;)V

    return-void
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->d:Lcom/google/android/gms/internal/measurement/lu;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/lu;->a(Landroid/os/Bundle;)V

    return-void
.end method
