.class public final Lcom/google/android/gms/internal/ads/i90;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/h90;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/j90;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oh2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/j90;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i90;->a:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method

.method public static c(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/h90;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/j90;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/h90;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/h90;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/h90;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/h90;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i90;->a:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/mh2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mh2;->c()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/h90;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/h90;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/i90;->a()Lcom/google/android/gms/internal/ads/h90;

    move-result-object v0

    return-object v0
.end method
