.class public Lcom/google/android/gms/internal/ads/zzcjk;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjk;->a:I

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcjk;->a:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcjk;->a:I

    .line 16
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzcjk;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjk;->a:I

    .line 7
    :goto_0
    return v0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzayd;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Lcom/google/android/gms/internal/ads/zzayd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayd;->a()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjk;->a:I

    return v0
.end method
