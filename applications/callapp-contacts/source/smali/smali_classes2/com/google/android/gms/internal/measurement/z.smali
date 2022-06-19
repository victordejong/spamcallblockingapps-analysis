.class final Lcom/google/android/gms/internal/measurement/z;
.super Lcom/google/android/gms/internal/measurement/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/gms/internal/measurement/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/z;->e:Lcom/google/android/gms/internal/measurement/ak;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/z;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/z;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/z;->c:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/z;->d:Z

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/aa;-><init>(Lcom/google/android/gms/internal/measurement/ak;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z;->e:Lcom/google/android/gms/internal/measurement/ak;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ak;->c(Lcom/google/android/gms/internal/measurement/ak;)Lcom/google/android/gms/internal/measurement/mz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/mz;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/z;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/z;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z;->c:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/z;->d:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/z;->h:J

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/mz;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/b;ZJ)V

    return-void
.end method
