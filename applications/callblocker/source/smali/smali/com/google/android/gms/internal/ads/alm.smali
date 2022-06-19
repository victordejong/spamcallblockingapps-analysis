.class final Lcom/google/android/gms/internal/ads/alm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/aln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/aln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aln;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/alm;->a:Lcom/google/android/gms/internal/ads/aln;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/aln;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/alm;->a:Lcom/google/android/gms/internal/ads/aln;

    return-object v0
.end method
