.class public final Lcom/google/android/gms/internal/ads/amg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dtr;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sx;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amg;->a:Lcom/google/android/gms/internal/ads/sx;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dtt;)V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amg;->a:Lcom/google/android/gms/internal/ads/sx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sx;->a(Lcom/google/android/gms/internal/ads/dtt;)V

    .line 5
    return-void
.end method
