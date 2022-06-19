.class final synthetic Lcom/google/android/gms/internal/ads/bwk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bwi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bwi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwk;->a:Lcom/google/android/gms/internal/ads/bwi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/bwf;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lcom/google/android/gms/internal/ads/bwf;-><init>(ZZZ)V

    .line 6
    return-object v0
.end method
