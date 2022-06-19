.class public Lcom/google/android/gms/internal/ads/ako;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ami;

.field private final b:Landroid/view/View;

.field private final c:Lcom/google/android/gms/internal/ads/cgq;

.field private final d:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/ami;Lcom/google/android/gms/internal/ads/cgq;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ako;->b:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ako;->d:Lcom/google/android/gms/internal/ads/act;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ako;->a:Lcom/google/android/gms/internal/ads/ami;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ako;->c:Lcom/google/android/gms/internal/ads/cgq;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/act;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ako;->d:Lcom/google/android/gms/internal/ads/act;

    return-object v0
.end method

.method public a(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/arb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/arg;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/arb;"
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/arb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/arb;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ako;->b:Landroid/view/View;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/ami;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ako;->a:Lcom/google/android/gms/internal/ads/ami;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/cgq;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ako;->c:Lcom/google/android/gms/internal/ads/cgq;

    return-object v0
.end method
