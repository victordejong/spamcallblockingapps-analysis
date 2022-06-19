.class final Lcom/google/android/gms/internal/ads/ue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:J

.field private b:J

.field private final synthetic c:Lcom/google/android/gms/internal/ads/uf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/uf;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ue;->c:Lcom/google/android/gms/internal/ads/uf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ue;->a:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ue;->b:J

    .line 4
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ue;->b:J

    return-wide v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->c:Lcom/google/android/gms/internal/ads/uf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uf;->a(Lcom/google/android/gms/internal/ads/uf;)Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ue;->b:J

    .line 7
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ue;->c:Lcom/google/android/gms/internal/ads/uf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uf;->a(Lcom/google/android/gms/internal/ads/uf;)Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ue;->a:J

    .line 9
    return-void
.end method

.method public final d()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string/jumbo v1, "topen"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ue;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12
    const-string/jumbo v1, "tclose"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ue;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13
    return-object v0
.end method
