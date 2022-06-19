.class public final Lcom/google/android/gms/internal/ads/c91;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/ja1<",
        "Lcom/google/android/gms/internal/ads/r41;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/p81;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/p81;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c91;->a:Lcom/google/android/gms/internal/ads/p81;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/p81;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/p81;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/r41;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/p81;->m()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c91;->a:Lcom/google/android/gms/internal/ads/p81;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p81;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
