.class public final Lcom/google/android/gms/internal/ads/o12;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Lcom/google/android/gms/internal/ads/w82;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/v12;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/v12;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/o12;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/e22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/e22;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/o12;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/h22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/h22;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/b22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/b22;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/n22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/n22;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/r22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/r22;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/k22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/k22;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/v22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/v22;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/w82;->F()Lcom/google/android/gms/internal/ads/w82;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/o12;->c:Lcom/google/android/gms/internal/ads/w82;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/o12;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/z32;->a()V

    new-instance v0, Lcom/google/android/gms/internal/ads/v12;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/v12;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/m12;->c(Lcom/google/android/gms/internal/ads/u02;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/b22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/b22;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/m12;->c(Lcom/google/android/gms/internal/ads/u02;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/e22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/e22;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/m12;->c(Lcom/google/android/gms/internal/ads/u02;Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/h22;->j(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/k22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/k22;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/m12;->c(Lcom/google/android/gms/internal/ads/u02;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/n22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/n22;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/m12;->c(Lcom/google/android/gms/internal/ads/u02;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/r22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/r22;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/m12;->c(Lcom/google/android/gms/internal/ads/u02;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/v22;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/v22;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/m12;->c(Lcom/google/android/gms/internal/ads/u02;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/r12;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/r12;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/m12;->e(Lcom/google/android/gms/internal/ads/e12;)V

    return-void
.end method
