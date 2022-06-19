.class final Lcom/google/android/gms/measurement/internal/y7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/google/android/gms/measurement/internal/k8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k8;ZLcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y7;->h:Lcom/google/android/gms/measurement/internal/k8;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/y7;->d:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/y7;->e:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/y7;->f:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/y7;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y7;->h:Lcom/google/android/gms/measurement/internal/k8;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/k8;->z(Lcom/google/android/gms/measurement/internal/k8;)Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y7;->h:Lcom/google/android/gms/measurement/internal/k8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y7;->d:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y7;->h:Lcom/google/android/gms/measurement/internal/k8;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/y7;->e:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y7;->f:Lcom/google/android/gms/measurement/internal/zzas;

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/y7;->d:Lcom/google/android/gms/measurement/internal/zzp;

    .line 6
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/k8;->K(Lcom/google/android/gms/measurement/internal/f3;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y7;->h:Lcom/google/android/gms/measurement/internal/k8;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/k8;->A(Lcom/google/android/gms/measurement/internal/k8;)V

    return-void
.end method
