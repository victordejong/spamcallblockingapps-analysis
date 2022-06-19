.class final synthetic Lcom/google/android/gms/internal/ads/cct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/cct;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cct;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cct;->a:Lcom/google/android/gms/internal/ads/cah;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ccs;->a:Lcom/google/android/gms/internal/ads/cae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 2
    return-object v0
.end method
