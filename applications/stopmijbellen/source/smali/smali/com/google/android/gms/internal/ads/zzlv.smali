.class public final Lcom/google/android/gms/internal/ads/zzlv;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final zza:Z

.field public final zzb:Lcom/google/android/gms/internal/ads/zzab;


# direct methods
.method public constructor <init>(IIIILcom/google/android/gms/internal/ads/zzab;ZLjava/lang/Exception;)V
    .locals 2

    const/16 p6, 0x50

    const-string v0, "AudioTrack init failed "

    const-string v1, " Config("

    .line 1
    invoke-static {p6, v0, p1, v1, p2}, Landroid/support/v4/media/b;->i(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    const-string p3, ""

    invoke-static {p1, p2, p3}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zza:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    return-void
.end method
