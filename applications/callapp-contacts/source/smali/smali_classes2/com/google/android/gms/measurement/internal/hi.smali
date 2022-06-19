.class final Lcom/google/android/gms/measurement/internal/hi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/hc;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/hk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hk;Lcom/google/android/gms/measurement/internal/hc;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hi;->c:Lcom/google/android/gms/measurement/internal/hk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hi;->a:Lcom/google/android/gms/measurement/internal/hc;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/hi;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hi;->c:Lcom/google/android/gms/measurement/internal/hk;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hi;->a:Lcom/google/android/gms/measurement/internal/hc;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/hi;->b:J

    const/4 v4, 0x0

    .line 1001
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/hk;->a(Lcom/google/android/gms/measurement/internal/hc;ZJ)V

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hi;->c:Lcom/google/android/gms/measurement/internal/hk;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/hk;->b:Lcom/google/android/gms/measurement/internal/hc;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->m()Lcom/google/android/gms/measurement/internal/ik;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ik;->a(Lcom/google/android/gms/measurement/internal/hc;)V

    return-void
.end method
