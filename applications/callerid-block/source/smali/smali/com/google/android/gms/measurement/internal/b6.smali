.class final Lcom/google/android/gms/measurement/internal/b6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/google/android/gms/measurement/internal/v6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/v6;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b6;->j:Lcom/google/android/gms/measurement/internal/v6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b6;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/b6;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/b6;->d:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/b6;->f:Z

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/b6;->g:Z

    iput-boolean p9, p0, Lcom/google/android/gms/measurement/internal/b6;->h:Z

    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/b6;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b6;->j:Lcom/google/android/gms/measurement/internal/v6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b6;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b6;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/b6;->d:J

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/b6;->f:Z

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/b6;->g:Z

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/b6;->h:Z

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/b6;->i:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/v6;->Z(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
