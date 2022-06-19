.class public abstract Lcom/google/android/gms/internal/ads/vw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/vw;

.field public static final b:Lcom/google/android/gms/internal/ads/vw;

.field public static final c:Lcom/google/android/gms/internal/ads/vw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/sw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vw;->a:Lcom/google/android/gms/internal/ads/vw;

    new-instance v0, Lcom/google/android/gms/internal/ads/tw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/tw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vw;->b:Lcom/google/android/gms/internal/ads/vw;

    new-instance v0, Lcom/google/android/gms/internal/ads/uw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/uw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vw;->c:Lcom/google/android/gms/internal/ads/vw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
