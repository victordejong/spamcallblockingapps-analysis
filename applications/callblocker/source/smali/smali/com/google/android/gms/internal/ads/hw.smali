.class final synthetic Lcom/google/android/gms/internal/ads/hw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aeh;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/hs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hw;->a:Lcom/google/android/gms/internal/ads/hs;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/hs;)Lcom/google/android/gms/internal/ads/aeh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/hw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/hw;-><init>(Lcom/google/android/gms/internal/ads/hs;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hw;->a:Lcom/google/android/gms/internal/ads/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hs;->a()V

    return-void
.end method
