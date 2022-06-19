.class public Lcom/google/android/gms/internal/ads/zzoa;
.super Ljava/io/IOException;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/internal/ads/drq;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoa;->b:Lcom/google/android/gms/internal/ads/drq;

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzoa;->a:I

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/drq;I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoa;->b:Lcom/google/android/gms/internal/ads/drq;

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoa;->a:I

    .line 4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoa;->b:Lcom/google/android/gms/internal/ads/drq;

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoa;->a:I

    .line 12
    return-void
.end method
