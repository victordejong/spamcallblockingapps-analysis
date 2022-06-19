.class public final Lcom/google/android/gms/internal/ads/u4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/u4;

.field public static final b:Lcom/google/android/gms/internal/ads/w2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/w2<",
            "Lcom/google/android/gms/internal/ads/u4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field private H:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Lcom/google/android/gms/internal/ads/zzaiv;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:I

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final q:Lcom/google/android/gms/internal/ads/zzn;

.field public final r:J

.field public final s:I

.field public final t:I

.field public final u:F

.field public final v:I

.field public final w:F

.field public final x:[B

.field public final y:I

.field public final z:Lcom/google/android/gms/internal/ads/gm3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/s4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/u4;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/u4;-><init>(Lcom/google/android/gms/internal/ads/s4;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/u4;->a:Lcom/google/android/gms/internal/ads/u4;

    sget-object v0, Lcom/google/android/gms/internal/ads/r4;->a:Lcom/google/android/gms/internal/ads/w2;

    sput-object v0, Lcom/google/android/gms/internal/ads/u4;->b:Lcom/google/android/gms/internal/ads/w2;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/s4;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->A(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/u4;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->J(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/u4;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->K(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wa;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/u4;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->L(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/u4;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/u4;->g:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->M(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/u4;->h:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->N(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->i:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/u4;->j:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->O(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/u4;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->P(Lcom/google/android/gms/internal/ads/s4;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/u4;->l:Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->Q(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/u4;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->R(Lcom/google/android/gms/internal/ads/s4;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->S(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/u4;->o:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->T(Lcom/google/android/gms/internal/ads/s4;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->T(Lcom/google/android/gms/internal/ads/s4;)Ljava/util/List;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/u4;->p:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->U(Lcom/google/android/gms/internal/ads/s4;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/u4;->q:Lcom/google/android/gms/internal/ads/zzn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->V(Lcom/google/android/gms/internal/ads/s4;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/u4;->r:J

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->W(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->s:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->X(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->t:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->Y(Lcom/google/android/gms/internal/ads/s4;)F

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->u:F

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->Z(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->Z(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    :goto_2
    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->v:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->a0(Lcom/google/android/gms/internal/ads/s4;)F

    move-result v2

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->a0(Lcom/google/android/gms/internal/ads/s4;)F

    move-result v2

    :goto_3
    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->w:F

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->b0(Lcom/google/android/gms/internal/ads/s4;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->x:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->c0(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->y:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->d0(Lcom/google/android/gms/internal/ads/s4;)Lcom/google/android/gms/internal/ads/gm3;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->z:Lcom/google/android/gms/internal/ads/gm3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->e0(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->A:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->f0(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->B:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->g0(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->C:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->h0(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->h0(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    :goto_4
    iput v2, p0, Lcom/google/android/gms/internal/ads/u4;->D:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->a(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v2

    if-ne v2, v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->a(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v0

    :goto_5
    iput v0, p0, Lcom/google/android/gms/internal/ads/u4;->E:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->b(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/u4;->F:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->c(Lcom/google/android/gms/internal/ads/s4;)I

    move-result v0

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    :goto_6
    iput p1, p0, Lcom/google/android/gms/internal/ads/u4;->G:I

    return-void

    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/s4;->c(Lcom/google/android/gms/internal/ads/s4;)I

    move-result p1

    goto :goto_6
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/s4;Lcom/google/android/gms/internal/ads/t4;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/u4;-><init>(Lcom/google/android/gms/internal/ads/s4;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/s4;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/s4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/s4;-><init>(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/t4;)V

    return-object v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/u4;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/s4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/s4;-><init>(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/t4;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s4;->H(I)Lcom/google/android/gms/internal/ads/s4;

    new-instance p1, Lcom/google/android/gms/internal/ads/u4;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/u4;-><init>(Lcom/google/android/gms/internal/ads/s4;)V

    return-object p1
.end method

.method public final c()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/u4;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->t:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, v0, v2

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/u4;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u4;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/u4;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u4;->p:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u4;->p:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/u4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/u4;

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->H:I

    if-eqz v2, :cond_3

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->H:I

    if-eqz v3, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->f:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->f:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->h:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->h:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->i:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->i:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->o:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->o:I

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/u4;->r:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/u4;->r:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->s:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->s:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->t:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->t:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->v:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->v:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->y:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->y:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->A:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->A:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->B:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->B:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->C:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->C:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->D:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->D:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->E:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->E:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->F:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->F:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->G:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->G:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->u:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->u:F

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->w:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->w:F

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->c:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->d:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->k:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->m:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->e:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->x:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->x:[B

    .line 10
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->l:Lcom/google/android/gms/internal/ads/zzaiv;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->l:Lcom/google/android/gms/internal/ads/zzaiv;

    .line 11
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->z:Lcom/google/android/gms/internal/ads/gm3;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->z:Lcom/google/android/gms/internal/ads/gm3;

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->q:Lcom/google/android/gms/internal/ads/zzn;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/u4;->q:Lcom/google/android/gms/internal/ads/zzn;

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/u4;->d(Lcom/google/android/gms/internal/ads/u4;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/u4;->H:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u4;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->f:I

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/u4;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->k:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->l:Lcom/google/android/gms/internal/ads/zzaiv;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    .line 8
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaiv;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->m:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    .line 10
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_6

    .line 12
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->o:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/u4;->r:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->t:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->u:F

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->v:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->w:F

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->A:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->B:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->C:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->D:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->E:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->F:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/u4;->G:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/u4;->H:I

    :cond_7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/u4;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/u4;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/u4;->m:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/u4;->k:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/u4;->j:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/u4;->e:Ljava/lang/String;

    iget v8, v0, Lcom/google/android/gms/internal/ads/u4;->s:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/u4;->t:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/u4;->u:F

    iget v11, v0, Lcom/google/android/gms/internal/ads/u4;->A:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/u4;->B:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x68

    add-int/2addr v13, v14

    add-int/2addr v13, v15

    add-int v13, v13, v16

    add-int v13, v13, v17

    add-int v13, v13, v18

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Format("

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
