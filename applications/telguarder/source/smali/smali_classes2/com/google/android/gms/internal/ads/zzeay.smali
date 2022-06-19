.class final Lcom/google/android/gms/internal/ads/zzeay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lcom/google/android/gms/internal/ads/zzemo;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzemo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzibm:Lcom/google/android/gms/internal/ads/zzeba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeba<",
            "TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeba<",
            "TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzibm:Lcom/google/android/gms/internal/ads/zzeba;

    return-void
.end method


# virtual methods
.method final zzq(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzejr;",
            ")TKeyProtoT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzibm:Lcom/google/android/gms/internal/ads/zzeba;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeba;->zzr(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzibm:Lcom/google/android/gms/internal/ads/zzeba;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeba;->zzd(Lcom/google/android/gms/internal/ads/zzemo;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzibm:Lcom/google/android/gms/internal/ads/zzeba;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeba;->zze(Lcom/google/android/gms/internal/ads/zzemo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzemo;

    return-object p1
.end method
