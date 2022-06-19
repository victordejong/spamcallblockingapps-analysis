.class final Lcom/google/android/gms/measurement/internal/jd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:J

.field b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/ja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ja;JJ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jd;->c:Lcom/google/android/gms/measurement/internal/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/jd;->a:J

    .line 3
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/jd;->b:J

    .line 4
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jd;->c:Lcom/google/android/gms/measurement/internal/ja;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/jc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/jc;-><init>(Lcom/google/android/gms/measurement/internal/jd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method
