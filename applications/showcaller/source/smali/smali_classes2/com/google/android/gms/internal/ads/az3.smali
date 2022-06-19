.class public Lcom/google/android/gms/internal/ads/az3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/az3;

.field public static final b:Lcom/google/android/gms/internal/ads/az3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/ads/w2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/w2<",
            "Lcom/google/android/gms/internal/ads/az3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Z

.field public final o:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final v:I

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:Lcom/google/android/gms/internal/ads/zzfot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfot<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/gy3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gy3;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/az3;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/az3;-><init>(Lcom/google/android/gms/internal/ads/gy3;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/az3;->a:Lcom/google/android/gms/internal/ads/az3;

    sput-object v1, Lcom/google/android/gms/internal/ads/az3;->b:Lcom/google/android/gms/internal/ads/az3;

    sget-object v0, Lcom/google/android/gms/internal/ads/fx3;->a:Lcom/google/android/gms/internal/ads/w2;

    sput-object v0, Lcom/google/android/gms/internal/ads/az3;->c:Lcom/google/android/gms/internal/ads/w2;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/internal/ads/gy3;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/az3;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/az3;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/az3;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/az3;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/az3;->h:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/az3;->i:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/az3;->j:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/az3;->k:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gy3;->a(Lcom/google/android/gms/internal/ads/gy3;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/az3;->l:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gy3;->b(Lcom/google/android/gms/internal/ads/gy3;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/az3;->m:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gy3;->c(Lcom/google/android/gms/internal/ads/gy3;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/az3;->n:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gy3;->d(Lcom/google/android/gms/internal/ads/gy3;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/az3;->o:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gy3;->e(Lcom/google/android/gms/internal/ads/gy3;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/az3;->p:Lcom/google/android/gms/internal/ads/zzfoj;

    iput v1, p0, Lcom/google/android/gms/internal/ads/az3;->q:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/az3;->r:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/az3;->s:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gy3;->f(Lcom/google/android/gms/internal/ads/gy3;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/az3;->t:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gy3;->g(Lcom/google/android/gms/internal/ads/gy3;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/az3;->u:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gy3;->h(Lcom/google/android/gms/internal/ads/gy3;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/az3;->v:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/az3;->w:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/az3;->x:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/az3;->y:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gy3;->i(Lcom/google/android/gms/internal/ads/gy3;)Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/az3;->z:Lcom/google/android/gms/internal/ads/zzfot;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/az3;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/az3;->n:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/az3;->n:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/az3;->l:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/az3;->l:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/az3;->m:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/az3;->m:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/az3;->o:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/az3;->o:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/az3;->p:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/az3;->p:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/az3;->t:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/az3;->t:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/az3;->u:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/az3;->u:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/az3;->v:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/az3;->v:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/az3;->z:Lcom/google/android/gms/internal/ads/zzfot;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/az3;->z:Lcom/google/android/gms/internal/ads/zzfot;

    .line 6
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfot;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/az3;->n:Z

    const v1, -0x3e773ea1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/az3;->l:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/az3;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/az3;->o:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/az3;->p:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    const v1, 0x7fffffff

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/az3;->t:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/az3;->u:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/az3;->v:I

    add-int/2addr v0, v1

    const v1, 0xe1781

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/az3;->z:Lcom/google/android/gms/internal/ads/zzfot;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfot;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
