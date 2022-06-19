.class final Lcom/google/android/gms/measurement/internal/jh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/jp;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/jo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/jp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jh;->b:Lcom/google/android/gms/measurement/internal/jo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jh;->a:Lcom/google/android/gms/measurement/internal/jp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jh;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/jo;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jh;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 1001
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 1002
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 1003
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->h()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 1004
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/il;->c:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 1005
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/il;->c:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    .line 1006
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    return-void
.end method
