.class public final Lcom/google/android/gms/internal/ads/ns0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/ms0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/aa;",
            ">;"
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
            "Lcom/google/android/gms/internal/ads/aa;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ns0;->a:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/ads/aa;)Lcom/google/android/gms/internal/ads/ms0;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ms0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ms0;-><init>(Lcom/google/android/gms/internal/ads/aa;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ms0;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ns0;->a:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aa;

    new-instance v1, Lcom/google/android/gms/internal/ads/ms0;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ms0;-><init>(Lcom/google/android/gms/internal/ads/aa;)V

    return-object v1
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ns0;->a()Lcom/google/android/gms/internal/ads/ms0;

    move-result-object v0

    return-object v0
.end method
