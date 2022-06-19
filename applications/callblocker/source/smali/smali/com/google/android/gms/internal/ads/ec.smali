.class public final Lcom/google/android/gms/internal/ads/ec;
.super Lcom/google/android/gms/internal/ads/de;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/i$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/i$a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/de;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ec;->a:Lcom/google/android/gms/ads/b/i$a;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cr;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ec;->a:Lcom/google/android/gms/ads/b/i$a;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cw;->a(Lcom/google/android/gms/internal/ads/cr;)Lcom/google/android/gms/internal/ads/cw;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/ads/b/i$a;->a(Lcom/google/android/gms/ads/b/i;Ljava/lang/String;)V

    .line 5
    return-void
.end method
