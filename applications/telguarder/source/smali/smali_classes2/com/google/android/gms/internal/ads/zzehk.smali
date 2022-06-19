.class final Lcom/google/android/gms/internal/ads/zzehk;
.super Ljava/lang/ThreadLocal;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljavax/crypto/Cipher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static zzbbc()Ljavax/crypto/Cipher;
    .locals 2

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzikg:Lcom/google/android/gms/internal/ads/zzeie;

    const-string v1, "AES/CTR/NOPADDING"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeie;->zzhw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzehk;->zzbbc()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method
