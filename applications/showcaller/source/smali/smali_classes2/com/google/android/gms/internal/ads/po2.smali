.class public final Lcom/google/android/gms/internal/ads/po2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jo2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/to2;

.field private final b:Lcom/google/android/gms/internal/ads/ro2;

.field private final c:Lcom/google/android/gms/internal/ads/fo2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fo2;Lcom/google/android/gms/internal/ads/to2;Lcom/google/android/gms/internal/ads/ro2;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/po2;->c:Lcom/google/android/gms/internal/ads/fo2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/po2;->a:Lcom/google/android/gms/internal/ads/to2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/po2;->b:Lcom/google/android/gms/internal/ads/ro2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/io2;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po2;->a:Lcom/google/android/gms/internal/ads/to2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/io2;->j()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/po2;->b:Lcom/google/android/gms/internal/ads/ro2;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ro2;->a(Ljava/util/Map;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/to2;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/io2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po2;->c:Lcom/google/android/gms/internal/ads/fo2;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/po2;->a(Lcom/google/android/gms/internal/ads/io2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fo2;->a(Ljava/lang/String;)V

    return-void
.end method
