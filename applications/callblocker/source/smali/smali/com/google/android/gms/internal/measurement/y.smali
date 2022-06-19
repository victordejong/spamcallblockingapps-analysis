.class final Lcom/google/android/gms/internal/measurement/y;
.super Lcom/google/android/gms/internal/measurement/d$a;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.2"


# instance fields
.field private final synthetic c:Landroid/os/Bundle;

.field private final synthetic d:Lcom/google/android/gms/internal/measurement/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/d;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y;->d:Lcom/google/android/gms/internal/measurement/d;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/y;->c:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/d$a;-><init>(Lcom/google/android/gms/internal/measurement/d;)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y;->d:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->c(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/mi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y;->c:Landroid/os/Bundle;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/y;->a:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/mi;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    .line 3
    return-void
.end method
