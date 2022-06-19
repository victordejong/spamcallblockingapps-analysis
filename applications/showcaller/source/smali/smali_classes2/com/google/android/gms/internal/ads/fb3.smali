.class public final Lcom/google/android/gms/internal/ads/fb3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/m13;


# instance fields
.field private final a:Ljava/security/interfaces/ECPrivateKey;

.field private final b:Lcom/google/android/gms/internal/ads/hb3;

.field private final c:Ljava/lang/String;

.field private final d:[B

.field private final e:Lcom/google/android/gms/internal/ads/eb3;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;ILcom/google/android/gms/internal/ads/eb3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fb3;->a:Ljava/security/interfaces/ECPrivateKey;

    new-instance p4, Lcom/google/android/gms/internal/ads/hb3;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/hb3;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/fb3;->b:Lcom/google/android/gms/internal/ads/hb3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fb3;->d:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fb3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/fb3;->e:Lcom/google/android/gms/internal/ads/eb3;

    return-void
.end method
