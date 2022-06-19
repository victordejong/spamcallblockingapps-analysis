.class final Lcom/google/android/gms/measurement/internal/fx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:J

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/fj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fx;->e:Lcom/google/android/gms/measurement/internal/fj;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fx;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/fx;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/fx;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/fx;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fx;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fx;->e:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->o()Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->s()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fx;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ho;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/hp;)V

    .line 13
    :goto_0
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/hp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fx;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fx;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/fx;->d:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/hp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fx;->e:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->o()Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->s()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fx;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ho;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/hp;)V

    goto :goto_0
.end method
