.class public final Lcom/google/android/gms/internal/ads/vj2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzbdg;

.field private b:Lcom/google/android/gms/internal/ads/zzbdl;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/zzbis;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/gms/internal/ads/zzblv;

.field private i:Lcom/google/android/gms/internal/ads/zzbdr;

.field private j:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field private k:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private l:Lcom/google/android/gms/internal/ads/at;

.field private m:I

.field private n:Lcom/google/android/gms/internal/ads/zzbrx;

.field private final o:Lcom/google/android/gms/internal/ads/lj2;

.field private p:Z

.field private q:Lcom/google/android/gms/internal/ads/a42;

.field private r:Lcom/google/android/gms/internal/ads/et;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/vj2;->m:I

    new-instance v0, Lcom/google/android/gms/internal/ads/lj2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/lj2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->o:Lcom/google/android/gms/internal/ads/lj2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vj2;->p:Z

    return-void
.end method

.method static synthetic A(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/at;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->l:Lcom/google/android/gms/internal/ads/at;

    return-object p0
.end method

.method static synthetic B(Lcom/google/android/gms/internal/ads/vj2;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/vj2;->m:I

    return p0
.end method

.method static synthetic C(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbrx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->n:Lcom/google/android/gms/internal/ads/zzbrx;

    return-object p0
.end method

.method static synthetic D(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/lj2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->o:Lcom/google/android/gms/internal/ads/lj2;

    return-object p0
.end method

.method static synthetic E(Lcom/google/android/gms/internal/ads/vj2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/vj2;->p:Z

    return p0
.end method

.method static synthetic F(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/a42;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->q:Lcom/google/android/gms/internal/ads/a42;

    return-object p0
.end method

.method static synthetic n(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/et;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->r:Lcom/google/android/gms/internal/ads/et;

    return-object p0
.end method

.method static synthetic p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->a:Lcom/google/android/gms/internal/ads/zzbdg;

    return-object p0
.end method

.method static synthetic q(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->b:Lcom/google/android/gms/internal/ads/zzbdl;

    return-object p0
.end method

.method static synthetic r(Lcom/google/android/gms/internal/ads/vj2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbis;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->d:Lcom/google/android/gms/internal/ads/zzbis;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/gms/internal/ads/vj2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/vj2;->e:Z

    return p0
.end method

.method static synthetic u(Lcom/google/android/gms/internal/ads/vj2;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic v(Lcom/google/android/gms/internal/ads/vj2;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic w(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzblv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->h:Lcom/google/android/gms/internal/ads/zzblv;

    return-object p0
.end method

.method static synthetic x(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->i:Lcom/google/android/gms/internal/ads/zzbdr;

    return-object p0
.end method

.method static synthetic y(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->j:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    return-object p0
.end method

.method static synthetic z(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vj2;->k:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-object p0
.end method


# virtual methods
.method public final G(Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->a:Lcom/google/android/gms/internal/ads/zzbdg;

    return-object p0
.end method

.method public final H()Lcom/google/android/gms/internal/ads/zzbdg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->a:Lcom/google/android/gms/internal/ads/zzbdg;

    return-object v0
.end method

.method public final I(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->b:Lcom/google/android/gms/internal/ads/zzbdl;

    return-object p0
.end method

.method public final J(Z)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vj2;->p:Z

    return-object p0
.end method

.method public final K()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->b:Lcom/google/android/gms/internal/ads/zzbdl;

    return-object v0
.end method

.method public final L(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final N(Lcom/google/android/gms/internal/ads/zzbis;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->d:Lcom/google/android/gms/internal/ads/zzbis;

    return-object p0
.end method

.method public final O()Lcom/google/android/gms/internal/ads/lj2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->o:Lcom/google/android/gms/internal/ads/lj2;

    return-object v0
.end method

.method public final a(Z)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vj2;->e:Z

    return-object p0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/vj2;->m:I

    return-object p0
.end method

.method public final c(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/vj2;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final d(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/vj2;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzblv;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->h:Lcom/google/android/gms/internal/ads/zzblv;

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzbdr;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->i:Lcom/google/android/gms/internal/ads/zzbdr;

    return-object p0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzbrx;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->n:Lcom/google/android/gms/internal/ads/zzbrx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbis;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbis;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->d:Lcom/google/android/gms/internal/ads/zzbis;

    return-object p0
.end method

.method public final h(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->k:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zza()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vj2;->e:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->k0()Lcom/google/android/gms/internal/ads/at;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->l:Lcom/google/android/gms/internal/ads/at;

    :cond_0
    return-object p0
.end method

.method public final i(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->j:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->k0()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vj2;->e:Z

    :cond_0
    return-object p0
.end method

.method public final j(Lcom/google/android/gms/internal/ads/a42;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->q:Lcom/google/android/gms/internal/ads/a42;

    return-object p0
.end method

.method public final k(Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->o:Lcom/google/android/gms/internal/ads/lj2;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/xj2;->o:Lcom/google/android/gms/internal/ads/nj2;

    iget v1, v1, Lcom/google/android/gms/internal/ads/nj2;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lj2;->b(I)Lcom/google/android/gms/internal/ads/lj2;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->a:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->e:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->b:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->q:Lcom/google/android/gms/internal/ads/et;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->r:Lcom/google/android/gms/internal/ads/et;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->a:Lcom/google/android/gms/internal/ads/zzbis;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->d:Lcom/google/android/gms/internal/ads/zzbis;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->f:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->h:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->g:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->i:Lcom/google/android/gms/internal/ads/zzblv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->h:Lcom/google/android/gms/internal/ads/zzblv;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->j:Lcom/google/android/gms/internal/ads/zzbdr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->i:Lcom/google/android/gms/internal/ads/zzbdr;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vj2;->i(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/vj2;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xj2;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vj2;->h(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/vj2;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/xj2;->p:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vj2;->p:Z

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xj2;->c:Lcom/google/android/gms/internal/ads/a42;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->q:Lcom/google/android/gms/internal/ads/a42;

    return-object p0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/xj2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->c:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->b:Lcom/google/android/gms/internal/ads/zzbdl;

    const-string v1, "ad size must not be null"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj2;->a:Lcom/google/android/gms/internal/ads/zzbdg;

    const-string v1, "ad request must not be null"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/xj2;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/xj2;-><init>(Lcom/google/android/gms/internal/ads/vj2;Lcom/google/android/gms/internal/ads/wj2;)V

    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vj2;->p:Z

    return v0
.end method

.method public final o(Lcom/google/android/gms/internal/ads/et;)Lcom/google/android/gms/internal/ads/vj2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj2;->r:Lcom/google/android/gms/internal/ads/et;

    return-object p0
.end method
