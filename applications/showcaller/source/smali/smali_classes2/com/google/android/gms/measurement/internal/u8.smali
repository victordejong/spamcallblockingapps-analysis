.class final Lcom/google/android/gms/measurement/internal/u8;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final d:J

.field final e:J

.field final synthetic f:Lcom/google/android/gms/measurement/internal/v8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/v8;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u8;->f:Lcom/google/android/gms/measurement/internal/v8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/u8;->d:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/u8;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u8;->f:Lcom/google/android/gms/measurement/internal/v8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/v8;->b:Lcom/google/android/gms/measurement/internal/z8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/t8;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/t8;-><init>(Lcom/google/android/gms/measurement/internal/u8;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/p4;->p(Ljava/lang/Runnable;)V

    return-void
.end method
