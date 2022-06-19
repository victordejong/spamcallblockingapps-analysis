.class public final Lcom/google/android/gms/internal/ads/ep;
.super Lcom/google/android/gms/internal/ads/fp;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/fp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ep;->c:Ljava/lang/Object;

    return-void
.end method

.method public static f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ep;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/ep<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/ep;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ep;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ep;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/fp;->c(Ljava/lang/Object;)Z

    return-void
.end method
