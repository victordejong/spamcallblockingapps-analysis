.class public Lcom/google/android/gms/internal/ads/alx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/anq;

.field final b:Landroid/view/View;

.field final c:Lcom/google/android/gms/internal/ads/coy;

.field final d:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/anq;Lcom/google/android/gms/internal/ads/coy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/alx;->b:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/alx;->d:Lcom/google/android/gms/internal/ads/adt;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/alx;->a:Lcom/google/android/gms/internal/ads/anq;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/alx;->c:Lcom/google/android/gms/internal/ads/coy;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/ata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/atb;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/ata;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/ata;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ata;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
