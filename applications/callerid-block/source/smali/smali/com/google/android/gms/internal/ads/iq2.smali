.class final Lcom/google/android/gms/internal/ads/iq2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/zzit;",
        ">;"
    }
.end annotation


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/hq2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzit;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzit;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzit;->c:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzit;->c:I

    sub-int/2addr p2, p1

    return p2
.end method
