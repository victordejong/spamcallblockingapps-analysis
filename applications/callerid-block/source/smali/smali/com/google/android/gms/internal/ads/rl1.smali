.class public final Lcom/google/android/gms/internal/ads/rl1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzys;

.field private b:Lcom/google/android/gms/internal/ads/zzyx;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/zzady;

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

.field private h:Lcom/google/android/gms/internal/ads/zzagy;

.field private i:Lcom/google/android/gms/internal/ads/zzzd;

.field private j:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field private k:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private l:Lcom/google/android/gms/internal/ads/e0;

.field private m:I

.field private n:Lcom/google/android/gms/internal/ads/zzamv;

.field private final o:Lcom/google/android/gms/internal/ads/gl1;

.field private p:Z

.field private q:Lcom/google/android/gms/internal/ads/f71;

.field private r:Lcom/google/android/gms/internal/ads/i0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/rl1;->m:I

    new-instance v0, Lcom/google/android/gms/internal/ads/gl1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gl1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->o:Lcom/google/android/gms/internal/ads/gl1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rl1;->p:Z

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzyx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->b:Lcom/google/android/gms/internal/ads/zzyx;

    return-object p0
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/rl1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic N(Lcom/google/android/gms/internal/ads/rl1;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/rl1;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzzd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->i:Lcom/google/android/gms/internal/ads/zzzd;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/rl1;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/rl1;->m:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->j:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->k:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/e0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->l:Lcom/google/android/gms/internal/ads/e0;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzamv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->n:Lcom/google/android/gms/internal/ads/zzamv;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/gl1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->o:Lcom/google/android/gms/internal/ads/gl1;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/rl1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/rl1;->p:Z

    return p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/f71;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->q:Lcom/google/android/gms/internal/ads/f71;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->a:Lcom/google/android/gms/internal/ads/zzys;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/rl1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/rl1;->e:Z

    return p0
.end method

.method static synthetic l(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzady;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->d:Lcom/google/android/gms/internal/ads/zzady;

    return-object p0
.end method

.method static synthetic m(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzagy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->h:Lcom/google/android/gms/internal/ads/zzagy;

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/i0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rl1;->r:Lcom/google/android/gms/internal/ads/i0;

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/rl1;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final B(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/rl1;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final C(Lcom/google/android/gms/internal/ads/zzagy;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->h:Lcom/google/android/gms/internal/ads/zzagy;

    return-object p0
.end method

.method public final D(Lcom/google/android/gms/internal/ads/zzzd;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->i:Lcom/google/android/gms/internal/ads/zzzd;

    return-object p0
.end method

.method public final E(Lcom/google/android/gms/internal/ads/zzamv;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->n:Lcom/google/android/gms/internal/ads/zzamv;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzady;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzady;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->d:Lcom/google/android/gms/internal/ads/zzady;

    return-object p0
.end method

.method public final F(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->k:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zza()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rl1;->e:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->a()Lcom/google/android/gms/internal/ads/e0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->l:Lcom/google/android/gms/internal/ads/e0;

    :cond_0
    return-object p0
.end method

.method public final G(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->j:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rl1;->e:Z

    :cond_0
    return-object p0
.end method

.method public final H(Lcom/google/android/gms/internal/ads/f71;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->q:Lcom/google/android/gms/internal/ads/f71;

    return-object p0
.end method

.method public final I(Lcom/google/android/gms/internal/ads/sl1;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->o:Lcom/google/android/gms/internal/ads/gl1;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/sl1;->o:Lcom/google/android/gms/internal/ads/hl1;

    iget v1, v1, Lcom/google/android/gms/internal/ads/hl1;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/gl1;->a(I)Lcom/google/android/gms/internal/ads/gl1;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->d:Lcom/google/android/gms/internal/ads/zzys;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->a:Lcom/google/android/gms/internal/ads/zzys;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->e:Lcom/google/android/gms/internal/ads/zzyx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->b:Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->q:Lcom/google/android/gms/internal/ads/i0;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->r:Lcom/google/android/gms/internal/ads/i0;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->a:Lcom/google/android/gms/internal/ads/zzady;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->d:Lcom/google/android/gms/internal/ads/zzady;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->f:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->h:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->g:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->i:Lcom/google/android/gms/internal/ads/zzagy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->h:Lcom/google/android/gms/internal/ads/zzagy;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->j:Lcom/google/android/gms/internal/ads/zzzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->i:Lcom/google/android/gms/internal/ads/zzzd;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/rl1;->G(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/rl1;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sl1;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/rl1;->F(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/rl1;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/sl1;->p:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rl1;->p:Z

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/sl1;->c:Lcom/google/android/gms/internal/ads/f71;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->q:Lcom/google/android/gms/internal/ads/f71;

    return-object p0
.end method

.method public final J()Lcom/google/android/gms/internal/ads/sl1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->c:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/h;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->b:Lcom/google/android/gms/internal/ads/zzyx;

    const-string v1, "ad size must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/h;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->a:Lcom/google/android/gms/internal/ads/zzys;

    const-string v1, "ad request must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/h;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/sl1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/sl1;-><init>(Lcom/google/android/gms/internal/ads/rl1;Lcom/google/android/gms/internal/ads/ql1;)V

    return-object v0
.end method

.method public final K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rl1;->p:Z

    return v0
.end method

.method public final n(Lcom/google/android/gms/internal/ads/i0;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->r:Lcom/google/android/gms/internal/ads/i0;

    return-object p0
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzys;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->a:Lcom/google/android/gms/internal/ads/zzys;

    return-object p0
.end method

.method public final q()Lcom/google/android/gms/internal/ads/zzys;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->a:Lcom/google/android/gms/internal/ads/zzys;

    return-object v0
.end method

.method public final r(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->b:Lcom/google/android/gms/internal/ads/zzyx;

    return-object p0
.end method

.method public final s(Z)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rl1;->p:Z

    return-object p0
.end method

.method public final t()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->b:Lcom/google/android/gms/internal/ads/zzyx;

    return-object v0
.end method

.method public final u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final w(Lcom/google/android/gms/internal/ads/zzady;)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rl1;->d:Lcom/google/android/gms/internal/ads/zzady;

    return-object p0
.end method

.method public final x()Lcom/google/android/gms/internal/ads/gl1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rl1;->o:Lcom/google/android/gms/internal/ads/gl1;

    return-object v0
.end method

.method public final y(Z)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rl1;->e:Z

    return-object p0
.end method

.method public final z(I)Lcom/google/android/gms/internal/ads/rl1;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/rl1;->m:I

    return-object p0
.end method
