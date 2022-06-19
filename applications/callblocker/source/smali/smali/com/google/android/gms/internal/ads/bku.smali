.class final synthetic Lcom/google/android/gms/internal/ads/bku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bkx;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bkh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bkh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bku;->a:Lcom/google/android/gms/internal/ads/bkh;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/bkh;)Lcom/google/android/gms/internal/ads/bkx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bku;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bku;-><init>(Lcom/google/android/gms/internal/ads/bkh;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bku;->a:Lcom/google/android/gms/internal/ads/bkh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bkh;->a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
