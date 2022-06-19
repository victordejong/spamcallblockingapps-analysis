.class final Lcom/google/android/gms/internal/ads/dpt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dnj;
.implements Lcom/google/android/gms/internal/ads/dqe;
.implements Lcom/google/android/gms/internal/ads/dqp;
.implements Lcom/google/android/gms/internal/ads/drx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dnj;",
        "Lcom/google/android/gms/internal/ads/dqe;",
        "Lcom/google/android/gms/internal/ads/dqp;",
        "Lcom/google/android/gms/internal/ads/drx",
        "<",
        "Lcom/google/android/gms/internal/ads/dpx;",
        ">;"
    }
.end annotation


# instance fields
.field private A:[Z

.field private B:Z

.field private C:J

.field private D:J

.field private E:J

.field private F:I

.field private G:Z

.field private H:Z

.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/gms/internal/ads/drp;

.field private final c:I

.field private final d:Lcom/google/android/gms/internal/ads/cnz;

.field private final e:Lcom/google/android/gms/internal/ads/dqb;

.field private final f:Lcom/google/android/gms/internal/ads/dqf;

.field private final g:Lcom/google/android/gms/internal/ads/drn;

.field private final h:Ljava/lang/String;

.field private final i:J

.field private final j:Lcom/google/android/gms/internal/ads/dru;

.field private final k:Lcom/google/android/gms/internal/ads/dqa;

.field private final l:Lcom/google/android/gms/internal/ads/dsb;

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/lang/Runnable;

.field private final o:Lcom/google/android/gms/internal/ads/cnz;

.field private final p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/ads/dqn;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/google/android/gms/internal/ads/dqd;

.field private r:Lcom/google/android/gms/internal/ads/dnm;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Lcom/google/android/gms/internal/ads/dqv;

.field private y:J

.field private z:[Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/drp;[Lcom/google/android/gms/internal/ads/dnh;ILcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dqb;Lcom/google/android/gms/internal/ads/dqf;Lcom/google/android/gms/internal/ads/drn;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpt;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dpt;->b:Lcom/google/android/gms/internal/ads/drp;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/dpt;->c:I

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dpt;->d:Lcom/google/android/gms/internal/ads/cnz;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/dpt;->e:Lcom/google/android/gms/internal/ads/dqb;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dpt;->f:Lcom/google/android/gms/internal/ads/dqf;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/dpt;->g:Lcom/google/android/gms/internal/ads/drn;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/dpt;->h:Ljava/lang/String;

    .line 10
    int-to-long v0, p10

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->i:J

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/dru;

    const-string/jumbo v1, "Loader:ExtractorMediaPeriod"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dru;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->j:Lcom/google/android/gms/internal/ads/dru;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/dqa;

    invoke-direct {v0, p3, p0}, Lcom/google/android/gms/internal/ads/dqa;-><init>([Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dnj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->k:Lcom/google/android/gms/internal/ads/dqa;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/dsb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dsb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->l:Lcom/google/android/gms/internal/ads/dsb;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/dps;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dps;-><init>(Lcom/google/android/gms/internal/ads/dpt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->m:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/dpw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dpw;-><init>(Lcom/google/android/gms/internal/ads/dpt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->n:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/cnz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cnz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->o:Lcom/google/android/gms/internal/ads/cnz;

    .line 17
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->E:J

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->C:J

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dpt;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->h()V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dpx;)V
    .locals 4

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->C:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 180
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dpx;->a(Lcom/google/android/gms/internal/ads/dpx;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->C:J

    .line 181
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dpt;)Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->H:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/dpt;)Lcom/google/android/gms/internal/ads/dqd;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->q:Lcom/google/android/gms/internal/ads/dqd;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/dpt;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/dpt;)Lcom/google/android/gms/internal/ads/dqb;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->e:Lcom/google/android/gms/internal/ads/dqb;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/dpt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/dpt;)J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->i:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/dpt;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final h()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->H:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->s:Z

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v1

    .line 155
    :goto_1
    if-ge v3, v4, :cond_2

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->d()Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->l:Lcom/google/android/gms/internal/ads/dsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsb;->b()Z

    .line 160
    new-array v5, v4, [Lcom/google/android/gms/internal/ads/dqs;

    .line 161
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->A:[Z

    .line 162
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->z:[Z

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnm;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/dpt;->y:J

    move v3, v1

    .line 164
    :goto_2
    if-ge v3, v4, :cond_5

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->d()Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v0

    .line 166
    new-instance v6, Lcom/google/android/gms/internal/ads/dqs;

    new-array v7, v2, [Lcom/google/android/gms/internal/ads/dlf;

    aput-object v0, v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/dqs;-><init>([Lcom/google/android/gms/internal/ads/dlf;)V

    aput-object v6, v5, v3

    .line 167
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    .line 168
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsg;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    .line 169
    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dpt;->A:[Z

    aput-boolean v0, v6, v3

    .line 170
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/dpt;->B:Z

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->B:Z

    .line 171
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move v0, v1

    .line 168
    goto :goto_3

    .line 172
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/dqv;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/dqv;-><init>([Lcom/google/android/gms/internal/ads/dqs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->x:Lcom/google/android/gms/internal/ads/dqv;

    .line 173
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dpt;->t:Z

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->f:Lcom/google/android/gms/internal/ads/dqf;

    new-instance v1, Lcom/google/android/gms/internal/ads/dqt;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dpt;->y:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    .line 175
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dnm;->a()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dqt;-><init>(JZ)V

    const/4 v2, 0x0

    .line 176
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dqf;->a(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->q:Lcom/google/android/gms/internal/ads/dqd;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dqd;->a(Lcom/google/android/gms/internal/ads/dqe;)V

    goto/16 :goto_0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/dpt;)Lcom/google/android/gms/internal/ads/cnz;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->o:Lcom/google/android/gms/internal/ads/cnz;

    return-object v0
.end method

.method private final i()V
    .locals 8

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 182
    new-instance v0, Lcom/google/android/gms/internal/ads/dpx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dpt;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dpt;->b:Lcom/google/android/gms/internal/ads/drp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpt;->k:Lcom/google/android/gms/internal/ads/dqa;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dpt;->l:Lcom/google/android/gms/internal/ads/dsb;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dpx;-><init>(Lcom/google/android/gms/internal/ads/dpt;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/drp;Lcom/google/android/gms/internal/ads/dqa;Lcom/google/android/gms/internal/ads/dsb;)V

    .line 183
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dpt;->t:Z

    if-eqz v1, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->l()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 185
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dpt;->y:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dpt;->E:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dpt;->y:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->G:Z

    .line 187
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/dpt;->E:J

    .line 198
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dpt;->E:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dnm;->a(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dpt;->E:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dpx;->a(JJ)V

    .line 190
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/dpt;->E:J

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->j()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dpt;->F:I

    .line 192
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpt;->c:I

    .line 193
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 194
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dpt;->t:Z

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dpt;->C:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dnm;->b()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 195
    :cond_2
    const/4 v1, 0x3

    .line 197
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dpt;->j:Lcom/google/android/gms/internal/ads/dru;

    invoke-virtual {v2, v0, p0, v1}, Lcom/google/android/gms/internal/ads/dru;->a(Lcom/google/android/gms/internal/ads/dry;Lcom/google/android/gms/internal/ads/drx;I)J

    goto :goto_0

    .line 196
    :cond_4
    const/4 v1, 0x6

    goto :goto_1
.end method

.method private final j()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 199
    .line 200
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 201
    :goto_0
    if-ge v1, v3, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_0
    return v2
.end method

.method private final k()J
    .locals 8

    .prologue
    .line 205
    const-wide/high16 v2, -0x8000000000000000L

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    .line 209
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->e()J

    move-result-wide v6

    .line 210
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 211
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 212
    :cond_0
    return-wide v2
.end method

.method private final l()Z
    .locals 4

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->E:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(ILcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;Z)I
    .locals 8

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->v:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    const/4 v0, -0x3

    .line 132
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dqn;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dpt;->G:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/dpt;->D:J

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dqn;->a(Lcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dry;JJLjava/io/IOException;)I
    .locals 6

    .prologue
    .line 214
    check-cast p1, Lcom/google/android/gms/internal/ads/dpx;

    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dpt;->a(Lcom/google/android/gms/internal/ads/dpx;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->d:Lcom/google/android/gms/internal/ads/cnz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->e:Lcom/google/android/gms/internal/ads/dqb;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->d:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/dpy;

    invoke-direct {v1, p0, p6}, Lcom/google/android/gms/internal/ads/dpy;-><init>(Lcom/google/android/gms/internal/ads/dpt;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 220
    :cond_0
    instance-of v0, p6, Lcom/google/android/gms/internal/ads/zzmz;

    .line 221
    if-eqz v0, :cond_1

    .line 222
    const/4 v0, 0x3

    .line 237
    :goto_0
    return v0

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->j()I

    move-result v0

    .line 224
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpt;->F:I

    if-le v0, v1, :cond_4

    const/4 v0, 0x1

    move v1, v0

    .line 226
    :goto_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dpt;->C:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    .line 227
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnm;->b()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    .line 228
    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dpt;->D:J

    .line 229
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->t:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->v:Z

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 231
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v4, :cond_6

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dpt;->t:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dpt;->z:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dqn;->a(Z)V

    .line 233
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 224
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 232
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 234
    :cond_6
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dpx;->a(JJ)V

    .line 235
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->j()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dpt;->F:I

    .line 236
    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    .line 237
    goto :goto_0
.end method

.method public final a([Lcom/google/android/gms/internal/ads/dre;[Z[Lcom/google/android/gms/internal/ads/dqo;[ZJ)J
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->t:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    move v1, v2

    .line 36
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 37
    aget-object v0, p3, v1

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-boolean v0, p2, v1

    if-nez v0, :cond_1

    .line 38
    :cond_0
    aget-object v0, p3, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/dpz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dpz;->a(Lcom/google/android/gms/internal/ads/dpz;)I

    move-result v0

    .line 39
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpt;->z:[Z

    aget-boolean v4, v4, v0

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 40
    iget v4, p0, Lcom/google/android/gms/internal/ads/dpt;->w:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dpt;->w:I

    .line 41
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpt;->z:[Z

    aput-boolean v2, v4, v0

    .line 42
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->b()V

    .line 43
    const/4 v0, 0x0

    aput-object v0, p3, v1

    .line 44
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    move v1, v2

    .line 46
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_7

    .line 47
    aget-object v4, p3, v0

    if-nez v4, :cond_3

    aget-object v4, p1, v0

    if-eqz v4, :cond_3

    .line 48
    aget-object v4, p1, v0

    .line 49
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dre;->b()I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 50
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/dre;->b(I)I

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->x:Lcom/google/android/gms/internal/ads/dqv;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dre;->a()Lcom/google/android/gms/internal/ads/dqs;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/dqv;->a(Lcom/google/android/gms/internal/ads/dqs;)I

    move-result v4

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->z:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_6

    move v1, v3

    :goto_4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 53
    iget v1, p0, Lcom/google/android/gms/internal/ads/dpt;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dpt;->w:I

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->z:[Z

    aput-boolean v3, v1, v4

    .line 55
    new-instance v1, Lcom/google/android/gms/internal/ads/dpz;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gms/internal/ads/dpz;-><init>(Lcom/google/android/gms/internal/ads/dpt;I)V

    aput-object v1, p3, v0

    .line 56
    aput-boolean v3, p4, v0

    move v1, v3

    .line 58
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 49
    goto :goto_2

    :cond_5
    move v1, v2

    .line 50
    goto :goto_3

    :cond_6
    move v1, v2

    .line 52
    goto :goto_4

    .line 59
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->u:Z

    if-nez v0, :cond_9

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v2

    .line 61
    :goto_5
    if-ge v4, v5, :cond_9

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->z:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_8

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->b()V

    .line 64
    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    .line 65
    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpt;->w:I

    if-nez v0, :cond_b

    .line 66
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dpt;->v:Z

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->j:Lcom/google/android/gms/internal/ads/dru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dru;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->j:Lcom/google/android/gms/internal/ads/dru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dru;->b()V

    .line 75
    :cond_a
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/dpt;->u:Z

    .line 76
    return-wide p5

    .line 69
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->u:Z

    if-eqz v0, :cond_d

    if-eqz v1, :cond_a

    .line 70
    :goto_6
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/dpt;->c(J)J

    move-result-wide p5

    .line 71
    :goto_7
    array-length v0, p3

    if-ge v2, v0, :cond_a

    .line 72
    aget-object v0, p3, v2

    if-eqz v0, :cond_c

    .line 73
    aput-boolean v3, p4, v2

    .line 74
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 69
    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_a

    goto :goto_6
.end method

.method public final a(II)Lcom/google/android/gms/internal/ads/dno;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    .line 139
    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/google/android/gms/internal/ads/dqn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->g:Lcom/google/android/gms/internal/ads/drn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dqn;-><init>(Lcom/google/android/gms/internal/ads/drn;)V

    .line 141
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dqn;->a(Lcom/google/android/gms/internal/ads/dqp;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->s:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->o:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method final a(IJ)V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    .line 134
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dpt;->G:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->e()J

    move-result-wide v2

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->f()V

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/dqn;->a(JZ)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dlf;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->o:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dnm;)V
    .locals 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->o:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dqd;J)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpt;->q:Lcom/google/android/gms/internal/ads/dqd;

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->l:Lcom/google/android/gms/internal/ads/dsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsb;->a()Z

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->i()V

    .line 29
    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dry;JJ)V
    .locals 5

    .prologue
    .line 247
    check-cast p1, Lcom/google/android/gms/internal/ads/dpx;

    .line 248
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dpt;->a(Lcom/google/android/gms/internal/ads/dpx;)V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->G:Z

    .line 250
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->y:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->k()J

    move-result-wide v0

    .line 252
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    .line 253
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->y:J

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->f:Lcom/google/android/gms/internal/ads/dqf;

    new-instance v1, Lcom/google/android/gms/internal/ads/dqt;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dpt;->y:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    .line 255
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dnm;->a()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dqt;-><init>(JZ)V

    const/4 v2, 0x0

    .line 256
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dqf;->a(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->q:Lcom/google/android/gms/internal/ads/dqd;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dqd;->a(Lcom/google/android/gms/internal/ads/dqr;)V

    .line 258
    return-void

    .line 253
    :cond_1
    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dry;JJZ)V
    .locals 4

    .prologue
    .line 238
    check-cast p1, Lcom/google/android/gms/internal/ads/dpx;

    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dpt;->a(Lcom/google/android/gms/internal/ads/dpx;)V

    .line 240
    if-nez p6, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/dpt;->w:I

    if-lez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 242
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dpt;->z:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dqn;->a(Z)V

    .line 244
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->q:Lcom/google/android/gms/internal/ads/dqd;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dqd;->a(Lcom/google/android/gms/internal/ads/dqr;)V

    .line 246
    :cond_1
    return-void
.end method

.method final a(I)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->G:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->t:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/dpt;->w:I

    if-nez v0, :cond_2

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 84
    :cond_1
    :goto_0
    return v0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->l:Lcom/google/android/gms/internal/ads/dsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsb;->a()Z

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->j:Lcom/google/android/gms/internal/ads/dru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dru;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->i()V

    .line 83
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->k:Lcom/google/android/gms/internal/ads/dqa;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpt;->j:Lcom/google/android/gms/internal/ads/dru;

    new-instance v2, Lcom/google/android/gms/internal/ads/dpu;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/dpu;-><init>(Lcom/google/android/gms/internal/ads/dpt;Lcom/google/android/gms/internal/ads/dqa;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dru;->a(Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->o:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->H:Z

    .line 25
    return-void
.end method

.method public final b(J)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public final c(J)J
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->r:Lcom/google/android/gms/internal/ads/dnm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnm;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dpt;->D:J

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->l()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v2, v1

    .line 112
    :goto_2
    if-eqz v0, :cond_3

    if-ge v2, v3, :cond_3

    .line 113
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpt;->z:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/dqn;->a(JZ)Z

    move-result v0

    .line 115
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    :cond_1
    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 111
    goto :goto_1

    .line 116
    :cond_3
    if-nez v0, :cond_4

    .line 117
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dpt;->E:J

    .line 118
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dpt;->G:Z

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->j:Lcom/google/android/gms/internal/ads/dru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dru;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->j:Lcom/google/android/gms/internal/ads/dru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dru;->b()V

    .line 124
    :cond_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dpt;->v:Z

    .line 125
    return-wide p1

    :cond_5
    move v2, v1

    .line 121
    :goto_3
    if-ge v2, v3, :cond_4

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpt;->z:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dqn;->a(Z)V

    .line 123
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->j:Lcom/google/android/gms/internal/ads/dru;

    .line 32
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dru;->a(I)V

    .line 33
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dqv;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->x:Lcom/google/android/gms/internal/ads/dqv;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->v:Z

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->v:Z

    .line 88
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->D:J

    .line 89
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final f()J
    .locals 8

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 90
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->G:Z

    if-eqz v0, :cond_1

    move-wide v0, v4

    .line 107
    :cond_0
    :goto_0
    return-wide v0

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->E:J

    goto :goto_0

    .line 94
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpt;->B:Z

    if-eqz v0, :cond_4

    .line 95
    const-wide v2, 0x7fffffffffffffffL

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 97
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_3

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->A:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_5

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->p:Landroid/util/SparseArray;

    .line 100
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->e()J

    move-result-wide v0

    .line 101
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 102
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-wide v2, v0

    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 105
    :goto_3
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dpt;->D:J

    goto :goto_0

    .line 104
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpt;->k()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method final g()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpt;->j:Lcom/google/android/gms/internal/ads/dru;

    .line 128
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dru;->a(I)V

    .line 129
    return-void
.end method

.method public final n_()J
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/gms/internal/ads/dpt;->w:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dpt;->f()J

    move-result-wide v0

    goto :goto_0
.end method
