.class public final Lcom/google/android/gms/internal/ads/si;
.super Lcom/google/android/gms/internal/ads/rs;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/rr;)V
    .locals 2

    .prologue
    .line 1
    .line 2
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rr;->a:Ljava/lang/String;

    move-object v1, v0

    .line 3
    :goto_0
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/rr;->b:I

    .line 4
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/si;-><init>(Ljava/lang/String;I)V

    .line 5
    return-void

    .line 2
    :cond_0
    const-string/jumbo v0, ""

    move-object v1, v0

    goto :goto_0

    .line 3
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rs;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/si;->a:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/google/android/gms/internal/ads/si;->b:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/si;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/si;->b:I

    return v0
.end method
