.class public final Lcom/google/android/gms/internal/ads/bcv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/db;

.field private final b:Lcom/google/android/gms/internal/ads/bcy;

.field private final c:Lcom/google/android/gms/internal/ads/dhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dhn",
            "<",
            "Lcom/google/android/gms/internal/ads/bcs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/azg;Lcom/google/android/gms/internal/ads/ayx;Lcom/google/android/gms/internal/ads/bcy;Lcom/google/android/gms/internal/ads/dhn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/azg;",
            "Lcom/google/android/gms/internal/ads/ayx;",
            "Lcom/google/android/gms/internal/ads/bcy;",
            "Lcom/google/android/gms/internal/ads/dhn",
            "<",
            "Lcom/google/android/gms/internal/ads/bcs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ayx;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/azg;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/db;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bcv;->a:Lcom/google/android/gms/internal/ads/db;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bcv;->b:Lcom/google/android/gms/internal/ads/bcy;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bcv;->c:Lcom/google/android/gms/internal/ads/dhn;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcv;->a:Lcom/google/android/gms/internal/ads/db;

    if-nez v0, :cond_0

    .line 10
    :goto_0
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcv;->b:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v1, "/nativeAdCustomClick"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    const-string/jumbo v0, "asset"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bcv;->a:Lcom/google/android/gms/internal/ads/db;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcv;->c:Lcom/google/android/gms/internal/ads/dhn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dhn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cr;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/db;->a(Lcom/google/android/gms/internal/ads/cr;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v1

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Failed to call onCustomClick for asset "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
