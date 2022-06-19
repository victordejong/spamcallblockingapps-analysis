.class final synthetic Lcom/google/android/gms/internal/ads/ti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/to;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/to;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ti;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ti;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ti;->a:Lcom/google/android/gms/internal/ads/to;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/afb;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/afb;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
