.class final Lcom/google/android/gms/measurement/internal/fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lcom/google/android/gms/measurement/internal/fl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fk;->e:Lcom/google/android/gms/measurement/internal/fl;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fk;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/fk;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/fk;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/fk;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fk;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fk;->e:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->l()Lcom/google/android/gms/measurement/internal/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fk;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/hk;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/hc;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/internal/hc;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fk;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/fk;->d:J

    .line 4
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/hc;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fk;->e:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->l()Lcom/google/android/gms/measurement/internal/hk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fk;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/hk;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/hc;)V

    return-void
.end method
