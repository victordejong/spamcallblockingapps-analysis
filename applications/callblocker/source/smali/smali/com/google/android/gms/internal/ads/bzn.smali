.class public final Lcom/google/android/gms/internal/ads/bzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cae",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bzn;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bzn;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bzn;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bzn;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bzn;->e:Ljava/lang/Long;

    .line 7
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 8
    check-cast p1, Landroid/os/Bundle;

    .line 9
    const-string/jumbo v0, "gmp_app_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzn;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "fbs_aiid"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzn;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "fbs_aeid"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzn;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "apm_id_origin"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzn;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "sai_timeout"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bzn;->e:Ljava/lang/Long;

    .line 14
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 16
    :cond_0
    return-void
.end method
