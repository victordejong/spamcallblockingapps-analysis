.class final synthetic Lcom/google/android/gms/internal/ads/tc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/to;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/to;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/tc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/tc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/tc;->a:Lcom/google/android/gms/internal/ads/to;

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

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/afb;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
