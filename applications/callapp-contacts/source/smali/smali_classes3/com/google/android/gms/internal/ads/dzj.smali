.class public final Lcom/google/android/gms/internal/ads/dzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dxv;
.implements Lcom/google/android/gms/internal/ads/dya;


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/dxw;

.field private static final b:I


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/ecy;

.field private final d:Lcom/google/android/gms/internal/ads/ecy;

.field private final e:Lcom/google/android/gms/internal/ads/ecy;

.field private final f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/dyq;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:Lcom/google/android/gms/internal/ads/ecy;

.field private l:I

.field private m:I

.field private n:Lcom/google/android/gms/internal/ads/dxx;

.field private o:[Lcom/google/android/gms/internal/ads/dzl;

.field private p:J

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 220
    new-instance v0, Lcom/google/android/gms/internal/ads/dzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dzj;->a:Lcom/google/android/gms/internal/ads/dxw;

    const-string v0, "qt  "

    .line 221
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ede;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/dzj;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ecy;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ecy;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dzj;->e:Lcom/google/android/gms/internal/ads/ecy;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ecy;

    sget-object v1, Lcom/google/android/gms/internal/ads/ecx;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ecy;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dzj;->c:Lcom/google/android/gms/internal/ads/ecy;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/ecy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ecy;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dzj;->d:Lcom/google/android/gms/internal/ads/ecy;

    return-void
.end method

.method private final b(J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 169
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dyq;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/dyq;->a:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_7

    .line 170
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dyq;

    .line 171
    iget v3, v1, Lcom/google/android/gms/internal/ads/dyq;->aR:I

    sget v4, Lcom/google/android/gms/internal/ads/dyr;->E:I

    if-ne v3, v4, :cond_6

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 177
    new-instance v7, Lcom/google/android/gms/internal/ads/dxz;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/dxz;-><init>()V

    .line 178
    sget v8, Lcom/google/android/gms/internal/ads/dyr;->aC:I

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/dyq;->a(I)Lcom/google/android/gms/internal/ads/dyt;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 180
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/dzj;->q:Z

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/ads/dys;->a(Lcom/google/android/gms/internal/ads/dyt;Z)Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 182
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/dxz;->a(Lcom/google/android/gms/internal/ads/zzmh;)Z

    :cond_1
    const/4 v8, 0x0

    .line 183
    :goto_1
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/dyq;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 184
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/dyq;->c:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/dyq;

    .line 185
    iget v10, v9, Lcom/google/android/gms/internal/ads/dyq;->aR:I

    sget v11, Lcom/google/android/gms/internal/ads/dyr;->G:I

    if-ne v10, v11, :cond_4

    .line 186
    sget v10, Lcom/google/android/gms/internal/ads/dyr;->F:I

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/dyq;->a(I)Lcom/google/android/gms/internal/ads/dyt;

    move-result-object v11

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/dzj;->q:Z

    move-object v10, v9

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/dys;->a(Lcom/google/android/gms/internal/ads/dyq;Lcom/google/android/gms/internal/ads/dyt;JLcom/google/android/gms/internal/ads/zzjo;Z)Lcom/google/android/gms/internal/ads/dzn;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 188
    sget v11, Lcom/google/android/gms/internal/ads/dyr;->H:I

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/dyq;->b(I)Lcom/google/android/gms/internal/ads/dyq;

    move-result-object v9

    sget v11, Lcom/google/android/gms/internal/ads/dyr;->I:I

    .line 189
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/dyq;->b(I)Lcom/google/android/gms/internal/ads/dyq;

    move-result-object v9

    sget v11, Lcom/google/android/gms/internal/ads/dyr;->J:I

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/dyq;->b(I)Lcom/google/android/gms/internal/ads/dyq;

    move-result-object v9

    .line 190
    invoke-static {v10, v9, v7}, Lcom/google/android/gms/internal/ads/dys;->a(Lcom/google/android/gms/internal/ads/dzn;Lcom/google/android/gms/internal/ads/dyq;Lcom/google/android/gms/internal/ads/dxz;)Lcom/google/android/gms/internal/ads/dzo;

    move-result-object v9

    .line 191
    iget v11, v9, Lcom/google/android/gms/internal/ads/dzo;->a:I

    if-eqz v11, :cond_4

    .line 192
    new-instance v11, Lcom/google/android/gms/internal/ads/dzl;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/dzj;->n:Lcom/google/android/gms/internal/ads/dxx;

    .line 193
    invoke-interface {v12, v8}, Lcom/google/android/gms/internal/ads/dxx;->a(I)Lcom/google/android/gms/internal/ads/dyc;

    move-result-object v12

    invoke-direct {v11, v10, v9, v12}, Lcom/google/android/gms/internal/ads/dzl;-><init>(Lcom/google/android/gms/internal/ads/dzn;Lcom/google/android/gms/internal/ads/dzo;Lcom/google/android/gms/internal/ads/dyc;)V

    .line 194
    iget v9, v9, Lcom/google/android/gms/internal/ads/dzo;->d:I

    add-int/lit8 v9, v9, 0x1e

    .line 195
    iget-object v12, v10, Lcom/google/android/gms/internal/ads/dzn;->f:Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzht;->zzy(I)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v9

    .line 196
    iget v12, v10, Lcom/google/android/gms/internal/ads/dzn;->b:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 197
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dxz;->a()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 198
    iget v12, v7, Lcom/google/android/gms/internal/ads/dxz;->a:I

    iget v13, v7, Lcom/google/android/gms/internal/ads/dxz;->b:I

    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzht;->zzd(II)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v9

    :cond_2
    if-eqz v6, :cond_3

    .line 200
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzht;->zza(Lcom/google/android/gms/internal/ads/zzmh;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v9

    .line 201
    :cond_3
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/dzl;->c:Lcom/google/android/gms/internal/ads/dyc;

    invoke-interface {v12, v9}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 202
    iget-wide v9, v10, Lcom/google/android/gms/internal/ads/dzn;->e:J

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 203
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 208
    :cond_5
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/dzj;->p:J

    .line 209
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dzl;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/dzl;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dzj;->o:[Lcom/google/android/gms/internal/ads/dzl;

    .line 210
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dzj;->n:Lcom/google/android/gms/internal/ads/dxx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dxx;->a()V

    .line 211
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dzj;->n:Lcom/google/android/gms/internal/ads/dxx;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dxx;->a(Lcom/google/android/gms/internal/ads/dya;)V

    .line 212
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 213
    iput v2, v0, Lcom/google/android/gms/internal/ads/dzj;->g:I

    goto/16 :goto_0

    .line 214
    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dyq;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/dyq;->a(Lcom/google/android/gms/internal/ads/dyq;)V

    goto/16 :goto_0

    .line 217
    :cond_7
    iget v1, v0, Lcom/google/android/gms/internal/ads/dzj;->g:I

    if-eq v1, v2, :cond_8

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dzj;->c()V

    :cond_8
    return-void
.end method

.method private final c()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/google/android/gms/internal/ads/dzj;->g:I

    .line 167
    iput v0, p0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dxt;Lcom/google/android/gms/internal/ads/dyb;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 27
    :cond_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/dzj;->g:I

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v3, :cond_14

    const-wide/32 v8, 0x40000

    const/4 v10, 0x2

    if-eq v3, v6, :cond_b

    if-ne v3, v10, :cond_a

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 94
    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/dzj;->o:[Lcom/google/android/gms/internal/ads/dzl;

    array-length v15, v14

    if-ge v3, v15, :cond_2

    .line 95
    aget-object v14, v14, v3

    .line 96
    iget v15, v14, Lcom/google/android/gms/internal/ads/dzl;->d:I

    .line 97
    iget-object v11, v14, Lcom/google/android/gms/internal/ads/dzl;->b:Lcom/google/android/gms/internal/ads/dzo;

    iget v11, v11, Lcom/google/android/gms/internal/ads/dzo;->a:I

    if-eq v15, v11, :cond_1

    .line 98
    iget-object v11, v14, Lcom/google/android/gms/internal/ads/dzl;->b:Lcom/google/android/gms/internal/ads/dzo;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/dzo;->b:[J

    aget-wide v14, v11, v15

    cmp-long v11, v14, v12

    if-gez v11, :cond_1

    move v5, v3

    move-wide v12, v14

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ne v5, v4, :cond_3

    return v4

    .line 107
    :cond_3
    aget-object v3, v14, v5

    .line 108
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dzl;->c:Lcom/google/android/gms/internal/ads/dyc;

    .line 109
    iget v5, v3, Lcom/google/android/gms/internal/ads/dzl;->d:I

    .line 110
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/dzl;->b:Lcom/google/android/gms/internal/ads/dzo;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/dzo;->b:[J

    aget-wide v12, v11, v5

    .line 111
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/dzl;->b:Lcom/google/android/gms/internal/ads/dzo;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/dzo;->c:[I

    aget v11, v11, v5

    .line 112
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/dzl;->a:Lcom/google/android/gms/internal/ads/dzn;

    iget v14, v14, Lcom/google/android/gms/internal/ads/dzn;->g:I

    if-ne v14, v6, :cond_4

    const-wide/16 v14, 0x8

    add-long/2addr v12, v14

    add-int/lit8 v11, v11, -0x8

    .line 115
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dxt;->b()J

    move-result-wide v14

    sub-long v14, v12, v14

    iget v10, v0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    int-to-long v6, v10

    add-long/2addr v14, v6

    const-wide/16 v6, 0x0

    cmp-long v10, v14, v6

    if-ltz v10, :cond_9

    cmp-long v6, v14, v8

    if-ltz v6, :cond_5

    goto/16 :goto_3

    :cond_5
    long-to-int v2, v14

    .line 119
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dxt;->b(I)V

    .line 120
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/dzl;->a:Lcom/google/android/gms/internal/ads/dzn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/dzn;->k:I

    if-eqz v2, :cond_7

    .line 121
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dzj;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    const/4 v6, 0x0

    .line 122
    aput-byte v6, v2, v6

    const/4 v7, 0x1

    .line 123
    aput-byte v6, v2, v7

    const/4 v7, 0x2

    .line 124
    aput-byte v6, v2, v7

    .line 125
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/dzl;->a:Lcom/google/android/gms/internal/ads/dzn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/dzn;->k:I

    .line 126
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/dzl;->a:Lcom/google/android/gms/internal/ads/dzn;

    iget v6, v6, Lcom/google/android/gms/internal/ads/dzn;->k:I

    const/4 v7, 0x4

    rsub-int/lit8 v6, v6, 0x4

    .line 127
    :goto_1
    iget v7, v0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    if-ge v7, v11, :cond_8

    .line 128
    iget v7, v0, Lcom/google/android/gms/internal/ads/dzj;->m:I

    if-nez v7, :cond_6

    .line 129
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dzj;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    invoke-interface {v1, v7, v6, v2}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 130
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dzj;->d:Lcom/google/android/gms/internal/ads/ecy;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 131
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dzj;->d:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/ecy;->i()I

    move-result v7

    iput v7, v0, Lcom/google/android/gms/internal/ads/dzj;->m:I

    .line 132
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dzj;->c:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 133
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dzj;->c:Lcom/google/android/gms/internal/ads/ecy;

    const/4 v8, 0x4

    invoke-interface {v4, v7, v8}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/ecy;I)V

    .line 134
    iget v7, v0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    add-int/2addr v11, v6

    goto :goto_1

    .line 136
    :cond_6
    invoke-interface {v4, v1, v7}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/dxt;I)I

    move-result v7

    .line 137
    iget v8, v0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    .line 138
    iget v8, v0, Lcom/google/android/gms/internal/ads/dzj;->m:I

    sub-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/gms/internal/ads/dzj;->m:I

    goto :goto_1

    .line 141
    :cond_7
    :goto_2
    iget v2, v0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    if-ge v2, v11, :cond_8

    sub-int v2, v11, v2

    .line 142
    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/dxt;I)I

    move-result v2

    .line 143
    iget v6, v0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    .line 144
    iget v6, v0, Lcom/google/android/gms/internal/ads/dzj;->m:I

    sub-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/dzj;->m:I

    goto :goto_2

    :cond_8
    move/from16 v20, v11

    .line 146
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/dzl;->b:Lcom/google/android/gms/internal/ads/dzo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dzo;->e:[J

    aget-wide v17, v1, v5

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/dzl;->b:Lcom/google/android/gms/internal/ads/dzo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dzo;->f:[I

    aget v19, v1, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/dyc;->a(JIIILcom/google/android/gms/internal/ads/dyf;)V

    .line 147
    iget v1, v3, Lcom/google/android/gms/internal/ads/dzl;->d:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v3, Lcom/google/android/gms/internal/ads/dzl;->d:I

    const/4 v1, 0x0

    .line 148
    iput v1, v0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    .line 149
    iput v1, v0, Lcom/google/android/gms/internal/ads/dzj;->m:I

    return v1

    :cond_9
    :goto_3
    const/4 v4, 0x1

    .line 117
    iput-wide v12, v2, Lcom/google/android/gms/internal/ads/dyb;->a:J

    return v4

    .line 152
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 63
    :cond_b
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/dzj;->i:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dxt;->b()J

    move-result-wide v6

    add-long/2addr v6, v3

    .line 66
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/dzj;->k:Lcom/google/android/gms/internal/ads/ecy;

    if-eqz v10, :cond_10

    .line 67
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    iget v9, v0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    long-to-int v4, v3

    invoke-interface {v1, v8, v9, v4}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 68
    iget v3, v0, Lcom/google/android/gms/internal/ads/dzj;->h:I

    sget v4, Lcom/google/android/gms/internal/ads/dyr;->d:I

    if-ne v3, v4, :cond_f

    .line 69
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->k:Lcom/google/android/gms/internal/ads/ecy;

    .line 70
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 71
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ecy;->g()I

    move-result v4

    .line 72
    sget v5, Lcom/google/android/gms/internal/ads/dzj;->b:I

    if-ne v4, v5, :cond_c

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x4

    .line 74
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ecy;->d(I)V

    .line 75
    :cond_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ecy;->b()I

    move-result v4

    if-lez v4, :cond_e

    .line 76
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ecy;->g()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/dzj;->b:I

    if-ne v4, v5, :cond_d

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    .line 79
    :goto_5
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/dzj;->q:Z

    goto :goto_6

    .line 80
    :cond_f
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 81
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dyq;

    new-instance v4, Lcom/google/android/gms/internal/ads/dyt;

    iget v5, v0, Lcom/google/android/gms/internal/ads/dzj;->h:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dzj;->k:Lcom/google/android/gms/internal/ads/ecy;

    invoke-direct {v4, v5, v8}, Lcom/google/android/gms/internal/ads/dyt;-><init>(ILcom/google/android/gms/internal/ads/ecy;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/dyq;->a(Lcom/google/android/gms/internal/ads/dyt;)V

    goto :goto_6

    :cond_10
    cmp-long v5, v3, v8

    if-gez v5, :cond_12

    long-to-int v4, v3

    .line 83
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/dxt;->b(I)V

    :cond_11
    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    .line 84
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dxt;->b()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/dyb;->a:J

    const/4 v3, 0x1

    .line 86
    :goto_7
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dzj;->b(J)V

    if-eqz v3, :cond_13

    .line 87
    iget v3, v0, Lcom/google/android/gms/internal/ads/dzj;->g:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    const/4 v7, 0x1

    goto :goto_8

    :cond_13
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_14
    const/4 v3, 0x1

    .line 29
    iget v6, v0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    if-nez v6, :cond_16

    .line 30
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dzj;->e:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7, v5, v3}, Lcom/google/android/gms/internal/ads/dxt;->a([BIIZ)Z

    move-result v6

    if-nez v6, :cond_15

    const/4 v6, 0x0

    goto/16 :goto_11

    .line 32
    :cond_15
    iput v5, v0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    .line 33
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 34
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ecy;->f()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/dzj;->i:J

    .line 35
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ecy;->g()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/dzj;->h:I

    .line 36
    :cond_16
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dzj;->i:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_17

    .line 38
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->e:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    invoke-interface {v1, v3, v5, v5}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 39
    iget v3, v0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    .line 40
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ecy;->j()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/dzj;->i:J

    .line 41
    :cond_17
    iget v3, v0, Lcom/google/android/gms/internal/ads/dzj;->h:I

    .line 42
    sget v6, Lcom/google/android/gms/internal/ads/dyr;->E:I

    if-eq v3, v6, :cond_19

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->G:I

    if-eq v3, v6, :cond_19

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->H:I

    if-eq v3, v6, :cond_19

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->I:I

    if-eq v3, v6, :cond_19

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->J:I

    if-eq v3, v6, :cond_19

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->S:I

    if-ne v3, v6, :cond_18

    goto :goto_9

    :cond_18
    const/4 v6, 0x0

    goto :goto_a

    :cond_19
    :goto_9
    const/4 v6, 0x1

    :goto_a
    if-eqz v6, :cond_1b

    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dxt;->b()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/dzj;->i:J

    add-long/2addr v5, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 45
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    new-instance v7, Lcom/google/android/gms/internal/ads/dyq;

    iget v8, v0, Lcom/google/android/gms/internal/ads/dzj;->h:I

    invoke-direct {v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/dyq;-><init>(IJ)V

    invoke-virtual {v3, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 46
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/dzj;->i:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    int-to-long v9, v3

    cmp-long v3, v7, v9

    if-nez v3, :cond_1a

    .line 47
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/dzj;->b(J)V

    goto :goto_b

    .line 48
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dzj;->c()V

    :goto_b
    const/4 v3, 0x1

    goto/16 :goto_10

    .line 49
    :cond_1b
    iget v3, v0, Lcom/google/android/gms/internal/ads/dzj;->h:I

    .line 50
    sget v6, Lcom/google/android/gms/internal/ads/dyr;->U:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->F:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->V:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->W:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->ao:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->ap:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->aq:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->T:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->ar:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->as:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->at:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->au:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->av:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->R:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->d:I

    if-eq v3, v6, :cond_1d

    sget v6, Lcom/google/android/gms/internal/ads/dyr;->aC:I

    if-ne v3, v6, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v6, 0x0

    goto :goto_d

    :cond_1d
    :goto_c
    const/4 v6, 0x1

    :goto_d
    if-eqz v6, :cond_20

    .line 52
    iget v3, v0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    if-ne v3, v5, :cond_1e

    const/4 v6, 0x1

    goto :goto_e

    :cond_1e
    const/4 v6, 0x0

    :goto_e
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 53
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dzj;->i:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_1f

    const/4 v6, 0x1

    goto :goto_f

    :cond_1f
    const/4 v6, 0x0

    :goto_f
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 54
    new-instance v3, Lcom/google/android/gms/internal/ads/ecy;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dzj;->i:J

    long-to-int v7, v6

    invoke-direct {v3, v7}, Lcom/google/android/gms/internal/ads/ecy;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->k:Lcom/google/android/gms/internal/ads/ecy;

    .line 55
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dzj;->e:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dzj;->k:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    const/4 v7, 0x0

    invoke-static {v3, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    .line 56
    iput v3, v0, Lcom/google/android/gms/internal/ads/dzj;->g:I

    goto :goto_10

    :cond_20
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 57
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dzj;->k:Lcom/google/android/gms/internal/ads/ecy;

    .line 58
    iput v3, v0, Lcom/google/android/gms/internal/ads/dzj;->g:I

    :goto_10
    const/4 v6, 0x1

    :goto_11
    if-nez v6, :cond_0

    return v4
.end method

.method public final a(J)J
    .locals 8

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dzj;->o:[Lcom/google/android/gms/internal/ads/dzl;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 157
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dzl;->b:Lcom/google/android/gms/internal/ads/dzo;

    .line 158
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/dzo;->a(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 160
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/dzo;->b(J)I

    move-result v6

    .line 161
    :cond_0
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dzo;->b:[J

    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_1

    move-wide v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public final a(JJ)V
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dzj;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/dzj;->j:I

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/dzj;->l:I

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/dzj;->m:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dzj;->c()V

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dzj;->o:[Lcom/google/android/gms/internal/ads/dzl;

    if-eqz p1, :cond_2

    .line 18
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dzl;->b:Lcom/google/android/gms/internal/ads/dzo;

    .line 20
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/dzo;->a(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 22
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/dzo;->b(J)I

    move-result v3

    .line 23
    :cond_1
    iput v3, v1, Lcom/google/android/gms/internal/ads/dzl;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dxx;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dzj;->n:Lcom/google/android/gms/internal/ads/dxx;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dxt;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dzk;->b(Lcom/google/android/gms/internal/ads/dxt;)Z

    move-result p1

    return p1
.end method

.method public final b()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dzj;->p:J

    return-wide v0
.end method
