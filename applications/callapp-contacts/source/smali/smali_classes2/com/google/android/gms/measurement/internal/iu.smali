.class final Lcom/google/android/gms/measurement/internal/iu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:J

.field final b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/iv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/iv;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/iu;->c:Lcom/google/android/gms/measurement/internal/iv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/iu;->a:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/iu;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iu;->c:Lcom/google/android/gms/measurement/internal/iv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/it;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/it;-><init>(Lcom/google/android/gms/measurement/internal/iu;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/lang/Runnable;)V

    return-void
.end method
