.class final Lcom/google/android/gms/measurement/internal/he;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/he;->b:Lcom/google/android/gms/measurement/internal/gk;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/he;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/he;->b:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->k:Lcom/google/android/gms/measurement/internal/ep;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/he;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/he;->b:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Minimum session duration set"

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/he;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    return-void
.end method
