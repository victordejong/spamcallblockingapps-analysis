.class public final Lcom/google/android/exoplayer2/extractor/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/f/e$b;,
        Lcom/google/android/exoplayer2/extractor/f/e$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;

.field private static final b:[B

.field private static final c:Lcom/google/android/exoplayer2/Format;


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/google/android/exoplayer2/extractor/f/e$b;

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Lcom/google/android/exoplayer2/extractor/j;

.field private I:[Lcom/google/android/exoplayer2/extractor/x;

.field private J:[Lcom/google/android/exoplayer2/extractor/x;

.field private K:Z

.field private final d:I

.field private final e:Lcom/google/android/exoplayer2/extractor/f/k;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/f/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/util/u;

.field private final i:Lcom/google/android/exoplayer2/util/u;

.field private final j:Lcom/google/android/exoplayer2/util/u;

.field private final k:[B

.field private final l:Lcom/google/android/exoplayer2/util/u;

.field private final m:Lcom/google/android/exoplayer2/util/ad;

.field private final n:Lcom/google/android/exoplayer2/metadata/emsg/b;

.field private final o:Lcom/google/android/exoplayer2/util/u;

.field private final p:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/f/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/f/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/exoplayer2/extractor/x;

.field private s:I

.field private t:I

.field private u:J

.field private v:I

.field private w:Lcom/google/android/exoplayer2/util/u;

.field private x:J

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    sget-object v0, Lcom/google/android/exoplayer2/extractor/f/-$$Lambda$e$jFlk_laRqVUUJcTmnfBeVwAIvDU;->INSTANCE:Lcom/google/android/exoplayer2/extractor/f/-$$Lambda$e$jFlk_laRqVUUJcTmnfBeVwAIvDU;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/f/e;->a:Lcom/google/android/exoplayer2/extractor/l;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 113
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/f/e;->b:[B

    .line 117
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    const-string v1, "application/x-emsg"

    .line 30370
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/f/e;->c:Lcom/google/android/exoplayer2/Format;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/f/e;-><init>(ILcom/google/android/exoplayer2/util/ad;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/ad;)V
    .locals 2

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/exoplayer2/extractor/f/e;-><init>(ILcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/f/k;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/f/k;)V
    .locals 1

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/f/e;-><init>(ILcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/f/k;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/f/k;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/ad;",
            "Lcom/google/android/exoplayer2/extractor/f/k;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 226
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/f/e;-><init>(ILcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/f/k;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/x;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/f/k;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/ad;",
            "Lcom/google/android/exoplayer2/extractor/f/k;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/extractor/x;",
            ")V"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->d:I

    .line 252
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/e;->m:Lcom/google/android/exoplayer2/util/ad;

    .line 253
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/f/e;->e:Lcom/google/android/exoplayer2/extractor/f/k;

    .line 254
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->f:Ljava/util/List;

    .line 255
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/f/e;->r:Lcom/google/android/exoplayer2/extractor/x;

    .line 256
    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/emsg/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->n:Lcom/google/android/exoplayer2/metadata/emsg/b;

    .line 257
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->o:Lcom/google/android/exoplayer2/util/u;

    .line 258
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    sget-object p3, Lcom/google/android/exoplayer2/util/s;->a:[B

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->h:Lcom/google/android/exoplayer2/util/u;

    .line 259
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->i:Lcom/google/android/exoplayer2/util/u;

    .line 260
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->j:Lcom/google/android/exoplayer2/util/u;

    new-array p1, p2, [B

    .line 261
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->k:[B

    .line 262
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/e;->l:Lcom/google/android/exoplayer2/util/u;

    .line 263
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    .line 264
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->q:Ljava/util/ArrayDeque;

    .line 265
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 266
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->A:J

    .line 267
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->z:J

    .line 268
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->B:J

    .line 269
    sget-object p1, Lcom/google/android/exoplayer2/extractor/j;->a:Lcom/google/android/exoplayer2/extractor/j;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->H:Lcom/google/android/exoplayer2/extractor/j;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/exoplayer2/extractor/x;

    .line 270
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/e;->I:[Lcom/google/android/exoplayer2/extractor/x;

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/x;

    .line 271
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->J:[Lcom/google/android/exoplayer2/extractor/x;

    return-void
.end method

.method private static a(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    .line 1048
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/f/e$b;IILcom/google/android/exoplayer2/util/u;I)I
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    .line 960
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 961
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    const v3, 0xffffff

    and-int/2addr v1, v3

    .line 964
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    .line 965
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 966
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/f/m;->a:Lcom/google/android/exoplayer2/extractor/f/c;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/f/c;

    .line 968
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/f/m;->h:[I

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v7

    aput v7, v6, p1

    .line 969
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/f/m;->g:[J

    iget-wide v7, v4, Lcom/google/android/exoplayer2/extractor/f/m;->c:J

    aput-wide v7, v6, p1

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_0

    .line 971
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/f/m;->g:[J

    aget-wide v7, v6, p1

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_0
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 975
    :goto_0
    iget v9, v5, Lcom/google/android/exoplayer2/extractor/f/c;->d:I

    if-eqz v6, :cond_2

    .line 977
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v9

    :cond_2
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 992
    :goto_4
    iget-object v13, v3, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_7

    iget-object v13, v3, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    array-length v13, v13

    if-ne v13, v8, :cond_7

    iget-object v13, v3, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    aget-wide v16, v13, v7

    cmp-long v13, v16, v14

    if-nez v13, :cond_7

    .line 994
    iget-object v13, v3, Lcom/google/android/exoplayer2/extractor/f/k;->i:[J

    .line 996
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    aget-wide v14, v13, v7

    const-wide/32 v16, 0xf4240

    iget-wide v7, v3, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    move-wide/from16 v18, v7

    .line 995
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v14

    .line 999
    :cond_7
    iget-object v7, v4, Lcom/google/android/exoplayer2/extractor/f/m;->i:[I

    .line 1000
    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/f/m;->j:[I

    .line 1001
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/f/m;->k:[J

    .line 1002
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/f/m;->l:[Z

    move/from16 v17, v9

    .line 1004
    iget v9, v3, Lcom/google/android/exoplayer2/extractor/f/k;->b:I

    move-object/from16 v18, v2

    const/4 v2, 0x2

    if-ne v9, v2, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 1007
    :goto_5
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/f/m;->h:[I

    aget v9, v9, p1

    add-int v9, p4, v9

    move/from16 p2, v2

    .line 1008
    iget-wide v2, v3, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    move-wide/from16 v27, v14

    move-object v15, v13

    .line 1009
    iget-wide v13, v4, Lcom/google/android/exoplayer2/extractor/f/m;->r:J

    move-wide/from16 v29, v13

    move/from16 v13, p4

    :goto_6
    if-ge v13, v9, :cond_11

    if-eqz v10, :cond_9

    .line 1013
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v14

    goto :goto_7

    :cond_9
    iget v14, v5, Lcom/google/android/exoplayer2/extractor/f/c;->b:I

    :goto_7
    invoke-static {v14}, Lcom/google/android/exoplayer2/extractor/f/e;->a(I)I

    move-result v14

    if-eqz v11, :cond_a

    .line 1015
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v19

    move/from16 v35, v19

    move/from16 v19, v10

    move/from16 v10, v35

    goto :goto_8

    :cond_a
    move/from16 v19, v10

    iget v10, v5, Lcom/google/android/exoplayer2/extractor/f/c;->c:I

    :goto_8
    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/f/e;->a(I)I

    move-result v10

    if-eqz v12, :cond_b

    .line 1018
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v21

    move/from16 v31, v6

    move/from16 v6, v21

    goto :goto_9

    :cond_b
    if-nez v13, :cond_c

    if-eqz v6, :cond_c

    move/from16 v31, v6

    move/from16 v6, v17

    goto :goto_9

    :cond_c
    move/from16 v31, v6

    .line 1019
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/f/c;->d:I

    :goto_9
    if-eqz v1, :cond_d

    move/from16 v32, v1

    .line 1026
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    move/from16 v33, v11

    move/from16 v34, v12

    int-to-long v11, v1

    const-wide/32 v21, 0xf4240

    mul-long v11, v11, v21

    .line 1027
    div-long/2addr v11, v2

    long-to-int v1, v11

    aput v1, v8, v13

    const/16 v16, 0x0

    goto :goto_a

    :cond_d
    move/from16 v32, v1

    move/from16 v33, v11

    move/from16 v34, v12

    const/16 v16, 0x0

    .line 1030
    aput v16, v8, v13

    :goto_a
    const-wide/32 v23, 0xf4240

    move-wide/from16 v21, v29

    move-wide/from16 v25, v2

    .line 1033
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v11

    sub-long v11, v11, v27

    aput-wide v11, v15, v13

    .line 1034
    iget-boolean v1, v4, Lcom/google/android/exoplayer2/extractor/f/m;->s:Z

    if-nez v1, :cond_e

    .line 1035
    aget-wide v11, v15, v13

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-wide v0, v1, Lcom/google/android/exoplayer2/extractor/f/n;->h:J

    add-long/2addr v11, v0

    aput-wide v11, v15, v13

    .line 1037
    :cond_e
    aput v10, v7, v13

    shr-int/lit8 v0, v6, 0x10

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    if-eqz p2, :cond_f

    if-nez v13, :cond_10

    :cond_f
    const/4 v0, 0x1

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    .line 1038
    :goto_b
    aput-boolean v0, v18, v13

    int-to-long v10, v14

    move-wide/from16 v20, v2

    move-wide/from16 v1, v29

    add-long v29, v1, v10

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v19

    move-wide/from16 v2, v20

    move/from16 v6, v31

    move/from16 v1, v32

    move/from16 v11, v33

    move/from16 v12, v34

    goto/16 :goto_6

    :cond_11
    move-wide/from16 v1, v29

    .line 1042
    iput-wide v1, v4, Lcom/google/android/exoplayer2/extractor/f/m;->r:J

    return v9
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/f/c;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 681
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 682
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v0

    .line 683
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 684
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    .line 685
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    .line 686
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result p0

    .line 688
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/google/android/exoplayer2/extractor/f/c;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/google/android/exoplayer2/extractor/f/c;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/f/a$b;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 1479
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1481
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/a$b;

    .line 1482
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/f/a$b;->a:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 1484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    :cond_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 30169
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1487
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/f/h;->a([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 1489
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1491
    :cond_1
    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    .line 1495
    :cond_4
    new-instance p0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static a(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/f/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/f/c;",
            ">;I)",
            "Lcom/google/android/exoplayer2/extractor/f/c;"
        }
    .end annotation

    .line 551
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 554
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/f/c;

    return-object p0

    .line 556
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/f/c;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/f/c;

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/f/e$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/f/e$b;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/f/e$b;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 883
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 884
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 886
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    .line 887
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/extractor/f/e;->b(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/f/e$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 892
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v1

    .line 893
    iget-object v3, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iput-wide v1, v3, Lcom/google/android/exoplayer2/extractor/f/m;->c:J

    .line 894
    iget-object v3, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iput-wide v1, v3, Lcom/google/android/exoplayer2/extractor/f/m;->d:J

    .line 897
    :cond_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->e:Lcom/google/android/exoplayer2/extractor/f/c;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 900
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 901
    :cond_2
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/f/c;->a:I

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 904
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    goto :goto_1

    .line 905
    :cond_3
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/f/c;->b:I

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    .line 908
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v4

    goto :goto_2

    .line 909
    :cond_4
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/f/c;->c:I

    :goto_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 912
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result p0

    goto :goto_3

    .line 913
    :cond_5
    iget p0, v1, Lcom/google/android/exoplayer2/extractor/f/c;->d:I

    .line 914
    :goto_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/c;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/google/android/exoplayer2/extractor/f/c;-><init>(IIII)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/f/m;->a:Lcom/google/android/exoplayer2/extractor/f/c;

    return-object p1
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->s:I

    .line 349
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    return-void
.end method

.method private a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/a$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/f/a$a;->b:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/a$a;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/extractor/f/a$a;)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/e;->a()V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/f/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 477
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/f/a$a;->a:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    .line 478
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/f/e;->b(Lcom/google/android/exoplayer2/extractor/f/a$a;)V

    return-void

    .line 479
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/f/a$a;->a:I

    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    .line 480
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/f/e;->c(Lcom/google/android/exoplayer2/extractor/f/a$a;)V

    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/a$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/f/a$a;->a(Lcom/google/android/exoplayer2/extractor/f/a$a;)V

    :cond_2
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/f/a$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/f/a$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/f/e$b;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/a$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 706
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/a$a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/f/a$a;

    .line 708
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/f/a$a;->a:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    .line 709
    invoke-static {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/e;->b(Lcom/google/android/exoplayer2/extractor/f/a$a;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/f/a$a;Lcom/google/android/exoplayer2/extractor/f/e$b;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 776
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/f/a$a;->c:Ljava/util/List;

    .line 777
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const v5, 0x7472756e

    if-ge v2, v0, :cond_1

    .line 779
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/f/a$b;

    .line 780
    iget v7, v6, Lcom/google/android/exoplayer2/extractor/f/a$b;->a:I

    if-ne v7, v5, :cond_0

    .line 781
    iget-object v5, v6, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    const/16 v6, 0xc

    .line 782
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 783
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 790
    :cond_1
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->h:I

    .line 791
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->g:I

    .line 792
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    .line 793
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/f/m;->a(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 798
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/a$b;

    .line 799
    iget v6, v4, Lcom/google/android/exoplayer2/extractor/f/a$b;->a:I

    if-ne v6, v5, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 800
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 801
    invoke-static {p1, v2, p2, v4, v3}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/extractor/f/e$b;IILcom/google/android/exoplayer2/util/u;I)I

    move-result v2

    move v3, v2

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/f/a$a;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/f/m;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v4, 0x0

    .line 1108
    :goto_0
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/f/a$a;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 1109
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/f/a$a;->c:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/f/a$b;

    .line 1110
    iget-object v8, v7, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 1111
    iget v9, v7, Lcom/google/android/exoplayer2/extractor/f/a$b;->a:I

    const v10, 0x73626770

    const v11, 0x73656967

    const/16 v12, 0xc

    if-ne v9, v10, :cond_0

    .line 1112
    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1113
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v7

    if-ne v7, v11, :cond_1

    move-object v5, v8

    goto :goto_1

    .line 1116
    :cond_0
    iget v7, v7, Lcom/google/android/exoplayer2/extractor/f/a$b;->a:I

    const v9, 0x73677064

    if-ne v7, v9, :cond_1

    .line 1117
    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1118
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v7

    if-ne v7, v11, :cond_1

    move-object v6, v8

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_d

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 v0, 0x8

    .line 1127
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1128
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v4

    const/4 v7, 0x4

    .line 1129
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4

    .line 1131
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1133
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v4

    if-ne v4, v8, :cond_c

    .line 1137
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1138
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v0

    .line 1139
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    if-ne v0, v8, :cond_6

    .line 1141
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1142
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    .line 1145
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1147
    :cond_7
    :goto_2
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_b

    .line 1152
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1153
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v14, v4, 0x4

    and-int/lit8 v15, v0, 0xf

    .line 1156
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    if-ne v0, v8, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_9

    return-void

    .line 1160
    :cond_9
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v12

    const/16 v0, 0x10

    new-array v13, v0, [B

    .line 1162
    invoke-virtual {v6, v13, v3, v0}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    if-nez v12, :cond_a

    .line 1165
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    .line 1166
    new-array v2, v0, [B

    .line 1167
    invoke-virtual {v6, v2, v3, v0}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    :cond_a
    move-object/from16 v16, v2

    .line 1169
    iput-boolean v8, v1, Lcom/google/android/exoplayer2/extractor/f/m;->m:Z

    .line 1170
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/l;

    const/4 v10, 0x1

    move-object v9, v0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, Lcom/google/android/exoplayer2/extractor/f/l;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/extractor/f/m;->o:Lcom/google/android/exoplayer2/extractor/f/l;

    return-void

    .line 1148
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_c
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_4
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/f/l;Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/f/m;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 808
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/f/l;->d:I

    const/16 v0, 0x8

    .line 809
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 810
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 813
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 815
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    .line 817
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v1

    .line 818
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/f/m;->f:I

    if-gt v1, v3, :cond_6

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 828
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/f/m;->n:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 830
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 832
    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    .line 837
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/f/m;->n:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 839
    :cond_4
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/f/m;->n:[Z

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/f/m;->f:I

    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v5, :cond_5

    .line 841
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/extractor/f/m;->a(I)V

    :cond_5
    return-void

    .line 819
    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Saiz sample count "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is greater than fragment sample count"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/f/m;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;ILcom/google/android/exoplayer2/extractor/f/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1075
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1076
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1085
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v1

    if-nez v1, :cond_1

    .line 1088
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/f/m;->n:[Z

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/f/m;->f:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 1090
    :cond_1
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/f/m;->f:I

    if-ne v1, v2, :cond_2

    .line 1098
    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/f/m;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/extractor/f/m;->a(I)V

    .line 1100
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/extractor/f/m;->a(Lcom/google/android/exoplayer2/util/u;)V

    return-void

    .line 1091
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Senc sample count "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is different from fragment sample count"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/f/m;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1081
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/f/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 852
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 853
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 856
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 865
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v0

    .line 866
    iget-wide v1, p1, Lcom/google/android/exoplayer2/extractor/f/m;->d:J

    if-nez v0, :cond_1

    .line 867
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/google/android/exoplayer2/extractor/f/m;->d:J

    return-void

    .line 862
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected saio entry count: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/f/m;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1055
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 1056
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 1059
    sget-object v0, Lcom/google/android/exoplayer2/extractor/f/e;->b:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1066
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/util/u;ILcom/google/android/exoplayer2/extractor/f/m;)V

    return-void
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;)J
    .locals 2

    const/16 v0, 0x8

    .line 696
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 697
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v0

    .line 698
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/f/e$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/f/e$b;",
            ">;I)",
            "Lcom/google/android/exoplayer2/extractor/f/e$b;"
        }
    .end annotation

    .line 921
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 925
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/f/e$b;

    return-object p0

    .line 927
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/f/e$b;

    return-object p0
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/f/a$a;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->e:Lcom/google/android/exoplayer2/extractor/f/k;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 489
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/f/a$a;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v7

    const v0, 0x6d766578

    .line 492
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/f/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/f/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/a$a;

    .line 493
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 495
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/a$a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move-wide v8, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    .line 497
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/a$a;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/a$b;

    .line 498
    iget v6, v4, Lcom/google/android/exoplayer2/extractor/f/a$b;->a:I

    const v10, 0x74726578

    if-ne v6, v10, :cond_1

    .line 499
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/util/u;)Landroid/util/Pair;

    move-result-object v4

    .line 500
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/c;

    invoke-virtual {v11, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 501
    :cond_1
    iget v6, v4, Lcom/google/android/exoplayer2/extractor/f/a$b;->a:I

    const v10, 0x6d656864

    if-ne v6, v10, :cond_2

    .line 502
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/f/e;->b(Lcom/google/android/exoplayer2/util/u;)J

    move-result-wide v8

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 507
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/extractor/r;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/r;-><init>()V

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    const/4 v10, 0x0

    new-instance v12, Lcom/google/android/exoplayer2/extractor/f/-$$Lambda$a5uFYaUeVQyW4_Cb1xe4BHO62Ng;

    invoke-direct {v12, p0}, Lcom/google/android/exoplayer2/extractor/f/-$$Lambda$a5uFYaUeVQyW4_Cb1xe4BHO62Ng;-><init>(Lcom/google/android/exoplayer2/extractor/f/e;)V

    move-object v3, p1

    move-wide v5, v8

    move v8, v0

    move v9, v10

    move-object v10, v12

    .line 508
    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/extractor/f/a$a;Lcom/google/android/exoplayer2/extractor/r;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    .line 517
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 518
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_6

    :goto_4
    if-ge v2, v0, :cond_5

    .line 521
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/n;

    .line 522
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    .line 523
    new-instance v4, Lcom/google/android/exoplayer2/extractor/f/e$b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/f/e;->H:Lcom/google/android/exoplayer2/extractor/j;

    iget v6, v3, Lcom/google/android/exoplayer2/extractor/f/k;->b:I

    .line 525
    invoke-interface {v5, v2, v6}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v5

    iget v6, v3, Lcom/google/android/exoplayer2/extractor/f/k;->a:I

    .line 527
    invoke-static {v11, v6}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/f/c;

    move-result-object v6

    invoke-direct {v4, v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/f/e$b;-><init>(Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/extractor/f/n;Lcom/google/android/exoplayer2/extractor/f/c;)V

    .line 528
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    iget v5, v3, Lcom/google/android/exoplayer2/extractor/f/k;->a:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 529
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/f/e;->A:J

    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/f/k;->e:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/f/e;->A:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 531
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->H:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    return-void

    .line 533
    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    :goto_6
    if-ge v2, v0, :cond_8

    .line 535
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/n;

    .line 536
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    .line 537
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    iget v5, v3, Lcom/google/android/exoplayer2/extractor/f/k;->a:I

    .line 538
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/e$b;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/f/k;->a:I

    .line 539
    invoke-static {v11, v3}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/f/c;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/google/android/exoplayer2/extractor/f/e$b;->a(Lcom/google/android/exoplayer2/extractor/f/n;Lcom/google/android/exoplayer2/extractor/f/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method private static b(Lcom/google/android/exoplayer2/extractor/f/a$a;Landroid/util/SparseArray;I[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/f/a$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/f/e$b;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const v0, 0x74666864

    .line 719
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/a$b;

    .line 720
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/util/u;Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/f/e$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 725
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 726
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/f/m;->r:J

    .line 727
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/f/m;->s:Z

    .line 728
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/f/e$b;->a()V

    const/4 v4, 0x1

    .line 14555
    iput-boolean v4, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->j:Z

    const v5, 0x74666474

    .line 730
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v5

    if-eqz v5, :cond_1

    and-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_1

    .line 732
    iget-object v1, v5, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/f/e;->c(Lcom/google/android/exoplayer2/util/u;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/f/m;->r:J

    .line 733
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/f/m;->s:Z

    goto :goto_0

    .line 735
    :cond_1
    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/f/m;->r:J

    .line 736
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/f/m;->s:Z

    .line 739
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/extractor/f/a$a;Lcom/google/android/exoplayer2/extractor/f/e$b;I)V

    .line 742
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget-object p2, v0, Lcom/google/android/exoplayer2/extractor/f/m;->a:Lcom/google/android/exoplayer2/extractor/f/c;

    .line 744
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/f/c;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/f/c;->a:I

    .line 743
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/f/k;->a(I)Lcom/google/android/exoplayer2/extractor/f/l;

    move-result-object p1

    const p2, 0x7361697a

    .line 746
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 748
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/l;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v1, p2, v0}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/extractor/f/l;Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/f/m;)V

    :cond_2
    const p2, 0x7361696f

    .line 751
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 753
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/f/m;)V

    :cond_3
    const p2, 0x73656e63

    .line 756
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 758
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 15070
    invoke-static {p2, v1, v0}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/util/u;ILcom/google/android/exoplayer2/extractor/f/m;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 761
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/f/l;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/extractor/f/a$a;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/f/m;)V

    .line 763
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/a$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge v1, p1, :cond_7

    .line 765
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/a$a;->c:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/f/a$b;

    .line 766
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/f/a$b;->a:I

    const v3, 0x75756964

    if-ne v2, v3, :cond_6

    .line 767
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-static {p2, v0, p3}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/f/m;[B)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/i;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 1244
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/f/e$b;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 1245
    iget-boolean v7, v6, Lcom/google/android/exoplayer2/extractor/f/m;->q:Z

    if-eqz v7, :cond_0

    iget-wide v7, v6, Lcom/google/android/exoplayer2/extractor/f/m;->d:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_0

    .line 1247
    iget-wide v2, v6, Lcom/google/android/exoplayer2/extractor/f/m;->d:J

    .line 1248
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/e$b;

    move-wide v10, v2

    move-object v2, v4

    move-wide v3, v10

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p1, 0x3

    .line 1252
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->s:I

    return-void

    .line 1255
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v0, v3

    if-ltz v0, :cond_3

    .line 1259
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 1260
    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 20177
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    .line 21169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 20177
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    .line 22127
    iget v3, v3, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 20177
    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 20178
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 20179
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/f/m;->q:Z

    return-void

    .line 1257
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic b()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 72
    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/e;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/f/e;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/u;)J
    .locals 2

    const/16 v0, 0x8

    .line 937
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 938
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v0

    .line 939
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/f/a$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->d:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/e;->k:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/extractor/f/a$a;Landroid/util/SparseArray;I[B)V

    .line 562
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/f/a$a;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 566
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/f/e$b;

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/extractor/f/e$b;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->z:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    .line 571
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_1

    .line 573
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/e$b;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/f/e;->z:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/f/e$b;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    :cond_1
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/f/e;->z:J

    :cond_2
    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1279
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->C:Lcom/google/android/exoplayer2/extractor/f/e$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_7

    .line 1281
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    const-wide v5, 0x7fffffffffffffffL

    .line 22456
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v7

    move-wide v8, v5

    const/4 v6, 0x0

    move-object v5, v3

    :goto_0
    if-ge v6, v7, :cond_3

    .line 22458
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/extractor/f/e$b;

    .line 22555
    iget-boolean v11, v10, Lcom/google/android/exoplayer2/extractor/f/e$b;->j:Z

    if-nez v11, :cond_0

    .line 22459
    iget v11, v10, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    iget-object v12, v10, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget v12, v12, Lcom/google/android/exoplayer2/extractor/f/n;->b:I

    if-eq v11, v12, :cond_2

    .line 23555
    :cond_0
    iget-boolean v11, v10, Lcom/google/android/exoplayer2/extractor/f/e$b;->j:Z

    if-eqz v11, :cond_1

    .line 22461
    iget v11, v10, Lcom/google/android/exoplayer2/extractor/f/e$b;->h:I

    iget-object v12, v10, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v12, v12, Lcom/google/android/exoplayer2/extractor/f/m;->e:I

    if-eq v11, v12, :cond_2

    .line 22465
    :cond_1
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/extractor/f/e$b;->b()J

    move-result-wide v11

    cmp-long v13, v11, v8

    if-gez v13, :cond_2

    move-object v5, v10

    move-wide v8, v11

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_5

    .line 1285
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->x:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v5

    sub-long/2addr v2, v5

    long-to-int v3, v2

    if-ltz v3, :cond_4

    .line 1289
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/f/e;->a()V

    return v4

    .line 1287
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1294
    :cond_5
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/f/e$b;->b()J

    move-result-wide v6

    .line 1296
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v2, v6

    if-gez v2, :cond_6

    const-string v2, "FragmentedMp4Extractor"

    const-string v6, "Ignoring negative offset to sample data."

    .line 1299
    invoke-static {v2, v6}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1302
    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 1303
    iput-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->C:Lcom/google/android/exoplayer2/extractor/f/e$b;

    move-object v2, v5

    .line 1305
    :cond_7
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->s:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v6, :cond_f

    .line 23651
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->j:Z

    if-nez v5, :cond_8

    .line 23652
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/f/n;->d:[I

    iget v9, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    aget v5, v5, v9

    goto :goto_1

    .line 23653
    :cond_8
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/f/m;->i:[I

    iget v9, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    aget v5, v5, v9

    .line 1306
    :goto_1
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    .line 1308
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    iget v9, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->i:I

    if-ge v5, v9, :cond_c

    .line 1309
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 23797
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/f/e$b;->d()Lcom/google/android/exoplayer2/extractor/f/l;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 23802
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    .line 23803
    iget v5, v1, Lcom/google/android/exoplayer2/extractor/f/l;->d:I

    if-eqz v5, :cond_9

    .line 23804
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/f/l;->d:I

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 23806
    :cond_9
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v5, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/extractor/f/m;->c(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23807
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1311
    :cond_a
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/f/e$b;->c()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1312
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->C:Lcom/google/android/exoplayer2/extractor/f/e$b;

    .line 1314
    :cond_b
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->s:I

    return v8

    .line 1318
    :cond_c
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/f/k;->g:I

    if-ne v5, v8, :cond_d

    .line 1320
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    .line 1321
    invoke-interface {v1, v9}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 1324
    :cond_d
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1326
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    const/4 v9, 0x7

    .line 1327
    invoke-virtual {v2, v5, v9}, Lcom/google/android/exoplayer2/extractor/f/e$b;->a(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    .line 1328
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/f/e;->l:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v5, v10}, Lcom/google/android/exoplayer2/audio/c;->a(ILcom/google/android/exoplayer2/util/u;)V

    .line 1329
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/f/e;->l:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v5, v10, v9}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1330
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    goto :goto_2

    .line 1332
    :cond_e
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    .line 1333
    invoke-virtual {v2, v5, v4}, Lcom/google/android/exoplayer2/extractor/f/e$b;->a(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    .line 1335
    :goto_2
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    .line 1336
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/f/e;->s:I

    .line 1337
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/f/e;->F:I

    .line 1340
    :cond_f
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    .line 1341
    iget-object v9, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    .line 24637
    iget-boolean v10, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->j:Z

    if-nez v10, :cond_10

    .line 24638
    iget-object v10, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/f/n;->f:[J

    iget v11, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    aget-wide v11, v10, v11

    goto :goto_3

    .line 24639
    :cond_10
    iget-object v10, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v11, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/extractor/f/m;->b(I)J

    move-result-wide v11

    .line 1343
    :goto_3
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/f/e;->m:Lcom/google/android/exoplayer2/util/ad;

    if-eqz v10, :cond_11

    .line 1344
    invoke-virtual {v10, v11, v12}, Lcom/google/android/exoplayer2/util/ad;->c(J)J

    move-result-wide v11

    :cond_11
    move-wide v14, v11

    .line 1346
    iget v10, v5, Lcom/google/android/exoplayer2/extractor/f/k;->j:I

    if-eqz v10, :cond_16

    .line 1349
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/f/e;->i:Lcom/google/android/exoplayer2/util/u;

    .line 25169
    iget-object v10, v10, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1350
    aput-byte v4, v10, v4

    .line 1351
    aput-byte v4, v10, v8

    const/4 v11, 0x2

    .line 1352
    aput-byte v4, v10, v11

    .line 1353
    iget v11, v5, Lcom/google/android/exoplayer2/extractor/f/k;->j:I

    add-int/2addr v11, v8

    .line 1354
    iget v12, v5, Lcom/google/android/exoplayer2/extractor/f/k;->j:I

    rsub-int/lit8 v12, v12, 0x4

    .line 1358
    :goto_4
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    if-ge v13, v6, :cond_17

    .line 1359
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->F:I

    if-nez v6, :cond_14

    .line 1361
    invoke-interface {v1, v10, v12, v11}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 1362
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->i:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1363
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->i:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v6

    if-lez v6, :cond_13

    add-int/lit8 v6, v6, -0x1

    .line 1367
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->F:I

    .line 1369
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->h:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1370
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->h:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v9, v6, v7}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1372
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->i:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v9, v6, v8}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1373
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->J:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v6, v6

    if-lez v6, :cond_12

    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v13, v10, v7

    .line 1375
    invoke-static {v6, v13}, Lcom/google/android/exoplayer2/util/s;->a(Ljava/lang/String;B)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    goto :goto_5

    :cond_12
    const/4 v6, 0x0

    :goto_5
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->G:Z

    .line 1376
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    .line 1377
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    add-int/2addr v6, v12

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    const/4 v6, 0x3

    goto :goto_4

    .line 1365
    :cond_13
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1380
    :cond_14
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/extractor/f/e;->G:Z

    if-eqz v13, :cond_15

    .line 1382
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/f/e;->j:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v13, v6}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 1383
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->j:Lcom/google/android/exoplayer2/util/u;

    .line 26169
    iget-object v6, v6, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1383
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/f/e;->F:I

    invoke-interface {v1, v6, v4, v13}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 1384
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->j:Lcom/google/android/exoplayer2/util/u;

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/f/e;->F:I

    invoke-interface {v9, v6, v13}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1385
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->F:I

    .line 1387
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/f/e;->j:Lcom/google/android/exoplayer2/util/u;

    .line 27169
    iget-object v13, v13, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1388
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/f/e;->j:Lcom/google/android/exoplayer2/util/u;

    .line 28127
    iget v7, v7, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 1388
    invoke-static {v13, v7}, Lcom/google/android/exoplayer2/util/s;->a([BI)I

    move-result v7

    .line 1390
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/f/e;->j:Lcom/google/android/exoplayer2/util/u;

    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "video/hevc"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1391
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->j:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 1392
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->j:Lcom/google/android/exoplayer2/util/u;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/f/e;->J:[Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v14, v15, v3, v7}, Lcom/google/android/exoplayer2/extractor/b;->a(JLcom/google/android/exoplayer2/util/u;[Lcom/google/android/exoplayer2/extractor/x;)V

    goto :goto_6

    .line 1395
    :cond_15
    invoke-interface {v9, v1, v6, v4}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result v6

    .line 1397
    :goto_6
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    .line 1398
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->F:I

    sub-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->F:I

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    goto/16 :goto_4

    .line 1402
    :cond_16
    :goto_7
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    if-ge v3, v5, :cond_17

    sub-int/2addr v5, v3

    .line 1403
    invoke-interface {v9, v1, v5, v4}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result v3

    .line 1404
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->E:I

    goto :goto_7

    .line 28660
    :cond_17
    iget-boolean v1, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->j:Z

    if-nez v1, :cond_18

    .line 28661
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/f/n;->g:[I

    iget v3, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    aget v1, v1, v3

    goto :goto_8

    .line 28662
    :cond_18
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/f/m;->l:[Z

    iget v3, v2, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_8

    :cond_19
    const/4 v1, 0x0

    .line 28663
    :goto_8
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/f/e$b;->d()Lcom/google/android/exoplayer2/extractor/f/l;

    move-result-object v3

    if-eqz v3, :cond_1a

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    :cond_1a
    move v12, v1

    .line 1412
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/f/e$b;->d()Lcom/google/android/exoplayer2/extractor/f/l;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1414
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/f/l;->c:Lcom/google/android/exoplayer2/extractor/x$a;

    goto :goto_9

    :cond_1b
    const/4 v1, 0x0

    .line 1417
    :goto_9
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/f/e;->D:I

    const/4 v3, 0x0

    move-wide v10, v14

    move-wide v5, v14

    move v14, v3

    move-object v15, v1

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 29429
    :cond_1c
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/f/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 29430
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/f/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/e$a;

    .line 29431
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->y:I

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/f/e$a;->b:I

    sub-int/2addr v3, v7

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->y:I

    .line 29432
    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/f/e$a;->a:J

    add-long v14, v5, v7

    .line 29433
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->m:Lcom/google/android/exoplayer2/util/ad;

    if-eqz v3, :cond_1d

    .line 29434
    invoke-virtual {v3, v14, v15}, Lcom/google/android/exoplayer2/util/ad;->c(J)J

    move-result-wide v14

    .line 29436
    :cond_1d
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->I:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v13, v3

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v13, :cond_1c

    aget-object v7, v3, v12

    const/4 v10, 0x1

    .line 29437
    iget v11, v1, Lcom/google/android/exoplayer2/extractor/f/e$a;->b:I

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/f/e;->y:I

    const/16 v16, 0x0

    move/from16 v17, v8

    move-wide v8, v14

    move/from16 v18, v12

    move/from16 v12, v17

    move/from16 v17, v13

    move-object/from16 v13, v16

    invoke-interface/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    add-int/lit8 v12, v18, 0x1

    move/from16 v13, v17

    goto :goto_a

    .line 1421
    :cond_1e
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/f/e$b;->c()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    .line 1422
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/f/e;->C:Lcom/google/android/exoplayer2/extractor/f/e$b;

    :cond_1f
    const/4 v1, 0x3

    .line 1424
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/f/e;->s:I

    const/4 v1, 0x1

    return v1
.end method

.method public static synthetic lambda$jFlk_laRqVUUJcTmnfBeVwAIvDU()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/f/e;->b()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 327
    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->s:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_10

    if-eq v2, v8, :cond_2

    if-eq v2, v5, :cond_1

    .line 340
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/f/e;->c(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v7

    .line 337
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/f/e;->b(Lcom/google/android/exoplayer2/extractor/i;)V

    goto :goto_0

    .line 8445
    :cond_2
    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    long-to-int v2, v9

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    sub-int/2addr v2, v9

    .line 8446
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/f/e;->w:Lcom/google/android/exoplayer2/util/u;

    if-eqz v9, :cond_e

    .line 9169
    iget-object v10, v9, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 8448
    invoke-interface {v1, v10, v6, v2}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 8449
    new-instance v2, Lcom/google/android/exoplayer2/extractor/f/a$b;

    iget v10, v0, Lcom/google/android/exoplayer2/extractor/f/e;->t:I

    invoke-direct {v2, v10, v9}, Lcom/google/android/exoplayer2/extractor/f/a$b;-><init>(ILcom/google/android/exoplayer2/util/u;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v9

    .line 9464
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 9465
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/f/a$a;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/extractor/f/a$a;->a(Lcom/google/android/exoplayer2/extractor/f/a$b;)V

    goto/16 :goto_7

    .line 9466
    :cond_3
    iget v11, v2, Lcom/google/android/exoplayer2/extractor/f/a$b;->a:I

    if-ne v11, v4, :cond_7

    .line 9467
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 10184
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 10185
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    .line 10186
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v3

    const/4 v4, 0x4

    .line 10188
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 10189
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v17

    if-nez v3, :cond_4

    .line 10193
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v11

    .line 10194
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v13

    goto :goto_1

    .line 10196
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v11

    .line 10197
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v13

    :goto_1
    add-long/2addr v9, v13

    move-wide/from16 v19, v11

    const-wide/32 v13, 0xf4240

    move-wide/from16 v11, v19

    move-wide/from16 v15, v17

    .line 10199
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v21

    .line 10202
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 10204
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v3

    .line 10205
    new-array v5, v3, [I

    .line 10206
    new-array v6, v3, [J

    .line 10207
    new-array v15, v3, [J

    .line 10208
    new-array v13, v3, [J

    move-wide/from16 v11, v21

    :goto_2
    if-ge v7, v3, :cond_6

    .line 10213
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v14

    const/high16 v16, -0x80000000

    and-int v16, v14, v16

    if-nez v16, :cond_5

    .line 10219
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v23

    const v16, 0x7fffffff

    and-int v14, v14, v16

    .line 10221
    aput v14, v5, v7

    .line 10222
    aput-wide v9, v6, v7

    .line 10226
    aput-wide v11, v13, v7

    add-long v19, v19, v23

    const-wide/32 v23, 0xf4240

    move-wide/from16 v11, v19

    move-object v8, v13

    move-wide/from16 v13, v23

    move-object v4, v15

    move-wide/from16 v15, v17

    .line 10228
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v11

    .line 10229
    aget-wide v13, v8, v7

    sub-long v13, v11, v13

    aput-wide v13, v4, v7

    const/4 v13, 0x4

    .line 10231
    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 10232
    aget v14, v5, v7

    int-to-long v14, v14

    add-long/2addr v9, v14

    add-int/lit8 v7, v7, 0x1

    move-object v15, v4

    move-object v13, v8

    const/4 v4, 0x4

    const/4 v8, 0x1

    goto :goto_2

    .line 10217
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v8, v13

    move-object v4, v15

    .line 10235
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/extractor/c;

    invoke-direct {v3, v5, v6, v4, v8}, Lcom/google/android/exoplayer2/extractor/c;-><init>([I[J[J[J)V

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 9468
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->B:J

    .line 9469
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->H:Lcom/google/android/exoplayer2/extractor/j;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/extractor/v;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    const/4 v2, 0x1

    .line 9470
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->K:Z

    goto/16 :goto_7

    .line 9471
    :cond_7
    iget v4, v2, Lcom/google/android/exoplayer2/extractor/f/a$b;->a:I

    if-ne v4, v3, :cond_f

    .line 9472
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 10606
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->I:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v3, v3

    if-eqz v3, :cond_f

    .line 10609
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 10610
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    .line 10611
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_9

    const/4 v6, 0x1

    if-eq v3, v6, :cond_8

    .line 10644
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Skipping unsupported emsg version: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentedMp4Extractor"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 10634
    :cond_8
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v14

    .line 10636
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v16

    .line 10638
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v8

    .line 10639
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v10

    .line 13513
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->s()Ljava/lang/String;

    move-result-object v3

    .line 10640
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 14513
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->s()Ljava/lang/String;

    move-result-object v6

    .line 10641
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-wide/from16 v8, v16

    move-wide v10, v4

    goto :goto_4

    .line 11513
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->s()Ljava/lang/String;

    move-result-object v3

    .line 10621
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12513
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->s()Ljava/lang/String;

    move-result-object v6

    .line 10622
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 10623
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v14

    .line 10625
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v16

    .line 10626
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/f/e;->B:J

    cmp-long v10, v8, v4

    if-eqz v10, :cond_a

    add-long v8, v8, v16

    move-wide/from16 v18, v8

    goto :goto_3

    :cond_a
    move-wide/from16 v18, v4

    .line 10630
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v8

    .line 10631
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v10

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-wide/from16 v10, v16

    move-wide/from16 v8, v18

    .line 10648
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v3

    new-array v3, v3, [B

    .line 10649
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v6

    invoke-virtual {v2, v3, v7, v6}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 10650
    new-instance v2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object/from16 v20, v2

    move-object/from16 v27, v3

    invoke-direct/range {v20 .. v27}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 10651
    new-instance v3, Lcom/google/android/exoplayer2/util/u;

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->n:Lcom/google/android/exoplayer2/metadata/emsg/b;

    .line 10652
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/metadata/emsg/b;->a(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    .line 10653
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v2

    .line 10656
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->I:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v12, v6

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_b

    aget-object v14, v6, v13

    .line 10657
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 10658
    invoke-interface {v14, v3, v2}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    cmp-long v3, v8, v4

    if-nez v3, :cond_c

    .line 10665
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->q:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/f/e$a;

    invoke-direct {v4, v10, v11, v2}, Lcom/google/android/exoplayer2/extractor/f/e$a;-><init>(JI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 10667
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->y:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->y:I

    goto :goto_7

    .line 10669
    :cond_c
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->m:Lcom/google/android/exoplayer2/util/ad;

    if-eqz v3, :cond_d

    .line 10670
    invoke-virtual {v3, v8, v9}, Lcom/google/android/exoplayer2/util/ad;->c(J)J

    move-result-wide v8

    .line 10672
    :cond_d
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->I:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v4, v3

    :goto_6
    if-ge v7, v4, :cond_f

    aget-object v12, v3, v7

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide v13, v8

    move/from16 v16, v2

    .line 10673
    invoke-interface/range {v12 .. v18}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 8451
    :cond_e
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 8453
    :cond_f
    :goto_7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/f/e;->a(J)V

    goto/16 :goto_0

    .line 3353
    :cond_10
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    if-nez v2, :cond_12

    .line 3355
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->o:Lcom/google/android/exoplayer2/util/u;

    .line 4169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v8, 0x1

    .line 3355
    invoke-interface {v1, v2, v7, v6, v8}, Lcom/google/android/exoplayer2/extractor/i;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_10

    .line 3358
    :cond_11
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    .line 3359
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->o:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 3360
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->o:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    .line 3361
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->o:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->t:I

    .line 3364
    :cond_12
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_13

    .line 3367
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->o:Lcom/google/android/exoplayer2/util/u;

    .line 5169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3367
    invoke-interface {v1, v2, v6, v6}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 3368
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    .line 3369
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->o:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    goto :goto_8

    :cond_13
    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_15

    .line 3373
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_14

    .line 3374
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 3375
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/f/a$a;

    iget-wide v8, v2, Lcom/google/android/exoplayer2/extractor/f/a$a;->b:J

    :cond_14
    cmp-long v2, v8, v10

    if-eqz v2, :cond_15

    .line 3378
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    .line 3382
    :cond_15
    :goto_8
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    int-to-long v10, v2

    cmp-long v2, v8, v10

    if-ltz v2, :cond_24

    .line 3386
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v8

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    int-to-long v10, v2

    sub-long/2addr v8, v10

    .line 3387
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->t:I

    const v10, 0x6d646174

    const v11, 0x6d6f6f66

    if-eq v2, v11, :cond_16

    if-ne v2, v10, :cond_17

    .line 3388
    :cond_16
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->K:Z

    if-nez v2, :cond_17

    .line 3390
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->H:Lcom/google/android/exoplayer2/extractor/j;

    new-instance v12, Lcom/google/android/exoplayer2/extractor/v$b;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/f/e;->A:J

    invoke-direct {v12, v13, v14, v8, v9}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(JJ)V

    invoke-interface {v2, v12}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    const/4 v2, 0x1

    .line 3391
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->K:Z

    .line 3395
    :cond_17
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->t:I

    if-ne v2, v11, :cond_18

    .line 3397
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v2, :cond_18

    .line 3399
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/extractor/f/e$b;

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 3400
    iput-wide v8, v13, Lcom/google/android/exoplayer2/extractor/f/m;->b:J

    .line 3401
    iput-wide v8, v13, Lcom/google/android/exoplayer2/extractor/f/m;->d:J

    .line 3402
    iput-wide v8, v13, Lcom/google/android/exoplayer2/extractor/f/m;->c:J

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 3406
    :cond_18
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->t:I

    const/4 v12, 0x0

    if-ne v2, v10, :cond_19

    .line 3407
    iput-object v12, v0, Lcom/google/android/exoplayer2/extractor/f/e;->C:Lcom/google/android/exoplayer2/extractor/f/e$b;

    .line 3408
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    add-long/2addr v8, v2

    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/f/e;->x:J

    .line 3409
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->s:I

    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_f

    :cond_19
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_1b

    const v5, 0x7472616b

    if-eq v2, v5, :cond_1b

    const v5, 0x6d646961

    if-eq v2, v5, :cond_1b

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_1b

    const v5, 0x7374626c

    if-eq v2, v5, :cond_1b

    if-eq v2, v11, :cond_1b

    const v5, 0x74726166

    if-eq v2, v5, :cond_1b

    const v5, 0x6d766578

    if-eq v2, v5, :cond_1b

    const v5, 0x65647473

    if-ne v2, v5, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v5, 0x0

    goto :goto_c

    :cond_1b
    :goto_b
    const/4 v5, 0x1

    :goto_c
    if-eqz v5, :cond_1d

    .line 3414
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 3415
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/f/a$a;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->t:I

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/exoplayer2/extractor/f/a$a;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 3416
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c

    .line 3417
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/f/e;->a(J)V

    goto :goto_a

    .line 3420
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/f/e;->a()V

    goto :goto_a

    :cond_1d
    const v5, 0x68646c72    # 4.3148E24f

    if-eq v2, v5, :cond_1f

    const v5, 0x6d646864

    if-eq v2, v5, :cond_1f

    const v5, 0x6d766864

    if-eq v2, v5, :cond_1f

    if-eq v2, v4, :cond_1f

    const v4, 0x73747364

    if-eq v2, v4, :cond_1f

    const v4, 0x73747473

    if-eq v2, v4, :cond_1f

    const v4, 0x63747473

    if-eq v2, v4, :cond_1f

    const v4, 0x73747363

    if-eq v2, v4, :cond_1f

    const v4, 0x7374737a

    if-eq v2, v4, :cond_1f

    const v4, 0x73747a32

    if-eq v2, v4, :cond_1f

    const v4, 0x7374636f

    if-eq v2, v4, :cond_1f

    const v4, 0x636f3634

    if-eq v2, v4, :cond_1f

    const v4, 0x73747373

    if-eq v2, v4, :cond_1f

    const v4, 0x74666474

    if-eq v2, v4, :cond_1f

    const v4, 0x74666864

    if-eq v2, v4, :cond_1f

    const v4, 0x746b6864

    if-eq v2, v4, :cond_1f

    const v4, 0x74726578

    if-eq v2, v4, :cond_1f

    const v4, 0x7472756e

    if-eq v2, v4, :cond_1f

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_1f

    const v4, 0x7361697a

    if-eq v2, v4, :cond_1f

    const v4, 0x7361696f

    if-eq v2, v4, :cond_1f

    const v4, 0x73656e63

    if-eq v2, v4, :cond_1f

    const v4, 0x75756964

    if-eq v2, v4, :cond_1f

    const v4, 0x73626770

    if-eq v2, v4, :cond_1f

    const v4, 0x73677064

    if-eq v2, v4, :cond_1f

    const v4, 0x656c7374

    if-eq v2, v4, :cond_1f

    const v4, 0x6d656864

    if-eq v2, v4, :cond_1f

    if-ne v2, v3, :cond_1e

    goto :goto_d

    :cond_1e
    const/4 v2, 0x0

    goto :goto_e

    :cond_1f
    :goto_d
    const/4 v2, 0x1

    :goto_e
    const-wide/32 v3, 0x7fffffff

    if-eqz v2, :cond_22

    .line 3423
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->v:I

    if-ne v2, v6, :cond_21

    .line 3426
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    cmp-long v2, v8, v3

    if-gtz v2, :cond_20

    .line 3429
    new-instance v2, Lcom/google/android/exoplayer2/util/u;

    long-to-int v3, v8

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 3430
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/e;->o:Lcom/google/android/exoplayer2/util/u;

    .line 7169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 8169
    iget-object v4, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3430
    invoke-static {v3, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3431
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->w:Lcom/google/android/exoplayer2/util/u;

    const/4 v2, 0x1

    .line 3432
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->s:I

    goto :goto_f

    .line 3427
    :cond_20
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3424
    :cond_21
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3434
    :cond_22
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/f/e;->u:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_23

    .line 3437
    iput-object v12, v0, Lcom/google/android/exoplayer2/extractor/f/e;->w:Lcom/google/android/exoplayer2/util/u;

    const/4 v2, 0x1

    .line 3438
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/f/e;->s:I

    :goto_f
    const/4 v7, 0x1

    :goto_10
    if-nez v7, :cond_0

    const/4 v1, -0x1

    return v1

    .line 3435
    :cond_23
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3383
    :cond_24
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final a(Lcom/google/android/exoplayer2/extractor/f/k;)Lcom/google/android/exoplayer2/extractor/f/k;
    .locals 0

    return-object p1
.end method

.method public final a(JJ)V
    .locals 2

    .line 308
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/e$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/f/e$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 313
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/f/e;->y:I

    .line 314
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/f/e;->z:J

    .line 315
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->p:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 316
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/e;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 12

    .line 281
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->H:Lcom/google/android/exoplayer2/extractor/j;

    .line 282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/e;->a()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/x;

    .line 2582
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->I:[Lcom/google/android/exoplayer2/extractor/x;

    .line 2584
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->r:Lcom/google/android/exoplayer2/extractor/x;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2587
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/f/e;->d:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 2588
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/f/e;->H:Lcom/google/android/exoplayer2/extractor/j;

    const/16 v6, 0x65

    const/4 v7, 0x5

    .line 2589
    invoke-interface {v5, v4, v7}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    const/16 v4, 0x65

    .line 2591
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->I:[Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/af;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/extractor/x;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->I:[Lcom/google/android/exoplayer2/extractor/x;

    .line 2592
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 2593
    sget-object v6, Lcom/google/android/exoplayer2/extractor/f/e;->c:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2596
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/x;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->J:[Lcom/google/android/exoplayer2/extractor/x;

    const/4 v0, 0x0

    .line 2597
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->J:[Lcom/google/android/exoplayer2/extractor/x;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2598
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->H:Lcom/google/android/exoplayer2/extractor/j;

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x3

    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v1

    .line 2599
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/e;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 2600
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/e;->J:[Lcom/google/android/exoplayer2/extractor/x;

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    goto :goto_2

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->e:Lcom/google/android/exoplayer2/extractor/f/k;

    if-eqz v0, :cond_4

    .line 285
    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/e$b;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/f/k;->b:I

    .line 287
    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/e;->e:Lcom/google/android/exoplayer2/extractor/f/k;

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/k;[J[II[J[IJ)V

    new-instance v3, Lcom/google/android/exoplayer2/extractor/f/c;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/google/android/exoplayer2/extractor/f/c;-><init>(IIII)V

    invoke-direct {v1, p1, v0, v3}, Lcom/google/android/exoplayer2/extractor/f/e$b;-><init>(Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/extractor/f/n;Lcom/google/android/exoplayer2/extractor/f/c;)V

    .line 301
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->H:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    :cond_4
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/f/j;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result p1

    return p1
.end method
