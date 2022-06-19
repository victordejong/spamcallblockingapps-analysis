.class public final Lcom/google/android/gms/internal/ads/bbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/ads/bh;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bh;)V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/bbt;->a:I

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbt;->b:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbt;->c:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbt;->d:Lcom/google/android/gms/internal/ads/bh;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/bbt;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbt;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbt;->c:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbt;->d:Lcom/google/android/gms/internal/ads/bh;

    .line 6
    return-void
.end method
