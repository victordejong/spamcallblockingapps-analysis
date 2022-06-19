.class final Lcom/google/android/gms/internal/ads/zzg;
.super Lcom/google/android/gms/internal/ads/zzj;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# instance fields
.field private zzj:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzj;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzg;->zzj:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzg;->zzj:[B

    return-object v0
.end method
