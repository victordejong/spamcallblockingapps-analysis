.class final Lcom/google/android/gms/internal/ads/eah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dxx;
.implements Lcom/google/android/gms/internal/ads/eas;
.implements Lcom/google/android/gms/internal/ads/ebd;
.implements Lcom/google/android/gms/internal/ads/eck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dxx;",
        "Lcom/google/android/gms/internal/ads/eas;",
        "Lcom/google/android/gms/internal/ads/ebd;",
        "Lcom/google/android/gms/internal/ads/eck<",
        "Lcom/google/android/gms/internal/ads/eak;",
        ">;"
    }
.end annotation


# instance fields
.field private final A:Landroid/os/Handler;

.field private final B:Lcom/google/android/gms/internal/ads/ebz;

.field private final C:Ljava/lang/Runnable;

.field private D:Z

.field private E:I

.field private F:J

.field private G:J

.field private H:I

.field final a:Lcom/google/android/gms/internal/ads/eao;

.field final b:Lcom/google/android/gms/internal/ads/eat;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:Lcom/google/android/gms/internal/ads/ecm;

.field final f:Lcom/google/android/gms/internal/ads/ean;

.field final g:Lcom/google/android/gms/internal/ads/ect;

.field final h:Ljava/lang/Runnable;

.field final i:Landroid/os/Handler;

.field final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/ebb;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/google/android/gms/internal/ads/ear;

.field l:Lcom/google/android/gms/internal/ads/dya;

.field m:Z

.field n:Z

.field o:Z

.field p:Lcom/google/android/gms/internal/ads/ebi;

.field q:J

