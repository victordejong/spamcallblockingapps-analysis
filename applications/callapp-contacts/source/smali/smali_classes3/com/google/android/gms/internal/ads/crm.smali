.class public final Lcom/google/android/gms/internal/ads/crm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/cqz;

.field public final b:Lcom/google/android/gms/internal/ads/crr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crr<",
            "TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cqz;Lcom/google/android/gms/internal/ads/crr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cqz;",
            "Lcom/google/android/gms/internal/ads/crr<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/crm;->a:Lcom/google/android/gms/internal/ads/cqz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/crm;->b:Lcom/google/android/gms/internal/ads/crr;

    return-void
.end method
