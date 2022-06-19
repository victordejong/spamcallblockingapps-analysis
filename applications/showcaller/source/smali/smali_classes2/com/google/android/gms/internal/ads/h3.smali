.class public final Lcom/google/android/gms/internal/ads/h3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/z6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/w6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/z6;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/z6;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/w6;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/h3;->a:Lcom/google/android/gms/internal/ads/z6;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/fn3;)Lcom/google/android/gms/internal/ads/h3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h3;->a:Lcom/google/android/gms/internal/ads/z6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z6;->l(Lcom/google/android/gms/internal/ads/fn3;)Lcom/google/android/gms/internal/ads/z6;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/w4;)Lcom/google/android/gms/internal/ads/h3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h3;->a:Lcom/google/android/gms/internal/ads/z6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z6;->m(Lcom/google/android/gms/internal/ads/w4;)Lcom/google/android/gms/internal/ads/z6;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/d7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h3;->a:Lcom/google/android/gms/internal/ads/z6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z6;->n()Lcom/google/android/gms/internal/ads/d7;

    move-result-object v0

    return-object v0
.end method
