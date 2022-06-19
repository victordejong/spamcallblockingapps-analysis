.class public final Lcom/google/android/gms/ads/query/ReportingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/query/ReportingInfo$Builder;
    }
.end annotation


# instance fields
.field private final zzhvd:Lcom/google/android/gms/internal/ads/rw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/rw;

    invoke-static {p1}, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->zza(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;)Lcom/google/android/gms/internal/ads/rx;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/rw;-><init>(Lcom/google/android/gms/internal/ads/rx;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zzhvd:Lcom/google/android/gms/internal/ads/rw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;Lcom/google/android/gms/ads/query/zza;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/query/ReportingInfo;-><init>(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public final reportTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zzhvd:Lcom/google/android/gms/internal/ads/rw;

    .line 1035
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rw;->b:Lcom/google/android/gms/internal/ads/xo;

    if-nez v1, :cond_0

    const-string p1, "Failed to get internal reporting info generator."

    .line 1036
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    return-void

    .line 1038
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rw;->b:Lcom/google/android/gms/internal/ads/xo;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/xo;->a(Lcom/google/android/gms/dynamic/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to call remote method."

    .line 1041
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzex(Ljava/lang/String;)V

    return-void
.end method

.method public final updateClickUrl(Landroid/net/Uri;Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zzhvd:Lcom/google/android/gms/internal/ads/rw;

    .line 1025
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rw;->b:Lcom/google/android/gms/internal/ads/xo;

    if-nez v1, :cond_0

    const-string v1, "Failed to get internal reporting info generator."

    .line 1026
    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;->onFailure(Ljava/lang/String;)V

    .line 1027
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rw;->b:Lcom/google/android/gms/internal/ads/xo;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 1028
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/rw;->a:Landroid/view/View;

    .line 1029
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    new-instance v3, Lcom/google/android/gms/internal/ads/ry;

    invoke-direct {v3, v0, p2}, Lcom/google/android/gms/internal/ads/ry;-><init>(Lcom/google/android/gms/internal/ads/rw;Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V

    .line 1030
    invoke-interface {v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/xo;->b(Ljava/util/List;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/ro;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1033
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Internal error: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public final updateImpressionUrls(Ljava/util/List;Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->zzhvd:Lcom/google/android/gms/internal/ads/rw;

    .line 1016
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rw;->b:Lcom/google/android/gms/internal/ads/xo;

    if-nez v1, :cond_0

    const-string v1, "Failed to get internal reporting info generator."

    .line 1017
    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;->onFailure(Ljava/lang/String;)V

    .line 1018
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rw;->b:Lcom/google/android/gms/internal/ads/xo;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/rw;->a:Landroid/view/View;

    .line 1019
    invoke-static {v2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/rv;

    invoke-direct {v3, v0, p2}, Lcom/google/android/gms/internal/ads/rv;-><init>(Lcom/google/android/gms/internal/ads/rw;Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V

    .line 1020
    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/xo;->a(Ljava/util/List;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/ro;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1023
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Internal error: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
