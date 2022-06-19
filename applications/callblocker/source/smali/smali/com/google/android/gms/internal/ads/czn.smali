.class public final Lcom/google/android/gms/internal/ads/czn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/csq;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/security/interfaces/ECPrivateKey;

.field private final c:Lcom/google/android/gms/internal/ads/czq;

.field private final d:Ljava/lang/String;

.field private final e:[B

.field private final f:Lcom/google/android/gms/internal/ads/czw;

.field private final g:Lcom/google/android/gms/internal/ads/czk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/czn;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/czw;Lcom/google/android/gms/internal/ads/czk;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/czn;->b:Ljava/security/interfaces/ECPrivateKey;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/czq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/czq;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czn;->c:Lcom/google/android/gms/internal/ads/czq;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/czn;->e:[B

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/czn;->d:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/czn;->f:Lcom/google/android/gms/internal/ads/czw;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/czn;->g:Lcom/google/android/gms/internal/ads/czk;

    .line 8
    return-void
.end method
