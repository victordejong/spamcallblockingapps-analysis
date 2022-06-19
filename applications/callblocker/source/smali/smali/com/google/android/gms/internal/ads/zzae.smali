.class public Lcom/google/android/gms/internal/ads/zzae;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/drt;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzae;->a:Lcom/google/android/gms/internal/ads/drt;

    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/drt;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzae;->a:Lcom/google/android/gms/internal/ads/drt;

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzae;->a:Lcom/google/android/gms/internal/ads/drt;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzae;->a:Lcom/google/android/gms/internal/ads/drt;

    .line 12
    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzae;->b:J

    .line 14
    return-void
.end method
