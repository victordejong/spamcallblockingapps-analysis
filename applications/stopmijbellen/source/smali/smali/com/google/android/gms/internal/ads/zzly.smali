.class public final Lcom/google/android/gms/internal/ads/zzly;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final zza:Z

.field public final zzb:Lcom/google/android/gms/internal/ads/zzab;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzab;Z)V
    .locals 2

    const/16 v0, 0x24

    const-string v1, "AudioTrack write failed: "

    .line 1
    invoke-static {v0, v1, p1}, Landroid/support/v4/media/b;->d(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzly;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzly;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    return-void
.end method
