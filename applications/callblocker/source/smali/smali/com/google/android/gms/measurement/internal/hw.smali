.class final Lcom/google/android/gms/measurement/internal/hw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/jv;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/kb;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/hu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hu;ZLcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hw;->d:Lcom/google/android/gms/measurement/internal/hu;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/hw;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/hw;->b:Lcom/google/android/gms/measurement/internal/jv;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/hw;->c:Lcom/google/android/gms/measurement/internal/kb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hw;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->d(Lcom/google/android/gms/measurement/internal/hu;)Lcom/google/android/gms/measurement/internal/dq;

    move-result-object v1

    .line 3
    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hw;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Discarding data. Failed to set user property"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 8
    :goto_0
    return-void

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hw;->d:Lcom/google/android/gms/measurement/internal/hu;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/hw;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hw;->c:Lcom/google/android/gms/measurement/internal/kb;

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/dq;Lcom/google/android/gms/common/internal/safeparcel/a;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hw;->d:Lcom/google/android/gms/measurement/internal/hu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/hu;->e(Lcom/google/android/gms/measurement/internal/hu;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hw;->b:Lcom/google/android/gms/measurement/internal/jv;

    goto :goto_1
.end method