.field r:[Z

.field s:[Z

.field t:Z

.field u:J

.field v:Z

.field w:Z

.field private final x:Landroid/net/Uri;

.field private final y:Lcom/google/android/gms/internal/ads/ecb;

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/ecb;[Lcom/google/android/gms/internal/ads/dxv;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/eao;Lcom/google/android/gms/internal/ads/eat;Lcom/google/android/gms/internal/ads/ebz;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->x:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eah;->y:Lcom/google/android/gms/internal/ads/ecb;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/eah;->z:I

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/eah;->A:Landroid/os/Handler;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/eah;->a:Lcom/google/android/gms/internal/ads/eao;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/eah;->b:Lcom/google/android/gms/internal/ads/eat;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/eah;->B:Lcom/google/android/gms/internal/ads/ebz;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->c:Ljava/lang/String;

    int-to-long p1, p10

    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eah;->d:J

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/ecm;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ecm;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->e:Lcom/google/android/gms/internal/ads/ecm;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/ean;

    invoke-direct {p1, p3, p0}, Lcom/google/android/gms/internal/ads/ean;-><init>([Lcom/google/android/gms/internal/ads/dxv;Lcom/google/android/gms/internal/ads/dxx;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->f:Lcom/google/android/gms/internal/ads/ean;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/ect;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ect;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->g:Lcom/google/android/gms/internal/ads/ect;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/eag;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/eag;-><init>(Lcom/google/android/gms/internal/ads/eah;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->C:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/eaj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/eaj;-><init>(Lcom/google/android/gms/internal/ads/eah;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->h:Ljava/lang/Runnable;

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->i:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eah;->G:J

    .line 18
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    const-wide/16 p1, -0x1

    .line 19
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eah;->F:J

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/eak;)V
    .locals 5

    .line 179
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eah;->F:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2048
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/eak;->a:J

    .line 180
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eah;->F:J

    :cond_0
    return-void
.end method

.method private final h()V
    .locals 9

    .line 182
    new-instance v6, Lcom/google/android/gms/internal/ads/eak;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eah;->x:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eah;->y:Lcom/google/android/gms/internal/ads/ecb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eah;->f:Lcom/google/android/gms/internal/ads/ean;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eah;->g:Lcom/google/android/gms/internal/ads/ect;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/eak;-><init>(Lcom/google/android/gms/internal/ads/eah;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/ecb;Lcom/google/android/gms/internal/ads/ean;Lcom/google/android/gms/internal/ads/ect;)V

    .line 183
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->n:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eah;->g()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 185
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/eah;->q:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/eah;->G:J

    cmp-long v0, v7, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->v:Z

    .line 187
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/eah;->G:J

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->l:Lcom/google/android/gms/internal/ads/dya;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/eah;->G:J

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/dya;->a(J)J

    move-result-wide v3

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/eah;->G:J

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/google/android/gms/internal/ads/eak;->a(JJ)V

    .line 190
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/eah;->G:J

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eah;->i()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eah;->H:I

    .line 192
    iget v0, p0, Lcom/google/android/gms/internal/ads/eah;->z:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 194
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->n:Z

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/eah;->F:J

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->l:Lcom/google/android/gms/internal/ads/dya;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dya;->b()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x3

    .line 197
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eah;->e:Lcom/google/android/gms/internal/ads/ecm;

    invoke-virtual {v1, v6, p0, v0}, Lcom/google/android/gms/internal/ads/ecm;->a(Lcom/google/android/gms/internal/ads/ecn;Lcom/google/android/gms/internal/ads/eck;I)J

    return-void
.end method

.method private final i()I
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 202
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ebb;

    .line 3018
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/eaz;->c()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private final j()J
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 208
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    .line 209
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/ebb;

    .line 3024
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/eaz;->f()J

    move-result-wide v4

    .line 210
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method


# virtual methods
.method public final K_()J
    .locals 2

    .line 85
    iget v0, p0, Lcom/google/android/gms/internal/ads/eah;->E:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eah;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/ecn;Ljava/io/IOException;)I
    .locals 8

    .line 214
    check-cast p1, Lcom/google/android/gms/internal/ads/eak;

    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/eah;->a(Lcom/google/android/gms/internal/ads/eak;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->A:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eah;->a:Lcom/google/android/gms/internal/ads/eao;

    if-eqz v1, :cond_0

    .line 218
    new-instance v1, Lcom/google/android/gms/internal/ads/eal;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/eal;-><init>(Lcom/google/android/gms/internal/ads/eah;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    :cond_0
    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zznt;

    if-eqz p2, :cond_1

    const/4 p1, 0x3

    return p1

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eah;->i()I

    move-result p2

    .line 224
    iget v0, p0, Lcom/google/android/gms/internal/ads/eah;->H:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 226
    :goto_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/eah;->F:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->l:Lcom/google/android/gms/internal/ads/dya;

    if-eqz v0, :cond_3

    .line 227
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dya;->b()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_7

    :cond_3
    const-wide/16 v3, 0x0

    .line 228
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/eah;->u:J

    .line 229
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->n:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->o:Z

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_6

    .line 232
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/ebb;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/eah;->n:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/eah;->r:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/ebb;->a(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 234
    :cond_6
    invoke-virtual {p1, v3, v4, v3, v4}, Lcom/google/android/gms/internal/ads/eak;->a(JJ)V

    .line 235
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eah;->i()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/eah;->H:I

    if-eqz p2, :cond_8

    return v1

    :cond_8
    return v2
.end method

.method public final a([Lcom/google/android/gms/internal/ads/ebu;[Z[Lcom/google/android/gms/internal/ads/ebc;[ZJ)J
    .locals 5

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->n:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 37
    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_1

    .line 38
    :cond_0
    aget-object v2, p3, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/eam;

    .line 1010
    iget v2, v2, Lcom/google/android/gms/internal/ads/eam;->a:I

    .line 39
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eah;->r:[Z

    aget-boolean v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 40
    iget v4, p0, Lcom/google/android/gms/internal/ads/eah;->E:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/ads/eah;->E:I

    .line 41
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eah;->r:[Z

    aput-boolean v0, v3, v2

    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ebb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ebb;->a()V

    const/4 v2, 0x0

    .line 43
    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 46
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_6

    .line 47
    aget-object v2, p3, p2

    if-nez v2, :cond_5

    aget-object v2, p1, p2

    if-eqz v2, :cond_5

    .line 48
    aget-object v1, p1, p2

    .line 49
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ebu;->b()I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 50
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ebu;->c()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 51
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eah;->p:Lcom/google/android/gms/internal/ads/ebi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ebu;->a()Lcom/google/android/gms/internal/ads/ebg;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ebi;->a(Lcom/google/android/gms/internal/ads/ebg;)I

    move-result v1

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eah;->r:[Z

    aget-boolean v2, v2, v1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 53
    iget v2, p0, Lcom/google/android/gms/internal/ads/eah;->E:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/eah;->E:I

    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eah;->r:[Z

    aput-boolean v3, v2, v1

    .line 55
    new-instance v2, Lcom/google/android/gms/internal/ads/eam;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/eam;-><init>(Lcom/google/android/gms/internal/ads/eah;I)V

    aput-object v2, p3, p2

    .line 56
    aput-boolean v3, p4, p2

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 59
    :cond_6
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eah;->D:Z

    if-nez p1, :cond_8

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p1, :cond_8

    .line 62
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eah;->r:[Z

    aget-boolean v2, v2, p2

    if-nez v2, :cond_7

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ebb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ebb;->a()V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 65
    :cond_8
    iget p1, p0, Lcom/google/android/gms/internal/ads/eah;->E:I

    if-nez p1, :cond_9

    .line 66
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->o:Z

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->e:Lcom/google/android/gms/internal/ads/ecm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ecm;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->e:Lcom/google/android/gms/internal/ads/ecm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ecm;->b()V

    goto :goto_7

    .line 69
    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eah;->D:Z

    if-eqz p1, :cond_a

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_a
    const-wide/16 p1, 0x0

    cmp-long v1, p5, p1

    if-eqz v1, :cond_c

    .line 70
    :goto_5
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/eah;->b(J)J

    move-result-wide p5

    .line 71
    :goto_6
    array-length p1, p3

    if-ge v0, p1, :cond_c

    .line 72
    aget-object p1, p3, v0

    if-eqz p1, :cond_b

    .line 73
    aput-boolean v3, p4, v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 75
    :cond_c
    :goto_7
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/eah;->D:Z

    return-wide p5
.end method

.method public final a(I)Lcom/google/android/gms/internal/ads/dyc;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ebb;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/google/android/gms/internal/ads/ebb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eah;->B:Lcom/google/android/gms/internal/ads/ebz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ebb;-><init>(Lcom/google/android/gms/internal/ads/ebz;)V

    .line 1125
    iput-object p0, v0, Lcom/google/android/gms/internal/ads/ebb;->h:Lcom/google/android/gms/internal/ads/ebd;

    .line 142
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->m:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eah;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;)V
    .locals 1

    .line 147
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->l:Lcom/google/android/gms/internal/ads/dya;

    .line 148
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->C:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ear;J)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->k:Lcom/google/android/gms/internal/ads/ear;

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->g:Lcom/google/android/gms/internal/ads/ect;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ect;->a()Z

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eah;->h()V

    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/ecn;)V
    .locals 4

    .line 247
    check-cast p1, Lcom/google/android/gms/internal/ads/eak;

    .line 248
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/eah;->a(Lcom/google/android/gms/internal/ads/eak;)V

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/eah;->v:Z

    .line 250
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eah;->q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eah;->j()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    .line 253
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eah;->q:J

    .line 254
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->b:Lcom/google/android/gms/internal/ads/eat;

    new-instance v2, Lcom/google/android/gms/internal/ads/ebh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eah;->l:Lcom/google/android/gms/internal/ads/dya;

    .line 255
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dya;->a()Z

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/ebh;-><init>(JZ)V

    const/4 v0, 0x0

    .line 256
    invoke-interface {p1, v2, v0}, Lcom/google/android/gms/internal/ads/eat;->a(Lcom/google/android/gms/internal/ads/dwe;Ljava/lang/Object;)V

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->k:Lcom/google/android/gms/internal/ads/ear;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/ear;->a(Lcom/google/android/gms/internal/ads/ebf;)V

    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/ecn;Z)V
    .locals 2

    .line 238
    check-cast p1, Lcom/google/android/gms/internal/ads/eak;

    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/eah;->a(Lcom/google/android/gms/internal/ads/eak;)V

    if-nez p2, :cond_1

    .line 240
    iget p1, p0, Lcom/google/android/gms/internal/ads/eah;->E:I

    if-lez p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ebb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eah;->r:[Z

    aget-boolean v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebb;->a(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->k:Lcom/google/android/gms/internal/ads/ear;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/ear;->a(Lcom/google/android/gms/internal/ads/ebf;)V

    :cond_1
    return-void
.end method

.method public final a(J)Z
    .locals 0

    .line 78
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eah;->v:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eah;->n:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/eah;->E:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eah;->g:Lcom/google/android/gms/internal/ads/ect;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ect;->a()Z

    move-result p1

    .line 81
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/eah;->e:Lcom/google/android/gms/internal/ads/ecm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ecm;->a()Z

    move-result p2

    if-nez p2, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eah;->h()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(J)J
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->l:Lcom/google/android/gms/internal/ads/dya;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dya;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 109
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eah;->u:J

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eah;->g()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-ge v3, v0, :cond_2

    .line 113
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eah;->r:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ebb;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ebb;->a(JZ)Z

    move-result v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    .line 117
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eah;->G:J

    .line 118
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/eah;->v:Z

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eah;->e:Lcom/google/android/gms/internal/ads/ecm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ecm;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->e:Lcom/google/android/gms/internal/ads/ecm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ecm;->b()V

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 122
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ebb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eah;->r:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ebb;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_4
    :goto_3
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/eah;->o:Z

    return-wide p1
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->e:Lcom/google/android/gms/internal/ads/ecm;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ecm;->c()V

    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/ebi;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->p:Lcom/google/android/gms/internal/ads/ebi;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->o:Z

    .line 88
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eah;->u:J

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final e()J
    .locals 8

    .line 90
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->v:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eah;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eah;->G:J

    return-wide v0

    .line 94
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eah;->t:Z

    if-eqz v0, :cond_3

    const-wide v3, 0x7fffffffffffffffL

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    .line 98
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eah;->s:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    .line 99
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    .line 100
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/ebb;

    .line 1024
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/eaz;->f()J

    move-result-wide v6

    .line 101
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eah;->j()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 105
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eah;->u:J

    return-wide v0

    :cond_5
    return-wide v3
.end method

.method public final f()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eah;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eah;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final g()Z
    .locals 5

    .line 213
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eah;->G:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
