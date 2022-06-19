.class public final Lcom/google/android/gms/internal/ads/r23;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Lcom/google/android/gms/internal/ads/ia3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/internal/ads/ia3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/internal/ads/ia3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/x23;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/x23;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/r23;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/h33;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/h33;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/r23;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/k33;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/k33;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/e33;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/e33;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/q33;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/q33;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/u33;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/u33;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/n33;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/n33;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/x33;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/x33;-><init>()V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/ia3;->D()Lcom/google/android/gms/internal/ads/ia3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/r23;->c:Lcom/google/android/gms/internal/ads/ia3;

    sput-object v0, Lcom/google/android/gms/internal/ads/r23;->d:Lcom/google/android/gms/internal/ads/ia3;

    sput-object v0, Lcom/google/android/gms/internal/ads/r23;->e:Lcom/google/android/gms/internal/ads/ia3;

    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/r23;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 12
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/u23;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/u23;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p23;->e(Lcom/google/android/gms/internal/ads/h23;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/d53;->a()V

    new-instance v0, Lcom/google/android/gms/internal/ads/x23;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/x23;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p23;->c(Lcom/google/android/gms/internal/ads/w13;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/h33;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/h33;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p23;->c(Lcom/google/android/gms/internal/ads/w13;Z)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/b43;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/e33;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/e33;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p23;->c(Lcom/google/android/gms/internal/ads/w13;Z)V

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/k33;->k(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/n33;

    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/n33;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p23;->c(Lcom/google/android/gms/internal/ads/w13;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/q33;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/q33;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p23;->c(Lcom/google/android/gms/internal/ads/w13;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/u33;

    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/u33;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p23;->c(Lcom/google/android/gms/internal/ads/w13;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/x33;

    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/x33;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p23;->c(Lcom/google/android/gms/internal/ads/w13;Z)V

    return-void
.end method
