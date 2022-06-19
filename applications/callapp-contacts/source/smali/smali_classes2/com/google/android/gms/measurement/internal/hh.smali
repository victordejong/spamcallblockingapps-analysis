.class final Lcom/google/android/gms/measurement/internal/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/measurement/internal/hk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hk;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hh;->b:Lcom/google/android/gms/measurement/internal/hk;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/hh;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hh;->b:Lcom/google/android/gms/measurement/internal/hk;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->p()Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/hh;->a:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ca;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hh;->b:Lcom/google/android/gms/measurement/internal/hk;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/hk;->b:Lcom/google/android/gms/measurement/internal/hc;

    return-void
.end method
