.class public final Lcom/google/android/gms/internal/ads/cd1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/bd1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/wi1;",
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
            "Lcom/google/android/gms/internal/ads/wi1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cd1;->a:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/wi1;)Lcom/google/android/gms/internal/ads/bd1;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bd1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bd1;-><init>(Lcom/google/android/gms/internal/ads/wi1;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cd1;->a:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/wi1;

    new-instance v1, Lcom/google/android/gms/internal/ads/bd1;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/bd1;-><init>(Lcom/google/android/gms/internal/ads/wi1;)V

    return-object v1
.end method
