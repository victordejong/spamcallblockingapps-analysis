.class final Lcom/google/android/gms/measurement/internal/hf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/hc;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/hc;

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/gms/measurement/internal/hk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hk;Lcom/google/android/gms/measurement/internal/hc;Lcom/google/android/gms/measurement/internal/hc;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hf;->e:Lcom/google/android/gms/measurement/internal/hk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hf;->a:Lcom/google/android/gms/measurement/internal/hc;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/hf;->b:Lcom/google/android/gms/measurement/internal/hc;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/hf;->c:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/hf;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hf;->e:Lcom/google/android/gms/measurement/internal/hk;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hf;->a:Lcom/google/android/gms/measurement/internal/hc;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hf;->b:Lcom/google/android/gms/measurement/internal/hc;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/hf;->c:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/hf;->d:Z

    const/4 v6, 0x0

    .line 1001
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/hk;->a(Lcom/google/android/gms/measurement/internal/hc;Lcom/google/android/gms/measurement/internal/hc;JZLandroid/os/Bundle;)V

    return-void
.end method
