.class public final Lcom/google/android/gms/internal/ads/dyh;
.super Lcom/google/android/gms/internal/ads/dzv;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/a/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/a/a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dzv;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyh;->a:Lcom/google/android/gms/ads/a/a;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyh;->a:Lcom/google/android/gms/ads/a/a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    return-void
.end method
