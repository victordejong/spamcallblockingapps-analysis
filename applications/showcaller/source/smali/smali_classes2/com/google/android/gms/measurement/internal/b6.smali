.class final Lcom/google/android/gms/measurement/internal/b6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:Landroid/os/Bundle;

.field final synthetic h:Z

.field final synthetic i:Z

.field final synthetic j:Z

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Lcom/google/android/gms/measurement/internal/v6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/v6;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b6;->l:Lcom/google/android/gms/measurement/internal/v6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b6;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/b6;->f:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/b6;->g:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/b6;->h:Z

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/b6;->i:Z

    iput-boolean p9, p0, Lcom/google/android/gms/measurement/internal/b6;->j:Z

    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/b6;->k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b6;->l:Lcom/google/android/gms/measurement/internal/v6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b6;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/b6;->f:J

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/b6;->g:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/b6;->h:Z

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/b6;->i:Z

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/b6;->j:Z

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/b6;->k:Ljava/lang/String;

    .line 1
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/v6;->Z(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
