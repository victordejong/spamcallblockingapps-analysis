.class final Lcom/google/android/gms/measurement/internal/f7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/measurement/internal/c7;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/c7;

.field final synthetic f:J

.field final synthetic g:Z

.field final synthetic h:Lcom/google/android/gms/measurement/internal/k7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k7;Lcom/google/android/gms/measurement/internal/c7;Lcom/google/android/gms/measurement/internal/c7;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f7;->h:Lcom/google/android/gms/measurement/internal/k7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/f7;->d:Lcom/google/android/gms/measurement/internal/c7;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/f7;->e:Lcom/google/android/gms/measurement/internal/c7;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/f7;->f:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/f7;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f7;->h:Lcom/google/android/gms/measurement/internal/k7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/f7;->d:Lcom/google/android/gms/measurement/internal/c7;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/f7;->e:Lcom/google/android/gms/measurement/internal/c7;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/f7;->f:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/f7;->g:Z

    const/4 v6, 0x0

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/k7;->F(Lcom/google/android/gms/measurement/internal/k7;Lcom/google/android/gms/measurement/internal/c7;Lcom/google/android/gms/measurement/internal/c7;JZLandroid/os/Bundle;)V

    return-void
.end method
