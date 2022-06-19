.class final Lcom/google/android/gms/internal/measurement/t;
.super Lcom/google/android/gms/internal/measurement/d$a;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.2"


# instance fields
.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/internal/measurement/mg;

.field private final synthetic e:Lcom/google/android/gms/internal/measurement/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t;->e:Lcom/google/android/gms/internal/measurement/d;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/t;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/t;->d:Lcom/google/android/gms/internal/measurement/mg;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/d$a;-><init>(Lcom/google/android/gms/internal/measurement/d;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->d:Lcom/google/android/gms/internal/measurement/mg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/mg;->a(Landroid/os/Bundle;)V

    .line 5
    return-void
.end method

.method final b()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->e:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->c(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/mi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/t;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/t;->d:Lcom/google/android/gms/internal/measurement/mg;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/mi;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mj;)V

    .line 3
    return-void
.end method
