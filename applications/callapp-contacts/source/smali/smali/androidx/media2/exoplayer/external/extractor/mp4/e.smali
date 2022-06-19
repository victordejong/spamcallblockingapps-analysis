.class public final Landroidx/media2/exoplayer/external/extractor/mp4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/e$b;,
        Landroidx/media2/exoplayer/external/extractor/mp4/e$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;

.field private static final b:[B

.field private static final c:Landroidx/media2/exoplayer/external/Format;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Landroidx/media2/exoplayer/external/extractor/i;

.field private K:[Landroidx/media2/exoplayer/external/extractor/q;

.field private L:[Landroidx/media2/exoplayer/external/extractor/q;

.field private M:Z

.field private final d:I

.field private final e:Landroidx/media2/exoplayer/external/extractor/mp4/l;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroidx/media2/exoplayer/external/util/p;

.field private final j:Landroidx/media2/exoplayer/external/util/p;

.field private final k:Landroidx/media2/exoplayer/external/util/p;

.field private final l:[B

.field private final m:Landroidx/media2/exoplayer/external/util/p;

.field private final n:Landroidx/media2/exoplayer/external/util/z;

.field private final o:Landroidx/media2/exoplayer/external/metadata/emsg/b;

.field private final p:Landroidx/media2/exoplayer/external/util/p;

.field private final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroidx/media2/exoplayer/external/extractor/q;

.field private t:I

.field private u:I

.field private v:J

.field private w:I

.field private x:Landroidx/media2/exoplayer/external/util/p;

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/f;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a:Landroidx/media2/exoplayer/external/extractor/j;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 121
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b:[B

    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    const-wide v2, 0x7fffffffffffffffL

    .line 124
    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->c:Landroidx/media2/exoplayer/external/Format;

    return-void

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

    .line 189
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;-><init>(ILandroidx/media2/exoplayer/external/util/z;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/z;)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;-><init>(ILandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/drm/DrmInitData;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/drm/DrmInitData;)V
    .locals 6

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/mp4/e;-><init>(ILandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/util/z;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/l;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 239
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mp4/e;-><init>(ILandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;Landroidx/media2/exoplayer/external/extractor/q;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;Landroidx/media2/exoplayer/external/extractor/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/util/z;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/l;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/extractor/q;",
            ")V"
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    .line 263
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->d:I

    .line 264
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->n:Landroidx/media2/exoplayer/external/util/z;

    .line 265
    iput-object p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->e:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    .line 266
    iput-object p4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->g:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 267
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->f:Ljava/util/List;

    .line 268
    iput-object p6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->s:Landroidx/media2/exoplayer/external/extractor/q;

    .line 269
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/emsg/b;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/metadata/emsg/b;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->o:Landroidx/media2/exoplayer/external/metadata/emsg/b;

    .line 270
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->p:Landroidx/media2/exoplayer/external/util/p;

    .line 271
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    sget-object p3, Landroidx/media2/exoplayer/external/util/n;->a:[B

    invoke-direct {p1, p3}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->i:Landroidx/media2/exoplayer/external/util/p;

    .line 272
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->j:Landroidx/media2/exoplayer/external/util/p;

    .line 273
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->k:Landroidx/media2/exoplayer/external/util/p;

    new-array p1, p2, [B

    .line 274
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->l:[B

    .line 275
    new-instance p2, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->m:Landroidx/media2/exoplayer/external/util/p;

    .line 276
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    .line 277
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->r:Ljava/util/ArrayDeque;

    .line 278
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 279
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->B:J

    .line 280
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->A:J

    .line 281
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->C:J

    .line 282
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b()V

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/mp4/e$b;IJILandroidx/media2/exoplayer/external/util/p;I)I
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p5

    .line 942
    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 943
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    const v3, 0xffffff

    and-int/2addr v1, v3

    .line 946
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    .line 947
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    .line 948
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->a:Landroidx/media2/exoplayer/external/extractor/mp4/c;

    .line 950
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->h:[I

    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v6

    aput v6, v5, p1

    .line 951
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->g:[J

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->c:J

    aput-wide v6, v5, p1

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    .line 953
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->g:[J

    aget-wide v6, v5, p1

    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, p1

    :cond_0
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 957
    :goto_0
    iget v8, v4, Landroidx/media2/exoplayer/external/extractor/mp4/c;->d:I

    if-eqz v5, :cond_2

    .line 959
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v8

    :cond_2
    and-int/lit16 v9, v1, 0x100

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 974
    :goto_4
    iget-object v12, v3, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_7

    iget-object v12, v3, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    array-length v12, v12

    if-ne v12, v7, :cond_7

    iget-object v12, v3, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    aget-wide v15, v12, v6

    cmp-long v12, v15, v13

    if-nez v12, :cond_7

    .line 976
    iget-object v12, v3, Landroidx/media2/exoplayer/external/extractor/mp4/l;->i:[J

    aget-wide v13, v12, v6

    const-wide/16 v15, 0x3e8

    iget-wide v6, v3, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    move-wide/from16 v17, v6

    .line 977
    invoke-static/range {v13 .. v18}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v13

    .line 981
    :cond_7
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->i:[I

    .line 982
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->j:[I

    .line 983
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->k:[J

    .line 984
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->l:[Z

    .line 986
    iget v2, v3, Landroidx/media2/exoplayer/external/extractor/mp4/l;->b:I

    move/from16 v17, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_8

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    .line 989
    :goto_5
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->h:[I

    aget v8, v8, p1

    add-int v8, p6, v8

    .line 990
    iget-wide v2, v3, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    move-wide/from16 v24, v13

    move-object v14, v12

    if-lez p1, :cond_9

    .line 991
    iget-wide v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->s:J

    goto :goto_6

    :cond_9
    move-wide/from16 v12, p2

    :goto_6
    move-wide/from16 p1, v12

    move/from16 v12, p6

    :goto_7
    if-ge v12, v8, :cond_11

    if-eqz v9, :cond_a

    .line 994
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v13

    goto :goto_8

    .line 995
    :cond_a
    iget v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/c;->b:I

    :goto_8
    if-eqz v10, :cond_b

    .line 996
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v18

    move/from16 v26, v9

    move/from16 v9, v18

    goto :goto_9

    :cond_b
    move/from16 v26, v9

    iget v9, v4, Landroidx/media2/exoplayer/external/extractor/mp4/c;->c:I

    :goto_9
    if-nez v12, :cond_c

    if-eqz v5, :cond_c

    move/from16 v27, v5

    move/from16 v5, v17

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_d

    .line 998
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v18

    move/from16 v27, v5

    move/from16 v5, v18

    goto :goto_a

    :cond_d
    move/from16 v27, v5

    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/c;->d:I

    :goto_a
    if-eqz v1, :cond_e

    move/from16 v28, v1

    .line 1005
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    move/from16 v29, v10

    move/from16 v30, v11

    int-to-long v10, v1

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    .line 1006
    div-long/2addr v10, v2

    long-to-int v1, v10

    aput v1, v7, v12

    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    move/from16 v28, v1

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v1, 0x0

    .line 1009
    aput v1, v7, v12

    :goto_b
    const-wide/16 v20, 0x3e8

    move-wide/from16 v18, p1

    move-wide/from16 v22, v2

    .line 1012
    invoke-static/range {v18 .. v23}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v10

    sub-long v10, v10, v24

    aput-wide v10, v15, v12

    .line 1013
    aput v9, v6, v12

    shr-int/lit8 v5, v5, 0x10

    const/4 v9, 0x1

    and-int/2addr v5, v9

    if-nez v5, :cond_10

    if-eqz v16, :cond_f

    if-nez v12, :cond_10

    :cond_f
    const/4 v5, 0x1

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    .line 1014
    :goto_c
    aput-boolean v5, v14, v12

    int-to-long v10, v13

    move-wide/from16 v18, v2

    move-wide/from16 v1, p1

    add-long/2addr v1, v10

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 p1, v1

    move-wide/from16 v2, v18

    move/from16 v9, v26

    move/from16 v5, v27

    move/from16 v1, v28

    move/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_7

    :cond_11
    move-wide/from16 v1, p1

    .line 1018
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->s:J

    return v8
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/c;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 684
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 685
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v0

    .line 686
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 687
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v2

    .line 688
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v3

    .line 689
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result p0

    .line 691
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mp4/c;

    invoke-direct {v4, v1, v2, v3, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/c;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/a$b;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;"
        }
    .end annotation

    .line 1422
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1424
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    .line 1425
    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->a:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 1427
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    :cond_0
    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 1430
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/j;->a([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 1432
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1434
    :cond_1
    new-instance v6, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    .line 1438
    :cond_4
    new-instance p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static a(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/c;",
            ">;I)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/c;"
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

    check-cast p0, Landroidx/media2/exoplayer/external/extractor/mp4/c;

    return-object p0

    .line 556
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/extractor/mp4/c;

    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/extractor/mp4/c;

    return-object p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;Landroid/util/SparseArray;)Landroidx/media2/exoplayer/external/extractor/mp4/e$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/e$b;",
            ">;)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/e$b;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 876
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 877
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 879
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    .line 880
    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 885
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v1

    .line 886
    iget-object v3, p1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iput-wide v1, v3, Landroidx/media2/exoplayer/external/extractor/mp4/n;->c:J

    .line 887
    iget-object v3, p1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iput-wide v1, v3, Landroidx/media2/exoplayer/external/extractor/mp4/n;->d:J

    .line 890
    :cond_1
    iget-object v1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->d:Landroidx/media2/exoplayer/external/extractor/mp4/c;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 893
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v2, v1, Landroidx/media2/exoplayer/external/extractor/mp4/c;->a:I

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 895
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v3

    goto :goto_1

    :cond_3
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/mp4/c;->b:I

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    .line 897
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v4

    goto :goto_2

    :cond_4
    iget v4, v1, Landroidx/media2/exoplayer/external/extractor/mp4/c;->c:I

    :goto_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 899
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result p0

    goto :goto_3

    :cond_5
    iget p0, v1, Landroidx/media2/exoplayer/external/extractor/mp4/c;->d:I

    .line 900
    :goto_3
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/c;

    invoke-direct {v1, v2, v3, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/c;-><init>(IIII)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->a:Landroidx/media2/exoplayer/external/extractor/mp4/c;

    return-object p1
.end method

.method private a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 450
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->b:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 451
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)V

    goto :goto_0

    .line 453
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b()V

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 470
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->a:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    .line 471
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)V

    return-void

    .line 472
    :cond_0
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->a:I

    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    .line 473
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->c(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)V

    return-void

    .line 474
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)V

    :cond_2
    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/a$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/e$b;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 709
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    .line 711
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->a:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    .line 712
    invoke-static {v2, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroidx/media2/exoplayer/external/extractor/mp4/e$b;JI)V
    .locals 13

    move-object v7, p1

    move-object v0, p0

    .line 777
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c:Ljava/util/List;

    .line 778
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const v10, 0x7472756e

    if-ge v1, v9, :cond_1

    .line 780
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    .line 781
    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->a:I

    if-ne v5, v10, :cond_0

    .line 782
    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    const/16 v5, 0xc

    .line 783
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 784
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v4

    if-lez v4, :cond_0

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 791
    :cond_1
    iput v0, v7, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->g:I

    .line 792
    iput v0, v7, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->f:I

    .line 793
    iput v0, v7, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->e:I

    .line 794
    iget-object v1, v7, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/n;->a(II)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_3

    .line 799
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    .line 800
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->a:I

    if-ne v2, v10, :cond_2

    add-int/lit8 v12, v1, 0x1

    .line 801
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    move-object v0, p1

    move-wide v2, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/extractor/mp4/e$b;IJILandroidx/media2/exoplayer/external/util/p;I)I

    move-result v6

    move v1, v12

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/mp4/m;Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/extractor/mp4/n;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 809
    iget p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/m;->d:I

    const/16 v0, 0x8

    .line 810
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 811
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 814
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 816
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    .line 818
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v1

    .line 819
    iget v3, p2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->f:I

    if-ne v1, v3, :cond_5

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 825
    iget-object v0, p2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->n:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 827
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 829
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

    .line 834
    iget-object p0, p2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->n:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 836
    :cond_4
    invoke-virtual {p2, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/n;->a(I)V

    return-void

    .line 820
    :cond_5
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    iget p1, p2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->f:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;ILandroidx/media2/exoplayer/external/extractor/mp4/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1044
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1045
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1054
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v1

    .line 1055
    iget v2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->f:I

    if-ne v1, v2, :cond_1

    .line 1059
    iget-object v2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1060
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/n;->a(I)V

    .line 1061
    invoke-virtual {p2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/n;->a(Landroidx/media2/exoplayer/external/util/p;)V

    return-void

    .line 1056
    :cond_1
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    iget p1, p2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->f:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1050
    :cond_2
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/extractor/mp4/n;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 846
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 847
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 850
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 853
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 859
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v0

    .line 860
    iget-wide v1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/n;->d:J

    if-nez v0, :cond_1

    .line 861
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/n;->d:J

    return-void

    .line 856
    :cond_2
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const/16 p1, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/extractor/mp4/n;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1024
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 1025
    invoke-virtual {p0, p2, v0, v1}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 1028
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1035
    :cond_0
    invoke-static {p0, v1, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/util/p;ILandroidx/media2/exoplayer/external/extractor/mp4/n;)V

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/util/p;Ljava/lang/String;Landroidx/media2/exoplayer/external/extractor/mp4/n;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0x8

    .line 1066
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1067
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v4

    .line 1068
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v5

    const v6, 0x73656967

    if-eq v5, v6, :cond_0

    return-void

    .line 1072
    :cond_0
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v4

    const/4 v5, 0x4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    .line 1073
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1075
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 1079
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1080
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v0

    .line 1081
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    if-eq v3, v6, :cond_2

    return-void

    .line 1085
    :cond_2
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 1087
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1088
    :cond_3
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    .line 1091
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1093
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v3

    const-wide/16 v8, 0x1

    cmp-long v0, v3, v8

    if-nez v0, :cond_9

    .line 1097
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1098
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v13, v3, 0x4

    and-int/lit8 v14, v0, 0xf

    .line 1101
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v7, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_7

    return-void

    .line 1105
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v11

    const/16 v0, 0x10

    new-array v12, v0, [B

    .line 1107
    invoke-virtual {v1, v12, v3, v0}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    const/4 v0, 0x0

    if-nez v11, :cond_8

    .line 1110
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    .line 1111
    new-array v4, v0, [B

    .line 1112
    invoke-virtual {v1, v4, v3, v0}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    move-object v15, v4

    goto :goto_2

    :cond_8
    move-object v15, v0

    .line 1114
    :goto_2
    iput-boolean v7, v2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->m:Z

    .line 1115
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/m;

    const/4 v9, 0x1

    move-object v8, v0

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v15}, Landroidx/media2/exoplayer/external/extractor/mp4/m;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->o:Landroidx/media2/exoplayer/external/extractor/mp4/m;

    return-void

    .line 1094
    :cond_9
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_a
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 73
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/e;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/e;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/p;)J
    .locals 2

    const/16 v0, 0x8

    .line 699
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 700
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v0

    .line 701
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 702
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/e$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/e$b;",
            ">;I)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/e$b;"
        }
    .end annotation

    .line 907
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 911
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    return-object p0

    .line 913
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    return-object p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 346
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->t:I

    .line 347
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    return-void
.end method

.method private b(Landroidx/media2/exoplayer/external/extractor/h;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 1189
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    .line 1190
    iget-boolean v7, v6, Landroidx/media2/exoplayer/external/extractor/mp4/n;->r:Z

    if-eqz v7, :cond_0

    iget-wide v7, v6, Landroidx/media2/exoplayer/external/extractor/mp4/n;->d:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_0

    .line 1192
    iget-wide v2, v6, Landroidx/media2/exoplayer/external/extractor/mp4/n;->d:J

    .line 1193
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    move-wide v10, v2

    move-object v2, v4

    move-wide v3, v10

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p1, 0x3

    .line 1197
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->t:I

    return-void

    .line 1200
    :cond_2
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v0, v3

    if-ltz v0, :cond_3

    .line 1204
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 1205
    iget-object v0, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    .line 12179
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->q:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->p:I

    invoke-interface {p1, v2, v1, v3}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 12180
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->q:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 12181
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->r:Z

    return-void

    .line 1202
    :cond_3
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 480
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->e:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Landroidx/media2/exoplayer/external/util/a;->b(ZLjava/lang/Object;)V

    .line 482
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->g:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 483
    :cond_1
    iget-object v2, v1, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c:Ljava/util/List;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v2

    :goto_1
    const v5, 0x6d766578

    .line 486
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    move-result-object v5

    .line 487
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 489
    iget-object v8, v5, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-wide v13, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    .line 491
    iget-object v7, v5, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    .line 492
    iget v9, v7, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->a:I

    const v10, 0x74726578

    if-ne v9, v10, :cond_2

    .line 493
    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/util/p;)Landroid/util/Pair;

    move-result-object v7

    .line 494
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroidx/media2/exoplayer/external/extractor/mp4/c;

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 495
    :cond_2
    iget v9, v7, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->a:I

    const v10, 0x6d656864

    if-ne v9, v10, :cond_3

    .line 496
    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b(Landroidx/media2/exoplayer/external/util/p;)J

    move-result-wide v9

    move-wide v13, v9

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 501
    :cond_4
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 502
    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_8

    .line 504
    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    .line 505
    iget v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->a:I

    const v7, 0x7472616b

    if-ne v6, v7, :cond_6

    const v6, 0x6d766864

    .line 510
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v6

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->d:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    const/16 v17, 0x0

    move-wide v7, v13

    move-object v9, v2

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    .line 508
    invoke-static/range {v5 .. v11}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroidx/media2/exoplayer/external/extractor/mp4/a$b;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Landroidx/media2/exoplayer/external/extractor/mp4/l;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 516
    iget v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/l;->a:I

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    move/from16 v18, v10

    move/from16 v16, v11

    :cond_7
    :goto_6
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v16

    goto :goto_4

    .line 521
    :cond_8
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 522
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    :goto_7
    if-ge v4, v1, :cond_9

    .line 525
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;

    .line 526
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->J:Landroidx/media2/exoplayer/external/extractor/i;

    iget v6, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->b:I

    invoke-interface {v5, v4, v6}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;-><init>(Landroidx/media2/exoplayer/external/extractor/q;)V

    .line 527
    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->a:I

    invoke-static {v12, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/c;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a(Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/extractor/mp4/c;)V

    .line 528
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    iget v6, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->a:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 529
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->B:J

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->e:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->B:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 531
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->c()V

    .line 532
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->J:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    return-void

    .line 534
    :cond_a
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    :goto_9
    if-ge v4, v1, :cond_c

    .line 536
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;

    .line 537
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->a:I

    .line 538
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->a:I

    .line 539
    invoke-static {v12, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/c;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a(Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/extractor/mp4/c;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    return-void
.end method

.method private static b(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/a$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/e$b;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const v0, 0x74666864

    .line 722
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v0

    .line 723
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/util/p;Landroid/util/SparseArray;)Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 728
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    .line 729
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->s:J

    .line 730
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a()V

    const v3, 0x74666474

    .line 732
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_1

    .line 734
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v1

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->c(Landroidx/media2/exoplayer/external/util/p;)J

    move-result-wide v1

    .line 737
    :cond_1
    invoke-static {p0, p1, v1, v2, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroidx/media2/exoplayer/external/extractor/mp4/e$b;JI)V

    .line 739
    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iget-object p2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->a:Landroidx/media2/exoplayer/external/extractor/mp4/c;

    iget p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/c;->a:I

    .line 740
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/l;->a(I)Landroidx/media2/exoplayer/external/extractor/mp4/m;

    move-result-object p1

    const p2, 0x7361697a

    .line 742
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 744
    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/extractor/mp4/m;Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/extractor/mp4/n;)V

    :cond_2
    const p2, 0x7361696f

    .line 747
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 749
    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/extractor/mp4/n;)V

    :cond_3
    const p2, 0x73656e63

    .line 752
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 754
    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 7039
    invoke-static {p2, v1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/util/p;ILandroidx/media2/exoplayer/external/extractor/mp4/n;)V

    :cond_4
    const p2, 0x73626770

    .line 757
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object p2

    const v2, 0x73677064

    .line 758
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v2

    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    .line 760
    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    if-eqz p1, :cond_5

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/m;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, v2, p1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/util/p;Ljava/lang/String;Landroidx/media2/exoplayer/external/extractor/mp4/n;)V

    .line 764
    :cond_6
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_8

    .line 766
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    .line 767
    iget v2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->a:I

    const v3, 0x75756964

    if-ne v2, v3, :cond_7

    .line 768
    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {p2, v0, p3}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/extractor/mp4/n;[B)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private static c(Landroidx/media2/exoplayer/external/util/p;)J
    .locals 2

    const/16 v0, 0x8

    .line 923
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 924
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v0

    .line 925
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 926
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method private c()V
    .locals 8

    .line 581
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->K:[Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/q;

    .line 582
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->K:[Landroidx/media2/exoplayer/external/extractor/q;

    .line 584
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->s:Landroidx/media2/exoplayer/external/extractor/q;

    if-eqz v3, :cond_0

    aput-object v3, v0, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 587
    :goto_0
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->d:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 588
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->J:Landroidx/media2/exoplayer/external/extractor/i;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    .line 589
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-interface {v6, v7, v5}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    .line 591
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->K:[Landroidx/media2/exoplayer/external/extractor/q;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/extractor/q;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->K:[Landroidx/media2/exoplayer/external/extractor/q;

    .line 593
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 594
    sget-object v6, Landroidx/media2/exoplayer/external/extractor/mp4/e;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v5, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 597
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->L:[Landroidx/media2/exoplayer/external/extractor/q;

    if-nez v0, :cond_3

    .line 598
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/q;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->L:[Landroidx/media2/exoplayer/external/extractor/q;

    .line 599
    :goto_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->L:[Landroidx/media2/exoplayer/external/extractor/q;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 600
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->J:Landroidx/media2/exoplayer/external/extractor/i;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v0

    .line 601
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 602
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->L:[Landroidx/media2/exoplayer/external/extractor/q;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private c(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->d:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->l:[B

    invoke-static {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroid/util/SparseArray;I[B)V

    .line 562
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->g:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 563
    :cond_0
    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c:Ljava/util/List;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 565
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 567
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 571
    :cond_1
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->A:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    .line 572
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_2

    .line 574
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->A:J

    invoke-virtual {v1, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 576
    :cond_2
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->A:J

    :cond_3
    return-void
.end method

.method private c(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1225
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->t:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v4, :cond_f

    .line 1226
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    if-nez v2, :cond_5

    .line 1227
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    const-wide v9, 0x7fffffffffffffffL

    .line 12403
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    move-object v13, v6

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_1

    .line 12405
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    .line 12406
    iget v15, v14, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->g:I

    iget-object v5, v14, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/n;->e:I

    if-eq v15, v5, :cond_0

    .line 12409
    iget-object v5, v14, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/n;->g:[J

    iget v15, v14, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->g:I

    aget-wide v16, v5, v15

    cmp-long v5, v16, v9

    if-gez v5, :cond_0

    move-object v13, v14

    move-wide/from16 v9, v16

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    if-nez v13, :cond_3

    .line 1231
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->y:J

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_2

    .line 1235
    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 1236
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b()V

    return v8

    .line 1233
    :cond_2
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1240
    :cond_3
    iget-object v2, v13, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->g:[J

    iget v5, v13, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->g:I

    aget-wide v9, v2, v5

    .line 1243
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v2, v9

    if-gez v2, :cond_4

    const-string v2, "FragmentedMp4Extractor"

    const-string v5, "Ignoring negative offset to sample data."

    .line 1246
    invoke-static {v2, v5}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1249
    :cond_4
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 1250
    iput-object v13, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    .line 1253
    :cond_5
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->i:[I

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->e:I

    aget v2, v2, v5

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    .line 1256
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->e:I

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->h:I

    if-ge v2, v5, :cond_9

    .line 1257
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 1258
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    .line 12606
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c()Landroidx/media2/exoplayer/external/extractor/mp4/m;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 12611
    iget-object v3, v1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/mp4/n;->q:Landroidx/media2/exoplayer/external/util/p;

    .line 12612
    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/mp4/m;->d:I

    if-eqz v5, :cond_6

    .line 12613
    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/m;->d:I

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 12615
    :cond_6
    iget-object v2, v1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->e:I

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/n;->c(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12616
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1259
    :cond_7
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1260
    iput-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    .line 1262
    :cond_8
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->t:I

    return v7

    .line 1266
    :cond_9
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->g:I

    if-ne v2, v7, :cond_a

    .line 1267
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    const/16 v5, 0x8

    sub-int/2addr v2, v5

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    .line 1268
    invoke-interface {v1, v5}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 1270
    :cond_a
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    .line 13565
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c()Landroidx/media2/exoplayer/external/extractor/mp4/m;

    move-result-object v5

    if-nez v5, :cond_b

    const/4 v5, 0x0

    goto :goto_3

    .line 13572
    :cond_b
    iget v9, v5, Landroidx/media2/exoplayer/external/extractor/mp4/m;->d:I

    if-eqz v9, :cond_c

    .line 13573
    iget-object v9, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/n;->q:Landroidx/media2/exoplayer/external/util/p;

    .line 13574
    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/m;->d:I

    goto :goto_1

    .line 13577
    :cond_c
    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/m;->e:[B

    .line 13578
    iget-object v9, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->j:Landroidx/media2/exoplayer/external/util/p;

    array-length v10, v5

    invoke-virtual {v9, v5, v10}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 13579
    iget-object v9, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->j:Landroidx/media2/exoplayer/external/util/p;

    .line 13580
    array-length v5, v5

    .line 13583
    :goto_1
    iget-object v10, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget v11, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->e:I

    invoke-virtual {v10, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/n;->c(I)Z

    move-result v10

    .line 13586
    iget-object v11, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->i:Landroidx/media2/exoplayer/external/util/p;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/util/p;->a:[B

    if-eqz v10, :cond_d

    const/16 v12, 0x80

    goto :goto_2

    :cond_d
    const/4 v12, 0x0

    :goto_2
    or-int/2addr v12, v5

    int-to-byte v12, v12

    aput-byte v12, v11, v8

    .line 13587
    iget-object v11, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->i:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v11, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 13588
    iget-object v11, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v12, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->i:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v11, v12, v7}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 13590
    iget-object v11, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v11, v9, v5}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    if-nez v10, :cond_e

    add-int/2addr v5, v7

    goto :goto_3

    .line 13596
    :cond_e
    iget-object v9, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/n;->q:Landroidx/media2/exoplayer/external/util/p;

    .line 13597
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v10

    const/4 v11, -0x2

    .line 13598
    invoke-virtual {v9, v11}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    mul-int/lit8 v10, v10, 0x6

    add-int/2addr v10, v3

    .line 13600
    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v2, v9, v10}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    add-int/2addr v5, v7

    add-int/2addr v5, v10

    .line 1270
    :goto_3
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    .line 1271
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    add-int/2addr v2, v5

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    const/4 v2, 0x4

    .line 1272
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->t:I

    .line 1273
    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->G:I

    .line 1274
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "audio/ac4"

    .line 1275
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->I:Z

    .line 1278
    :cond_f
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    .line 1279
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    .line 1280
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a:Landroidx/media2/exoplayer/external/extractor/q;

    .line 1281
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget v10, v10, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->e:I

    .line 1282
    invoke-virtual {v2, v10}, Landroidx/media2/exoplayer/external/extractor/mp4/n;->b(I)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    .line 1283
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->n:Landroidx/media2/exoplayer/external/util/z;

    if-eqz v13, :cond_10

    .line 1284
    invoke-virtual {v13, v11, v12}, Landroidx/media2/exoplayer/external/util/z;->c(J)J

    move-result-wide v11

    .line 1286
    :cond_10
    iget v13, v5, Landroidx/media2/exoplayer/external/extractor/mp4/l;->j:I

    if-eqz v13, :cond_16

    .line 1289
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->j:Landroidx/media2/exoplayer/external/util/p;

    iget-object v13, v13, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 1290
    aput-byte v8, v13, v8

    .line 1291
    aput-byte v8, v13, v7

    .line 1292
    aput-byte v8, v13, v3

    .line 1293
    iget v3, v5, Landroidx/media2/exoplayer/external/extractor/mp4/l;->j:I

    add-int/2addr v3, v7

    .line 1294
    iget v14, v5, Landroidx/media2/exoplayer/external/extractor/mp4/l;->j:I

    const/4 v15, 0x4

    rsub-int/lit8 v14, v14, 0x4

    .line 1298
    :goto_4
    iget v15, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    if-ge v15, v4, :cond_15

    .line 1299
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->G:I

    if-nez v4, :cond_13

    .line 1301
    invoke-interface {v1, v13, v14, v3}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 1302
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->j:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1303
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->j:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v4

    if-lez v4, :cond_12

    add-int/lit8 v4, v4, -0x1

    .line 1307
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->G:I

    .line 1309
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->i:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1310
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->i:Landroidx/media2/exoplayer/external/util/p;

    const/4 v15, 0x4

    invoke-interface {v9, v4, v15}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1312
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->j:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v9, v4, v7}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1313
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->L:[Landroidx/media2/exoplayer/external/extractor/q;

    array-length v4, v4

    if-lez v4, :cond_11

    iget-object v4, v5, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v7, v13, v15

    .line 1314
    invoke-static {v4, v7}, Landroidx/media2/exoplayer/external/util/n;->a(Ljava/lang/String;B)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->H:Z

    .line 1315
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    add-int/lit8 v4, v4, 0x5

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    .line 1316
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    add-int/2addr v4, v14

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    const/4 v4, 0x3

    const/4 v7, 0x1

    goto :goto_4

    .line 1305
    :cond_12
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    const/4 v15, 0x4

    .line 1319
    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->H:Z

    if-eqz v7, :cond_14

    .line 1321
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7, v4}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 1322
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->k:Landroidx/media2/exoplayer/external/util/p;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->G:I

    invoke-interface {v1, v4, v8, v7}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 1323
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->k:Landroidx/media2/exoplayer/external/util/p;

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->G:I

    invoke-interface {v9, v4, v7}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1324
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->G:I

    .line 1326
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->k:Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->k:Landroidx/media2/exoplayer/external/util/p;

    .line 14125
    iget v15, v15, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 1326
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/util/n;->a([BI)I

    move-result v7

    .line 1328
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->k:Landroidx/media2/exoplayer/external/util/p;

    iget-object v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v8, "video/hevc"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v15, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1329
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6, v7}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 1330
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->k:Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->L:[Landroidx/media2/exoplayer/external/extractor/q;

    invoke-static {v11, v12, v6, v7}, Landroidx/media2/exoplayer/external/text/a/f;->a(JLandroidx/media2/exoplayer/external/util/p;[Landroidx/media2/exoplayer/external/extractor/q;)V

    goto :goto_6

    :cond_14
    const/4 v6, 0x0

    .line 1333
    invoke-interface {v9, v1, v4, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/extractor/h;IZ)I

    move-result v4

    .line 1335
    :goto_6
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    add-int/2addr v6, v4

    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    .line 1336
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->G:I

    sub-int/2addr v6, v4

    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->G:I

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_15
    const/4 v6, 0x0

    goto :goto_8

    .line 1340
    :cond_16
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->I:Z

    if-eqz v3, :cond_17

    .line 1341
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->m:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/audio/b;->a(ILandroidx/media2/exoplayer/external/util/p;)V

    .line 1342
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->m:Landroidx/media2/exoplayer/external/util/p;

    .line 15125
    iget v3, v3, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 1343
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->m:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v9, v4, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1344
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    .line 1345
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    const/4 v6, 0x0

    .line 1346
    iput-boolean v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->I:Z

    goto :goto_7

    :cond_17
    const/4 v6, 0x0

    .line 1348
    :goto_7
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    if-ge v3, v4, :cond_18

    sub-int/2addr v4, v3

    .line 1349
    invoke-interface {v9, v1, v4, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/extractor/h;IZ)I

    move-result v3

    .line 1350
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->F:I

    goto :goto_7

    .line 1354
    :cond_18
    :goto_8
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/mp4/n;->l:[Z

    aget-boolean v1, v1, v10

    .line 1359
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    .line 15477
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->c()Landroidx/media2/exoplayer/external/extractor/mp4/m;

    move-result-object v2

    if-eqz v2, :cond_19

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    .line 1362
    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/m;->c:Landroidx/media2/exoplayer/external/extractor/q$a;

    move/from16 v19, v1

    move-object/from16 v22, v2

    goto :goto_9

    :cond_19
    move/from16 v19, v1

    const/16 v22, 0x0

    .line 1365
    :goto_9
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->E:I

    const/16 v21, 0x0

    move-object/from16 v16, v9

    move-wide/from16 v17, v11

    move/from16 v20, v1

    invoke-interface/range {v16 .. v22}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 16377
    :cond_1a
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->r:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 16378
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->r:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mp4/e$a;

    .line 16379
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->z:I

    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/mp4/e$a;->b:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->z:I

    .line 16380
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/mp4/e$a;->a:J

    add-long/2addr v2, v11

    .line 16381
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->n:Landroidx/media2/exoplayer/external/util/z;

    if-eqz v4, :cond_1b

    .line 16382
    invoke-virtual {v4, v2, v3}, Landroidx/media2/exoplayer/external/util/z;->c(J)J

    move-result-wide v2

    .line 16384
    :cond_1b
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->K:[Landroidx/media2/exoplayer/external/extractor/q;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v5, :cond_1a

    aget-object v16, v4, v7

    const/16 v19, 0x1

    .line 16385
    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/mp4/e$a;->b:I

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->z:I

    const/16 v22, 0x0

    move-wide/from16 v17, v2

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-interface/range {v16 .. v22}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1369
    :cond_1c
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b()Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    .line 1370
    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    :cond_1d
    const/4 v1, 0x3

    .line 1372
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->t:I

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 325
    :cond_0
    :goto_0
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->t:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_11

    if-eq v2, v8, :cond_2

    if-eq v2, v5, :cond_1

    .line 338
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->c(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v7

    .line 335
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b(Landroidx/media2/exoplayer/external/extractor/h;)V

    goto :goto_0

    .line 4439
    :cond_2
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    long-to-int v2, v9

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    sub-int/2addr v2, v9

    .line 4440
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->x:Landroidx/media2/exoplayer/external/util/p;

    if-eqz v9, :cond_f

    .line 4441
    iget-object v9, v9, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v1, v9, v6, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 4442
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->u:I

    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->x:Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v2, v9, v10}, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;-><init>(ILandroidx/media2/exoplayer/external/util/p;)V

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v9

    .line 4457
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 4458
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$b;)V

    goto/16 :goto_7

    .line 4459
    :cond_3
    iget v11, v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->a:I

    if-ne v11, v4, :cond_7

    .line 4460
    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 5129
    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 5130
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    .line 5131
    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v3

    const/4 v4, 0x4

    .line 5133
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 5134
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v17

    if-nez v3, :cond_4

    .line 5138
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v11

    .line 5139
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v13

    goto :goto_1

    .line 5141
    :cond_4
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v11

    .line 5142
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v13

    :goto_1
    add-long/2addr v9, v13

    move-wide/from16 v19, v11

    const-wide/32 v13, 0xf4240

    move-wide/from16 v11, v19

    move-wide/from16 v15, v17

    .line 5144
    invoke-static/range {v11 .. v16}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v21

    .line 5147
    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 5149
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v3

    .line 5150
    new-array v5, v3, [I

    .line 5151
    new-array v6, v3, [J

    .line 5152
    new-array v15, v3, [J

    .line 5153
    new-array v13, v3, [J

    move-wide/from16 v11, v21

    :goto_2
    if-ge v7, v3, :cond_6

    .line 5158
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v14

    const/high16 v16, -0x80000000

    and-int v16, v14, v16

    if-nez v16, :cond_5

    .line 5164
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v23

    const v16, 0x7fffffff

    and-int v14, v14, v16

    .line 5166
    aput v14, v5, v7

    .line 5167
    aput-wide v9, v6, v7

    .line 5171
    aput-wide v11, v13, v7

    add-long v19, v19, v23

    const-wide/32 v23, 0xf4240

    move-wide/from16 v11, v19

    move-object v8, v13

    move-wide/from16 v13, v23

    move-object v4, v15

    move-wide/from16 v15, v17

    .line 5173
    invoke-static/range {v11 .. v16}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v11

    .line 5174
    aget-wide v13, v8, v7

    sub-long v13, v11, v13

    aput-wide v13, v4, v7

    const/4 v13, 0x4

    .line 5176
    invoke-virtual {v2, v13}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 5177
    aget v14, v5, v7

    int-to-long v14, v14

    add-long/2addr v9, v14

    add-int/lit8 v7, v7, 0x1

    move-object v15, v4

    move-object v13, v8

    const/4 v4, 0x4

    const/4 v8, 0x1

    goto :goto_2

    .line 5162
    :cond_5
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v8, v13

    move-object v4, v15

    .line 5180
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/b;

    invoke-direct {v3, v5, v6, v4, v8}, Landroidx/media2/exoplayer/external/extractor/b;-><init>([I[J[J[J)V

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 4461
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->C:J

    .line 4462
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->J:Landroidx/media2/exoplayer/external/extractor/i;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/o;

    invoke-interface {v3, v2}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    const/4 v2, 0x1

    .line 4463
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->M:Z

    goto/16 :goto_7

    .line 4464
    :cond_7
    iget v4, v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->a:I

    if-ne v4, v3, :cond_10

    .line 4465
    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 5609
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->K:[Landroidx/media2/exoplayer/external/extractor/q;

    if-eqz v3, :cond_10

    array-length v3, v3

    if-nez v3, :cond_8

    goto/16 :goto_7

    .line 5612
    :cond_8
    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 5613
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    .line 5614
    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_a

    const/4 v6, 0x1

    if-eq v3, v6, :cond_9

    const/16 v2, 0x2e

    .line 5647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Skipping unsupported emsg version: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentedMp4Extractor"

    invoke-static {v3, v2}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 5637
    :cond_9
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v14

    .line 5639
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v16

    .line 5641
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    invoke-static/range {v8 .. v13}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v8

    .line 5642
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v10

    .line 5643
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5644
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->q()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-wide/from16 v8, v16

    move-wide v10, v4

    goto :goto_4

    .line 5624
    :cond_a
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5625
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->q()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5626
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v14

    .line 5628
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v16

    .line 5629
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->C:J

    cmp-long v10, v8, v4

    if-eqz v10, :cond_b

    add-long v8, v8, v16

    move-wide/from16 v18, v8

    goto :goto_3

    :cond_b
    move-wide/from16 v18, v4

    .line 5633
    :goto_3
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v8

    .line 5634
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v10

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-wide/from16 v10, v16

    move-wide/from16 v8, v18

    .line 5651
    :goto_4
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v3

    new-array v3, v3, [B

    .line 5652
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v6

    invoke-virtual {v2, v3, v7, v6}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 5653
    new-instance v2, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;

    move-object/from16 v20, v2

    move-object/from16 v27, v3

    invoke-direct/range {v20 .. v27}, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 5654
    new-instance v3, Landroidx/media2/exoplayer/external/util/p;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->o:Landroidx/media2/exoplayer/external/metadata/emsg/b;

    .line 5655
    invoke-virtual {v6, v2}, Landroidx/media2/exoplayer/external/metadata/emsg/b;->a(Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    .line 5656
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v2

    .line 5659
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->K:[Landroidx/media2/exoplayer/external/extractor/q;

    array-length v12, v6

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_c

    aget-object v14, v6, v13

    .line 5660
    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 5661
    invoke-interface {v14, v3, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_c
    cmp-long v3, v8, v4

    if-nez v3, :cond_d

    .line 5668
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->r:Ljava/util/ArrayDeque;

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mp4/e$a;

    invoke-direct {v4, v10, v11, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/e$a;-><init>(JI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 5670
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->z:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->z:I

    goto :goto_7

    .line 5672
    :cond_d
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->n:Landroidx/media2/exoplayer/external/util/z;

    if-eqz v3, :cond_e

    .line 5673
    invoke-virtual {v3, v8, v9}, Landroidx/media2/exoplayer/external/util/z;->c(J)J

    move-result-wide v8

    .line 5675
    :cond_e
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->K:[Landroidx/media2/exoplayer/external/extractor/q;

    array-length v4, v3

    :goto_6
    if-ge v7, v4, :cond_10

    aget-object v12, v3, v7

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide v13, v8

    move/from16 v16, v2

    .line 5676
    invoke-interface/range {v12 .. v18}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 4444
    :cond_f
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 4446
    :cond_10
    :goto_7
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(J)V

    goto/16 :goto_0

    .line 2351
    :cond_11
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    if-nez v2, :cond_13

    .line 2353
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->p:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v8, 0x1

    invoke-interface {v1, v2, v7, v6, v8}, Landroidx/media2/exoplayer/external/extractor/h;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_10

    .line 2356
    :cond_12
    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    .line 2357
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->p:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 2358
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->p:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    .line 2359
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->p:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->u:I

    .line 2362
    :cond_13
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_14

    .line 2365
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->p:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v1, v2, v6, v6}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 2366
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    add-int/2addr v2, v6

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    .line 2367
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->p:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    goto :goto_8

    :cond_14
    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_16

    .line 2371
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_15

    .line 2372
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2373
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    iget-wide v8, v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->b:J

    :cond_15
    cmp-long v2, v8, v10

    if-eqz v2, :cond_16

    .line 2376
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    .line 2380
    :cond_16
    :goto_8
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    int-to-long v10, v2

    cmp-long v2, v8, v10

    if-ltz v2, :cond_24

    .line 2384
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v8

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    int-to-long v10, v2

    sub-long/2addr v8, v10

    .line 2385
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->u:I

    const v10, 0x6d6f6f66

    if-ne v2, v10, :cond_17

    .line 2387
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v2, :cond_17

    .line 2389
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->b:Landroidx/media2/exoplayer/external/extractor/mp4/n;

    .line 2390
    iput-wide v8, v12, Landroidx/media2/exoplayer/external/extractor/mp4/n;->b:J

    .line 2391
    iput-wide v8, v12, Landroidx/media2/exoplayer/external/extractor/mp4/n;->d:J

    .line 2392
    iput-wide v8, v12, Landroidx/media2/exoplayer/external/extractor/mp4/n;->c:J

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 2396
    :cond_17
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->u:I

    const v11, 0x6d646174

    const/4 v12, 0x0

    if-ne v2, v11, :cond_19

    .line 2397
    iput-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->D:Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    .line 2398
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    add-long/2addr v2, v8

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->y:J

    .line 2399
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->M:Z

    if-nez v2, :cond_18

    .line 2401
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->J:Landroidx/media2/exoplayer/external/extractor/i;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/o$b;

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->B:J

    invoke-direct {v3, v6, v7, v8, v9}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(JJ)V

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    const/4 v2, 0x1

    .line 2402
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->M:Z

    .line 2404
    :cond_18
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->t:I

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

    if-eq v2, v10, :cond_1b

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

    .line 2409
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v2

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 2410
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    new-instance v5, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->u:I

    invoke-direct {v5, v6, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 2411
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c

    .line 2412
    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->a(J)V

    goto :goto_a

    .line 2415
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b()V

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

    .line 2418
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->w:I

    if-ne v2, v6, :cond_21

    .line 2421
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    cmp-long v2, v8, v3

    if-gtz v2, :cond_20

    .line 2424
    new-instance v2, Landroidx/media2/exoplayer/external/util/p;

    long-to-int v3, v8

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->x:Landroidx/media2/exoplayer/external/util/p;

    .line 2425
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->p:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->x:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v2, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    .line 2426
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->t:I

    goto :goto_f

    .line 2422
    :cond_20
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2419
    :cond_21
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2428
    :cond_22
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->v:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_23

    .line 2431
    iput-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->x:Landroidx/media2/exoplayer/external/util/p;

    const/4 v2, 0x1

    .line 2432
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->t:I

    :goto_f
    const/4 v7, 0x1

    :goto_10
    if-nez v7, :cond_0

    const/4 v1, -0x1

    return v1

    .line 2429
    :cond_23
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2381
    :cond_24
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(JJ)V
    .locals 2

    .line 304
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 306
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->r:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 309
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->z:I

    .line 310
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->A:J

    .line 311
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->q:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 312
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->I:Z

    .line 313
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->b()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 3

    .line 292
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->J:Landroidx/media2/exoplayer/external/extractor/i;

    .line 293
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->e:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    if-eqz v0, :cond_0

    .line 294
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->b:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;-><init>(Landroidx/media2/exoplayer/external/extractor/q;)V

    .line 295
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->e:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/c;

    invoke-direct {v0, v2, v2, v2, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/c;-><init>(IIII)V

    invoke-virtual {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/e$b;->a(Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/extractor/mp4/c;)V

    .line 296
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->h:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/e;->c()V

    .line 298
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;->J:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 287
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/k;->a(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result p1

    return p1
.end method
