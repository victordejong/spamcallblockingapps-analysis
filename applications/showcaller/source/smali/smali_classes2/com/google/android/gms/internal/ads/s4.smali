.class public final Lcom/google/android/gms/internal/ads/s4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/internal/ads/zzaiv;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private m:Lcom/google/android/gms/internal/ads/zzn;

.field private n:J

.field private o:I

.field private p:I

.field private q:F

.field private r:I

.field private s:F

.field private t:[B

.field private u:I

.field private v:Lcom/google/android/gms/internal/ads/gm3;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->k:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/s4;->n:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->o:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->p:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/s4;->q:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/s4;->s:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->u:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->w:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->x:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->y:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->B:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/s4;->C:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/t4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->a:Ljava/lang/String;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->b:Ljava/lang/String;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->c:Ljava/lang/String;

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->f:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->d:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->h:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->e:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->i:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->f:I

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->g:Ljava/lang/String;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->l:Lcom/google/android/gms/internal/ads/zzaiv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->h:Lcom/google/android/gms/internal/ads/zzaiv;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->i:Ljava/lang/String;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->j:Ljava/lang/String;

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->o:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->k:I

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->p:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->l:Ljava/util/List;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->q:Lcom/google/android/gms/internal/ads/zzn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->m:Lcom/google/android/gms/internal/ads/zzn;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/u4;->r:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s4;->n:J

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->s:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->o:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->t:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->p:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->u:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->q:F

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->v:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->r:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->w:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->s:F

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->x:[B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->t:[B

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->y:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->u:I

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/u4;->z:Lcom/google/android/gms/internal/ads/gm3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s4;->v:Lcom/google/android/gms/internal/ads/gm3;

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->A:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->w:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->B:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->x:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->C:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->y:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->D:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->z:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->E:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->A:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/u4;->F:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/s4;->B:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/u4;->G:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->C:I

    return-void
.end method

.method static synthetic A(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic J(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->d:I

    return p0
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->e:I

    return p0
.end method

.method static synthetic N(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->f:I

    return p0
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/s4;)Lcom/google/android/gms/internal/ads/zzaiv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->h:Lcom/google/android/gms/internal/ads/zzaiv;

    return-object p0
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic R(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->k:I

    return p0
.end method

.method static synthetic T(Lcom/google/android/gms/internal/ads/s4;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic U(Lcom/google/android/gms/internal/ads/s4;)Lcom/google/android/gms/internal/ads/zzn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->m:Lcom/google/android/gms/internal/ads/zzn;

    return-object p0
.end method

.method static synthetic V(Lcom/google/android/gms/internal/ads/s4;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/s4;->n:J

    return-wide v0
.end method

.method static synthetic W(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->o:I

    return p0
.end method

.method static synthetic X(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->p:I

    return p0
.end method

.method static synthetic Y(Lcom/google/android/gms/internal/ads/s4;)F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->q:F

    return p0
.end method

.method static synthetic Z(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->r:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->A:I

    return p0
.end method

.method static synthetic a0(Lcom/google/android/gms/internal/ads/s4;)F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->s:F

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->B:I

    return p0
.end method

.method static synthetic b0(Lcom/google/android/gms/internal/ads/s4;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->t:[B

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->C:I

    return p0
.end method

.method static synthetic c0(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->u:I

    return p0
.end method

.method static synthetic d0(Lcom/google/android/gms/internal/ads/s4;)Lcom/google/android/gms/internal/ads/gm3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s4;->v:Lcom/google/android/gms/internal/ads/gm3;

    return-object p0
.end method

.method static synthetic e0(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->w:I

    return p0
.end method

.method static synthetic f0(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->x:I

    return p0
.end method

.method static synthetic g0(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->y:I

    return p0
.end method

.method static synthetic h0(Lcom/google/android/gms/internal/ads/s4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/s4;->z:I

    return p0
.end method


# virtual methods
.method public final B(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->w:I

    return-object p0
.end method

.method public final C(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->x:I

    return-object p0
.end method

.method public final D(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->y:I

    return-object p0
.end method

.method public final E(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->z:I

    return-object p0
.end method

.method public final F(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->A:I

    return-object p0
.end method

.method public final G(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->B:I

    return-object p0
.end method

.method public final H(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->C:I

    return-object p0
.end method

.method public final I()Lcom/google/android/gms/internal/ads/u4;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/u4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/u4;-><init>(Lcom/google/android/gms/internal/ads/s4;Lcom/google/android/gms/internal/ads/t4;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final e(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final h(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->d:I

    return-object p0
.end method

.method public final i(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->e:I

    return-object p0
.end method

.method public final j(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->f:I

    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final l(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->h:Lcom/google/android/gms/internal/ads/zzaiv;

    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    const-string p1, "image/jpeg"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final o(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->k:I

    return-object p0
.end method

.method public final p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/s4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/gms/internal/ads/s4;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->l:Ljava/util/List;

    return-object p0
.end method

.method public final q(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->m:Lcom/google/android/gms/internal/ads/zzn;

    return-object p0
.end method

.method public final r(J)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/s4;->n:J

    return-object p0
.end method

.method public final s(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->o:I

    return-object p0
.end method

.method public final t(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->p:I

    return-object p0
.end method

.method public final u(F)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->q:F

    return-object p0
.end method

.method public final v(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->r:I

    return-object p0
.end method

.method public final w(F)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->s:F

    return-object p0
.end method

.method public final x([B)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->t:[B

    return-object p0
.end method

.method public final y(I)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/s4;->u:I

    return-object p0
.end method

.method public final z(Lcom/google/android/gms/internal/ads/gm3;)Lcom/google/android/gms/internal/ads/s4;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s4;->v:Lcom/google/android/gms/internal/ads/gm3;

    return-object p0
.end method
