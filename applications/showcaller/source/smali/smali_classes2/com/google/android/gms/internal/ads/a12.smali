.class final synthetic Lcom/google/android/gms/internal/ads/a12;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ip0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/wn0;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a12;->a:Lcom/google/android/gms/internal/ads/wn0;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/wn0;)Lcom/google/android/gms/internal/ads/ip0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/a12;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/a12;-><init>(Lcom/google/android/gms/internal/ads/wn0;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a12;->a:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->W()V

    return-void
.end method
