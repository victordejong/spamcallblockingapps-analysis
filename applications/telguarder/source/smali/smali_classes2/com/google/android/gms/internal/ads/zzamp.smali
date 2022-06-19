.class final Lcom/google/android/gms/internal/ads/zzamp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaip;


# instance fields
.field private final synthetic zzdlc:Lcom/google/android/gms/internal/ads/zzamk;

.field private final zzdlf:Lcom/google/android/gms/internal/ads/zzalm;

.field private final zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbaa<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzalm;",
            "Lcom/google/android/gms/internal/ads/zzbaa<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlc:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlf:Lcom/google/android/gms/internal/ads/zzalm;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaly;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaly;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaly;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalm;->release()V

    return-void

    :catchall_0
    move-exception p1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalm;->release()V

    .line 26
    throw p1

    .line 23
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalm;->release()V

    return-void
.end method

.method public final zzc(Lorg/json/JSONObject;)V
    .locals 2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlc:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzamk;->zza(Lcom/google/android/gms/internal/ads/zzamk;)Lcom/google/android/gms/internal/ads/zzamd;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzamd;->zzd(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalm;->release()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalm;->release()V

    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalm;->release()V

    .line 16
    throw p1

    .line 9
    :catch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzdlf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalm;->release()V

    return-void
.end method
