.class final Lcom/google/android/gms/measurement/internal/s6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/f;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Z

.field final synthetic f:Lcom/google/android/gms/measurement/internal/v6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/v6;Lcom/google/android/gms/measurement/internal/f;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s6;->f:Lcom/google/android/gms/measurement/internal/v6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s6;->b:Lcom/google/android/gms/measurement/internal/f;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/s6;->c:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/s6;->d:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/s6;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s6;->f:Lcom/google/android/gms/measurement/internal/v6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s6;->b:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v6;->W(Lcom/google/android/gms/measurement/internal/f;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/s6;->f:Lcom/google/android/gms/measurement/internal/v6;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/s6;->b:Lcom/google/android/gms/measurement/internal/f;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/s6;->c:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/s6;->d:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/s6;->e:Z

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/v6;->J(Lcom/google/android/gms/measurement/internal/v6;Lcom/google/android/gms/measurement/internal/f;IJZZ)V

    return-void
.end method
