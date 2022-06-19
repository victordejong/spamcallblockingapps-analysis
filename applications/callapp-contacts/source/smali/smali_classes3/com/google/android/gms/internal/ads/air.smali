.class final Lcom/google/android/gms/internal/ads/air;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/ais;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ais;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ais;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/air;->a:Lcom/google/android/gms/internal/ads/ais;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/ais;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/air;->a:Lcom/google/android/gms/internal/ads/ais;

    return-object v0
.end method
