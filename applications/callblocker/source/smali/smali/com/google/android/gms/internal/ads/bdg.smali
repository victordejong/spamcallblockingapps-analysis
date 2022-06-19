.class final synthetic Lcom/google/android/gms/internal/ads/bdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/t;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/aqq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdg;->a:Lcom/google/android/gms/internal/ads/aqq;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/aqq;)Lcom/google/android/gms/ads/internal/overlay/t;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bdg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bdg;-><init>(Lcom/google/android/gms/internal/ads/aqq;)V

    return-object v0
.end method


# virtual methods
.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdg;->a:Lcom/google/android/gms/internal/ads/aqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqq;->b()V

    return-void
.end method
