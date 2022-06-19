.class final synthetic Lcom/google/android/gms/internal/ads/apy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/atg;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/atg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/apy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/apy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/apy;->a:Lcom/google/android/gms/internal/ads/atg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/apu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/apu;->a()V

    return-void
.end method
