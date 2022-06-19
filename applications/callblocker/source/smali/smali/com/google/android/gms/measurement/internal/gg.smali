.class public final Lcom/google/android/gms/measurement/internal/gg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field final a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/Boolean;

.field f:J

.field g:Lcom/google/android/gms/internal/measurement/b;

.field h:Z

.field i:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/gg;->h:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/gg;->a:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/gg;->i:Ljava/lang/Long;

    .line 9
    if-eqz p2, :cond_0

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gg;->g:Lcom/google/android/gms/internal/measurement/b;

    .line 11
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/gg;->b:Ljava/lang/String;

    .line 12
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/gg;->c:Ljava/lang/String;

    .line 13
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/gg;->d:Ljava/lang/String;

    .line 14
    iget-boolean v0, p2, Lcom/google/android/gms/internal/measurement/b;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/gg;->h:Z

    .line 15
    iget-wide v0, p2, Lcom/google/android/gms/internal/measurement/b;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/gg;->f:J

    .line 16
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    const-string/jumbo v1, "dataCollectionDefaultEnabled"

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/gg;->e:Ljava/lang/Boolean;

    .line 19
    :cond_0
    return-void
.end method
