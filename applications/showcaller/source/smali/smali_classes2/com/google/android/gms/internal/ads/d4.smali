.class final Lcom/google/android/gms/internal/ads/d4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/s5;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/p7;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/p7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d4;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/d4;->b:Lcom/google/android/gms/internal/ads/p7;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/d4;Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/p7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d4;->b:Lcom/google/android/gms/internal/ads/p7;

    return-object p1
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d4;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/p7;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d4;->b:Lcom/google/android/gms/internal/ads/p7;

    return-object v0
.end method
