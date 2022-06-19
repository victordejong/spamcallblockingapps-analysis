.class final Lcom/google/android/gms/measurement/internal/gn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J

.field private final synthetic d:Landroid/os/Bundle;

.field private final synthetic e:Z

.field private final synthetic f:Z

.field private final synthetic g:Z

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gn;->i:Lcom/google/android/gms/measurement/internal/gk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gn;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/gn;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/gn;->c:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/gn;->d:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/gn;->e:Z

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/gn;->f:Z

    iput-boolean p9, p0, Lcom/google/android/gms/measurement/internal/gn;->g:Z

    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/gn;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gn;->i:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/gn;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gn;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/gn;->c:J

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/gn;->d:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/gn;->e:Z

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/gn;->f:Z

    iget-boolean v9, p0, Lcom/google/android/gms/measurement/internal/gn;->g:Z

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/gn;->h:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 3
    return-void
.end method
