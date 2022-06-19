.class public final Lcom/google/android/gms/internal/ads/ed;
.super Lcom/google/android/gms/internal/ads/cz;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/h$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/h$a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cz;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ed;->a:Lcom/google/android/gms/ads/b/h$a;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cn;)V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ed;->a:Lcom/google/android/gms/ads/b/h$a;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/cs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cs;-><init>(Lcom/google/android/gms/internal/ads/cn;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/h$a;->a(Lcom/google/android/gms/ads/b/h;)V

    .line 7
    return-void
.end method
