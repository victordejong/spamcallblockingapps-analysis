.class final Lcom/google/android/gms/internal/measurement/y;
.super Lcom/google/android/gms/internal/measurement/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Lcom/google/android/gms/internal/measurement/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y;->g:Lcom/google/android/gms/internal/measurement/ak;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/y;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/y;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/y;->d:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/y;->e:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/y;->f:Z

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/aa;-><init>(Lcom/google/android/gms/internal/measurement/ak;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/y;->h:J

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y;->g:Lcom/google/android/gms/internal/measurement/ak;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ak;->c(Lcom/google/android/gms/internal/measurement/ak;)Lcom/google/android/gms/internal/measurement/mz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/measurement/mz;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/y;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/y;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/y;->d:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/y;->e:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/y;->f:Z

    .line 3
    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/mz;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
