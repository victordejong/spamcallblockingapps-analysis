.class public final Lcom/google/android/gms/internal/ads/amy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chd;

.field private final b:Lcom/google/android/gms/internal/ads/cgr;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amy;->a:Lcom/google/android/gms/internal/ads/chd;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/amy;->b:Lcom/google/android/gms/internal/ads/cgr;

    .line 5
    if-nez p3, :cond_0

    const-string/jumbo p3, "com.google.ads.mediation.admob.AdMobAdapter"

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/amy;->c:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/chd;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amy;->a:Lcom/google/android/gms/internal/ads/chd;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/cgr;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amy;->b:Lcom/google/android/gms/internal/ads/cgr;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amy;->c:Ljava/lang/String;

    return-object v0
.end method
