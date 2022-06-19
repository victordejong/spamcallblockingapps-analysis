.class public final Lcom/google/android/gms/internal/ads/cpq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/zzvq;

.field b:Lcom/google/android/gms/internal/ads/zzvt;

.field c:Lcom/google/android/gms/internal/ads/elk;

.field d:Ljava/lang/String;

.field e:Lcom/google/android/gms/internal/ads/zzaaz;

.field f:Z

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/google/android/gms/internal/ads/zzaei;

.field j:Lcom/google/android/gms/internal/ads/zzwc;

.field k:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field l:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field m:Lcom/google/android/gms/internal/ads/ele;

.field n:I

.field o:Lcom/google/android/gms/internal/ads/zzajy;

.field p:Lcom/google/android/gms/internal/ads/cpd;

.field q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/cpq;->n:I

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/cpd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cpd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cpq;->p:Lcom/google/android/gms/internal/ads/cpd;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cpq;->q:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cpo;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpq;->d:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpq;->b:Lcom/google/android/gms/internal/ads/zzvt;

    const-string v1, "ad size must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    const-string v1, "ad request must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/google/android/gms/internal/ads/cpo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/cpo;-><init>(Lcom/google/android/gms/internal/ads/cpq;Lcom/google/android/gms/internal/ads/cpn;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/cpq;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cpq;->k:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->getManualImpressionsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cpq;->f:Z

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/cpq;
    .locals 1

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cpq;->l:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cpq;->f:Z

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzjz()Lcom/google/android/gms/internal/ads/ele;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cpq;->m:Lcom/google/android/gms/internal/ads/ele;

    :cond_0
    return-object p0
.end method
