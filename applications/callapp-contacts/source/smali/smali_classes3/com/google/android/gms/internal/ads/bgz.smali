.class public final Lcom/google/android/gms/internal/ads/bgz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hi<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/ey;

.field final b:Lcom/google/android/gms/internal/ads/bgy;

.field private final c:Lcom/google/android/gms/internal/ads/dsb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsb<",
            "Lcom/google/android/gms/internal/ads/bgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bcy;Lcom/google/android/gms/internal/ads/bcr;Lcom/google/android/gms/internal/ads/bgy;Lcom/google/android/gms/internal/ads/dsb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bcy;",
            "Lcom/google/android/gms/internal/ads/bcr;",
            "Lcom/google/android/gms/internal/ads/bgy;",
            "Lcom/google/android/gms/internal/ads/dsb<",
            "Lcom/google/android/gms/internal/ads/bgs;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/bcr;->u()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/bcy;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgz;->a:Lcom/google/android/gms/internal/ads/ey;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bgz;->b:Lcom/google/android/gms/internal/ads/bgy;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bgz;->c:Lcom/google/android/gms/internal/ads/dsb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    .line 11
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 12
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bgz;->a:Lcom/google/android/gms/internal/ads/ey;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgz;->c:Lcom/google/android/gms/internal/ads/dsb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eo;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/ey;->a(Lcom/google/android/gms/internal/ads/eo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
