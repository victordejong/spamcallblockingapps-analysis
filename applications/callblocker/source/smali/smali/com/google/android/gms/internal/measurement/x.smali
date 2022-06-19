.class final Lcom/google/android/gms/internal/measurement/x;
.super Lcom/google/android/gms/internal/measurement/d$a;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.2"


# instance fields
.field private final synthetic c:Ljava/lang/Long;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Landroid/os/Bundle;

.field private final synthetic g:Z

.field private final synthetic h:Z

.field private final synthetic i:Lcom/google/android/gms/internal/measurement/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x;->i:Lcom/google/android/gms/internal/measurement/d;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/x;->c:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/x;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/x;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/x;->f:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/x;->g:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/x;->h:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/d$a;-><init>(Lcom/google/android/gms/internal/measurement/d;)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 8

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/x;->a:J

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x;->i:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->c(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/mi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/x;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/x;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/x;->f:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/measurement/x;->g:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/x;->h:Z

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/mi;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 4
    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0
.end method
