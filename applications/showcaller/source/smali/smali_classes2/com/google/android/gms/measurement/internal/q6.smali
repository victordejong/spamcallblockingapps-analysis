.class final Lcom/google/android/gms/measurement/internal/q6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/measurement/internal/f;

.field final synthetic e:J

.field final synthetic f:I

.field final synthetic g:J

.field final synthetic h:Z

.field final synthetic i:Lcom/google/android/gms/measurement/internal/v6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/v6;Lcom/google/android/gms/measurement/internal/f;JIJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q6;->i:Lcom/google/android/gms/measurement/internal/v6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/q6;->d:Lcom/google/android/gms/measurement/internal/f;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/q6;->e:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/q6;->f:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/q6;->g:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/q6;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q6;->i:Lcom/google/android/gms/measurement/internal/v6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q6;->d:Lcom/google/android/gms/measurement/internal/f;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v6;->W(Lcom/google/android/gms/measurement/internal/f;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q6;->i:Lcom/google/android/gms/measurement/internal/v6;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/q6;->e:J

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/v6;->r(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/q6;->i:Lcom/google/android/gms/measurement/internal/v6;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/q6;->d:Lcom/google/android/gms/measurement/internal/f;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/q6;->f:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/q6;->g:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/q6;->h:Z

    const/4 v9, 0x1

    .line 3
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/v6;->J(Lcom/google/android/gms/measurement/internal/v6;Lcom/google/android/gms/measurement/internal/f;IJZZ)V

    return-void
.end method
