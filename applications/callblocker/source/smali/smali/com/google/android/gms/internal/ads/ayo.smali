.class final synthetic Lcom/google/android/gms/internal/ads/ayo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/azh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ayo;->a:Lcom/google/android/gms/internal/ads/azh;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/azh;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ayo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ayo;-><init>(Lcom/google/android/gms/internal/ads/azh;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayo;->a:Lcom/google/android/gms/internal/ads/azh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/azh;->f()V

    return-void
.end method
