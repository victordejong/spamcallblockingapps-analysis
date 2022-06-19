.class final Lcom/google/android/gms/measurement/internal/h7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:J

.field final synthetic e:Lcom/google/android/gms/measurement/internal/k7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k7;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h7;->e:Lcom/google/android/gms/measurement/internal/k7;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/h7;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h7;->e:Lcom/google/android/gms/measurement/internal/k7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->e()Lcom/google/android/gms/measurement/internal/a2;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/h7;->d:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/a2;->i(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h7;->e:Lcom/google/android/gms/measurement/internal/k7;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/k7;->e:Lcom/google/android/gms/measurement/internal/c7;

    return-void
.end method
