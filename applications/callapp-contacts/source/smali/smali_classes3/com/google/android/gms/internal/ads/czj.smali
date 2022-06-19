.class final Lcom/google/android/gms/internal/ads/czj;
.super Lcom/google/android/gms/internal/ads/czv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/czv<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/internal/ads/czh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/czh;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/czj;->b:Lcom/google/android/gms/internal/ads/czh;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/czv;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czj;->b:Lcom/google/android/gms/internal/ads/czh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/czh;->a:Lcom/google/android/gms/internal/ads/cxu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cxu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
