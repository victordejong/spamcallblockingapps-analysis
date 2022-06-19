.class public final Lcom/google/android/gms/internal/ads/dop;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dnh;
.implements Lcom/google/android/gms/internal/ads/dnm;


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/dni;

.field private static final b:I


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/dsk;

.field private final d:Lcom/google/android/gms/internal/ads/dsk;

.field private final e:Lcom/google/android/gms/internal/ads/dsk;

.field private final f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/gms/internal/ads/dod;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:Lcom/google/android/gms/internal/ads/dsk;

.field private l:I

.field private m:I

.field private n:Lcom/google/android/gms/internal/ads/dnj;

.field private o:[Lcom/google/android/gms/internal/ads/dor;

.field private p:J

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/google/android/gms/internal/ads/dos;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dos;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dop;->a:Lcom/google/android/gms/internal/ads/dni;

    .line 224
    const-string/jumbo v0, "qt  "

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->d(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/dop;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->e:Lcom/google/android/gms/internal/ads/dsk;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    sget-object v1, Lcom/google/android/gms/internal/ads/dsf;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->c:Lcom/google/android/gms/internal/ads/dsk;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->d:Lcom/google/android/gms/internal/ads/dsk;

    .line 6
    return-void
.end method

.method private final b(J)V
    .locals 15

    .prologue
    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dod;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dod;->a:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_6

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/dod;

    .line 173
    iget v0, v6, Lcom/google/android/gms/internal/ads/dod;->aB:I

    sget v1, Lcom/google/android/gms/internal/ads/doe;->y:I

    if-ne v0, v1, :cond_5

    .line 175
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 176
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 177
    const-wide v2, 0x7fffffffffffffffL

    .line 178
    const/4 v0, 0x0

    .line 179
    new-instance v14, Lcom/google/android/gms/internal/ads/dnl;

    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/dnl;-><init>()V

    .line 180
    sget v1, Lcom/google/android/gms/internal/ads/doe;->an:I

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_9

    .line 182
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dop;->q:Z

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dof;->a(Lcom/google/android/gms/internal/ads/dog;Z)Lcom/google/android/gms/internal/ads/dpi;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/dnl;->a(Lcom/google/android/gms/internal/ads/dpi;)Z

    :cond_1
    move-object v7, v0

    .line 185
    :goto_1
    const/4 v0, 0x0

    move v8, v0

    move-wide v10, v2

    move-wide v12, v4

    :goto_2
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/dod;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 186
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/dod;->c:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dod;

    .line 187
    iget v1, v0, Lcom/google/android/gms/internal/ads/dod;->aB:I

    sget v2, Lcom/google/android/gms/internal/ads/doe;->A:I

    if-ne v1, v2, :cond_8

    .line 188
    sget v1, Lcom/google/android/gms/internal/ads/doe;->z:I

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dop;->q:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dof;->a(Lcom/google/android/gms/internal/ads/dod;Lcom/google/android/gms/internal/ads/dog;JLcom/google/android/gms/internal/ads/dmw;Z)Lcom/google/android/gms/internal/ads/dot;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_8

    .line 190
    sget v2, Lcom/google/android/gms/internal/ads/doe;->B:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dod;->b(I)Lcom/google/android/gms/internal/ads/dod;

    move-result-object v0

    sget v2, Lcom/google/android/gms/internal/ads/doe;->C:I

    .line 191
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dod;->b(I)Lcom/google/android/gms/internal/ads/dod;

    move-result-object v0

    sget v2, Lcom/google/android/gms/internal/ads/doe;->D:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dod;->b(I)Lcom/google/android/gms/internal/ads/dod;

    move-result-object v0

    .line 192
    invoke-static {v1, v0, v14}, Lcom/google/android/gms/internal/ads/dof;->a(Lcom/google/android/gms/internal/ads/dot;Lcom/google/android/gms/internal/ads/dod;Lcom/google/android/gms/internal/ads/dnl;)Lcom/google/android/gms/internal/ads/dov;

    move-result-object v2

    .line 193
    iget v0, v2, Lcom/google/android/gms/internal/ads/dov;->a:I

    if-eqz v0, :cond_8

    .line 194
    new-instance v3, Lcom/google/android/gms/internal/ads/dor;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->n:Lcom/google/android/gms/internal/ads/dnj;

    iget v4, v1, Lcom/google/android/gms/internal/ads/dot;->b:I

    .line 195
    invoke-interface {v0, v8, v4}, Lcom/google/android/gms/internal/ads/dnj;->a(II)Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/dor;-><init>(Lcom/google/android/gms/internal/ads/dot;Lcom/google/android/gms/internal/ads/dov;Lcom/google/android/gms/internal/ads/dno;)V

    .line 196
    iget v0, v2, Lcom/google/android/gms/internal/ads/dov;->d:I

    add-int/lit8 v0, v0, 0x1e

    .line 197
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dot;->f:Lcom/google/android/gms/internal/ads/dlf;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/dlf;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v0

    .line 198
    iget v4, v1, Lcom/google/android/gms/internal/ads/dot;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 199
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/dnl;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    iget v4, v14, Lcom/google/android/gms/internal/ads/dnl;->a:I

    iget v5, v14, Lcom/google/android/gms/internal/ads/dnl;->b:I

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dlf;->a(II)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v0

    .line 201
    :cond_2
    if-eqz v7, :cond_3

    .line 202
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dlf;->a(Lcom/google/android/gms/internal/ads/dpi;)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v0

    .line 203
    :cond_3
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dor;->c:Lcom/google/android/gms/internal/ads/dno;

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dlf;)V

    .line 204
    iget-wide v0, v1, Lcom/google/android/gms/internal/ads/dot;->e:J

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 205
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/dov;->b:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 207
    cmp-long v0, v2, v10

    if-gez v0, :cond_8

    move-wide v4, v12

    .line 209
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-wide v10, v2

    move-wide v12, v4

    goto/16 :goto_2

    .line 210
    :cond_4
    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/dop;->p:J

    .line 211
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dor;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dor;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->o:[Lcom/google/android/gms/internal/ads/dor;

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->n:Lcom/google/android/gms/internal/ads/dnj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnj;->a()V

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->n:Lcom/google/android/gms/internal/ads/dnj;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dnj;->a(Lcom/google/android/gms/internal/ads/dnm;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 215
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->g:I

    goto/16 :goto_0

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dod;

    .line 218
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dod;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 220
    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dop;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 221
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dop;->d()V

    .line 222
    :cond_7
    return-void

    :cond_8
    move-wide v2, v10

    move-wide v4, v12

    goto :goto_3

    :cond_9
    move-object v7, v0

    goto/16 :goto_1
.end method

.method private final d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->g:I

    .line 169
    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    .line 170
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dng;Lcom/google/android/gms/internal/ads/dnn;)I
    .locals 12

    .prologue
    .line 27
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dop;->g:I

    packed-switch v0, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 29
    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    if-nez v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->e:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dng;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    const/4 v0, 0x0

    .line 60
    :goto_0
    if-nez v0, :cond_0

    .line 61
    const/4 v0, -0x1

    .line 153
    :goto_1
    return v0

    .line 32
    :cond_1
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->e:Lcom/google/android/gms/internal/ads/dsk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->e:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dop;->i:J

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->e:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->h:I

    .line 36
    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dop;->i:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->e:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->e:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dop;->i:J

    .line 41
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dop;->h:I

    .line 42
    sget v1, Lcom/google/android/gms/internal/ads/doe;->y:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/gms/internal/ads/doe;->A:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/gms/internal/ads/doe;->B:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/gms/internal/ads/doe;->C:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/gms/internal/ads/doe;->D:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/gms/internal/ads/doe;->K:I

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 43
    :goto_2
    if-eqz v0, :cond_7

    .line 44
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dop;->i:J

    add-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    new-instance v3, Lcom/google/android/gms/internal/ads/dod;

    iget v4, p0, Lcom/google/android/gms/internal/ads/dop;->h:I

    invoke-direct {v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/dod;-><init>(IJ)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 46
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dop;->i:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dop;->b(J)V

    .line 59
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 48
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dop;->d()V

    goto :goto_3

    .line 49
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/dop;->h:I

    .line 50
    sget v1, Lcom/google/android/gms/internal/ads/doe;->M:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->z:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->N:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->O:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->Z:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->aa:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->ab:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->L:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->ac:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->ad:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->ae:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->af:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->ag:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->J:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->d:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/android/gms/internal/ads/doe;->an:I

    if-ne v0, v1, :cond_9

    :cond_8
    const/4 v0, 0x1

    .line 51
    :goto_4
    if-eqz v0, :cond_c

    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 53
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dop;->i:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dop;->i:J

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->k:Lcom/google/android/gms/internal/ads/dsk;

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->e:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dop;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->g:I

    goto :goto_3

    .line 50
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 52
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 53
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 57
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->k:Lcom/google/android/gms/internal/ads/dsk;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->g:I

    goto/16 :goto_3

    .line 63
    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dop;->i:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    .line 64
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v0

    add-long v4, v0, v2

    .line 65
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->k:Lcom/google/android/gms/internal/ads/dsk;

    if-eqz v0, :cond_11

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    long-to-int v2, v2

    invoke-interface {p1, v0, v6, v2}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 68
    iget v0, p0, Lcom/google/android/gms/internal/ads/dop;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/doe;->d:I

    if-ne v0, v2, :cond_10

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->k:Lcom/google/android/gms/internal/ads/dsk;

    .line 70
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v2

    .line 72
    sget v3, Lcom/google/android/gms/internal/ads/dop;->b:I

    if-ne v2, v3, :cond_d

    .line 73
    const/4 v0, 0x1

    .line 79
    :goto_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dop;->q:Z

    move v0, v1

    .line 88
    :goto_8
    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/ads/dop;->b(J)V

    .line 89
    if-eqz v0, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/dop;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    .line 90
    :goto_9
    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 74
    :cond_d
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 75
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->b()I

    move-result v2

    if-lez v2, :cond_f

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/dop;->b:I

    if-ne v2, v3, :cond_e

    .line 77
    const/4 v0, 0x1

    goto :goto_7

    .line 78
    :cond_f
    const/4 v0, 0x0

    goto :goto_7

    .line 80
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dod;

    new-instance v2, Lcom/google/android/gms/internal/ads/dog;

    iget v3, p0, Lcom/google/android/gms/internal/ads/dop;->h:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dop;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-direct {v2, v3, v6}, Lcom/google/android/gms/internal/ads/dog;-><init>(ILcom/google/android/gms/internal/ads/dsk;)V

    .line 82
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dod;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 83
    goto :goto_8

    .line 84
    :cond_11
    const-wide/32 v6, 0x40000

    cmp-long v0, v2, v6

    if-gez v0, :cond_12

    .line 85
    long-to-int v0, v2

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dng;->b(I)V

    move v0, v1

    goto :goto_8

    .line 86
    :cond_12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/dnn;->a:J

    .line 87
    const/4 v0, 0x1

    goto :goto_8

    .line 89
    :cond_13
    const/4 v0, 0x0

    goto :goto_9

    .line 94
    :pswitch_2
    const/4 v1, -0x1

    .line 95
    const-wide v2, 0x7fffffffffffffffL

    .line 96
    const/4 v0, 0x0

    :goto_a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dop;->o:[Lcom/google/android/gms/internal/ads/dor;

    array-length v4, v4

    if-ge v0, v4, :cond_15

    .line 97
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dop;->o:[Lcom/google/android/gms/internal/ads/dor;

    aget-object v4, v4, v0

    .line 98
    iget v5, v4, Lcom/google/android/gms/internal/ads/dor;->d:I

    .line 99
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/dor;->b:Lcom/google/android/gms/internal/ads/dov;

    iget v6, v6, Lcom/google/android/gms/internal/ads/dov;->a:I

    if-eq v5, v6, :cond_14

    .line 100
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dor;->b:Lcom/google/android/gms/internal/ads/dov;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dov;->b:[J

    aget-wide v4, v4, v5

    .line 101
    cmp-long v6, v4, v2

    if-gez v6, :cond_14

    move-wide v2, v4

    move v1, v0

    .line 104
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 107
    :cond_15
    const/4 v0, -0x1

    if-ne v1, v0, :cond_16

    .line 108
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 109
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dop;->o:[Lcom/google/android/gms/internal/ads/dor;

    aget-object v8, v0, v1

    .line 110
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/dor;->c:Lcom/google/android/gms/internal/ads/dno;

    .line 111
    iget v4, v8, Lcom/google/android/gms/internal/ads/dor;->d:I

    .line 112
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/dor;->b:Lcom/google/android/gms/internal/ads/dov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dov;->b:[J

    aget-wide v2, v0, v4

    .line 113
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/dor;->b:Lcom/google/android/gms/internal/ads/dov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dov;->c:[I

    aget v0, v0, v4

    .line 114
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/dor;->a:Lcom/google/android/gms/internal/ads/dot;

    iget v5, v5, Lcom/google/android/gms/internal/ads/dot;->g:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    .line 115
    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    .line 116
    add-int/lit8 v0, v0, -0x8

    .line 117
    :cond_17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget v5, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    int-to-long v10, v5

    add-long/2addr v6, v10

    .line 118
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-ltz v5, :cond_18

    const-wide/32 v10, 0x40000

    cmp-long v5, v6, v10

    if-ltz v5, :cond_19

    .line 119
    :cond_18
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/dnn;->a:J

    .line 120
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 121
    :cond_19
    long-to-int v2, v6

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/dng;->b(I)V

    .line 122
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/dor;->a:Lcom/google/android/gms/internal/ads/dot;

    iget v2, v2, Lcom/google/android/gms/internal/ads/dot;->j:I

    if-eqz v2, :cond_1c

    .line 123
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dop;->d:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    .line 124
    const/4 v3, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 125
    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 126
    const/4 v3, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 127
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/dor;->a:Lcom/google/android/gms/internal/ads/dot;

    iget v2, v2, Lcom/google/android/gms/internal/ads/dot;->j:I

    .line 128
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/dor;->a:Lcom/google/android/gms/internal/ads/dot;

    iget v3, v3, Lcom/google/android/gms/internal/ads/dot;->j:I

    rsub-int/lit8 v3, v3, 0x4

    .line 129
    :goto_b
    iget v5, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    if-ge v5, v0, :cond_1b

    .line 130
    iget v5, p0, Lcom/google/android/gms/internal/ads/dop;->m:I

    if-nez v5, :cond_1a

    .line 131
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dop;->d:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-interface {p1, v5, v3, v2}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 132
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dop;->d:Lcom/google/android/gms/internal/ads/dsk;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 133
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dop;->d:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/dop;->m:I

    .line 134
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dop;->c:Lcom/google/android/gms/internal/ads/dsk;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 135
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dop;->c:Lcom/google/android/gms/internal/ads/dsk;

    const/4 v6, 0x4

    invoke-interface {v1, v5, v6}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dsk;I)V

    .line 136
    iget v5, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    .line 137
    add-int/2addr v0, v3

    goto :goto_b

    .line 138
    :cond_1a
    iget v5, p0, Lcom/google/android/gms/internal/ads/dop;->m:I

    const/4 v6, 0x0

    invoke-interface {v1, p1, v5, v6}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dng;IZ)I

    move-result v5

    .line 139
    iget v6, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    .line 140
    iget v6, p0, Lcom/google/android/gms/internal/ads/dop;->m:I

    sub-int v5, v6, v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/dop;->m:I

    goto :goto_b

    :cond_1b
    move v5, v0

    .line 148
    :goto_c
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/dor;->b:Lcom/google/android/gms/internal/ads/dov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dov;->e:[J

    aget-wide v2, v0, v4

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/dor;->b:Lcom/google/android/gms/internal/ads/dov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dov;->f:[I

    aget v4, v0, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dno;->a(JIIILcom/google/android/gms/internal/ads/dnr;)V

    .line 149
    iget v0, v8, Lcom/google/android/gms/internal/ads/dor;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/google/android/gms/internal/ads/dor;->d:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->m:I

    .line 152
    const/4 v0, 0x0

    .line 153
    goto/16 :goto_1

    .line 143
    :cond_1c
    :goto_d
    iget v2, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    if-ge v2, v0, :cond_1d

    .line 144
    iget v2, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dng;IZ)I

    move-result v2

    .line 145
    iget v3, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    .line 146
    iget v3, p0, Lcom/google/android/gms/internal/ads/dop;->m:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/dop;->m:I

    goto :goto_d

    :cond_1d
    move v5, v0

    goto :goto_c

    :cond_1e
    move v0, v1

    goto/16 :goto_8

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(J)J
    .locals 9

    .prologue
    .line 157
    const-wide v2, 0x7fffffffffffffffL

    .line 158
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dop;->o:[Lcom/google/android/gms/internal/ads/dor;

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 159
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dor;->b:Lcom/google/android/gms/internal/ads/dov;

    .line 160
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/dov;->a(J)I

    move-result v0

    .line 161
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 162
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/dov;->b(J)I

    move-result v0

    .line 163
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dov;->b:[J

    aget-wide v0, v1, v0

    .line 164
    cmp-long v7, v0, v2

    if-gez v7, :cond_2

    .line 166
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_0

    .line 167
    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public final a(JJ)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dop;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->j:I

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->l:I

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/dop;->m:I

    .line 14
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dop;->d()V

    .line 25
    :cond_0
    return-void

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dop;->o:[Lcom/google/android/gms/internal/ads/dor;

    if-eqz v1, :cond_0

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dop;->o:[Lcom/google/android/gms/internal/ads/dor;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 19
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/dor;->b:Lcom/google/android/gms/internal/ads/dov;

    .line 20
    invoke-virtual {v5, p3, p4}, Lcom/google/android/gms/internal/ads/dov;->a(J)I

    move-result v0

    .line 21
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 22
    invoke-virtual {v5, p3, p4}, Lcom/google/android/gms/internal/ads/dov;->b(J)I

    move-result v0

    .line 23
    :cond_2
    iput v0, v4, Lcom/google/android/gms/internal/ads/dor;->d:I

    .line 24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dnj;)V
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dop;->n:Lcom/google/android/gms/internal/ads/dnj;

    .line 9
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dng;)Z
    .locals 1

    .prologue
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dou;->a(Lcom/google/android/gms/internal/ads/dng;)Z

    move-result v0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dop;->p:J

    return-wide v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
