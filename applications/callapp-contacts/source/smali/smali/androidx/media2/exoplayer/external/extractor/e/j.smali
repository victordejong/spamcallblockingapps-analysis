.class public final Landroidx/media2/exoplayer/external/extractor/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/ah$c;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/e/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "application/cea-608"

    const/4 v2, 0x0

    .line 120
    invoke-static {v0, v1, v2, v0}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/j;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/j;->a:I

    .line 135
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/j;->b:Ljava/util/List;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/e/ah$b;)Landroidx/media2/exoplayer/external/extractor/e/ab;
    .locals 1

    .line 198
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/ab;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/e/j;->b(Landroidx/media2/exoplayer/external/extractor/e/ah$b;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/extractor/e/ab;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private a(I)Z
    .locals 1

    .line 286
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/j;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroidx/media2/exoplayer/external/extractor/e/ah$b;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/e/ah$b;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x20

    .line 224
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/j;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/j;->b:Ljava/util/List;

    return-object v1

    .line 227
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/util/p;

    move-object/from16 v2, p1

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/e/ah$b;->d:[B

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    .line 228
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/j;->b:Ljava/util/List;

    .line 229
    :goto_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v3

    if-lez v3, :cond_6

    .line 230
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v3

    .line 231
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    .line 2142
    iget v5, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr v5, v4

    const/16 v4, 0x86

    if-ne v3, v4, :cond_5

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_5

    const/4 v7, 0x3

    .line 238
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/p;->e(I)Ljava/lang/String;

    move-result-object v13

    .line 239
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v7

    and-int/lit16 v8, v7, 0x80

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_2

    and-int/lit8 v7, v7, 0x3f

    const-string v10, "application/cea-708"

    move v14, v7

    move-object v7, v10

    goto :goto_3

    :cond_2
    const-string v7, "application/cea-608"

    const/4 v14, 0x1

    .line 252
    :goto_3
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v10

    int-to-byte v10, v10

    .line 254
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    const/4 v11, 0x0

    if-eqz v8, :cond_4

    and-int/lit8 v8, v10, 0x40

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    new-array v9, v9, [B

    int-to-byte v8, v8

    aput-byte v8, v9, v4

    .line 3060
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v18, v8

    goto :goto_5

    :cond_4
    move-object/from16 v18, v11

    :goto_5
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    const-wide v16, 0x7fffffffffffffffL

    move-object v9, v7

    .line 264
    invoke-static/range {v8 .. v18}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 263
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 279
    :cond_5
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_0

    :cond_6
    return-object v2
.end method


# virtual methods
.method public final a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/e/ah;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final a(ILandroidx/media2/exoplayer/external/extractor/e/ah$b;)Landroidx/media2/exoplayer/external/extractor/e/ah;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    const/4 v1, 0x4

    if-eq p1, v1, :cond_f

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-eq p1, v2, :cond_d

    const/16 v2, 0x11

    if-eq p1, v2, :cond_b

    const/16 v0, 0x15

    if-eq p1, v0, :cond_a

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_8

    const/16 v0, 0x24

    if-eq p1, v0, :cond_7

    const/16 v0, 0x59

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_5

    const/16 v0, 0xac

    if-eq p1, v0, :cond_4

    const/16 v0, 0x81

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-eq p1, v0, :cond_2

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_3

    return-object v3

    :cond_0
    const/16 p1, 0x10

    .line 176
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/e/j;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v3

    .line 177
    :cond_1
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/aa;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/e/ac;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/extractor/e/ac;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/e/aa;-><init>(Landroidx/media2/exoplayer/external/extractor/e/z;)V

    return-object p1

    :cond_2
    const/16 p1, 0x40

    .line 161
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/e/j;->a(I)Z

    move-result p1

    if-nez p1, :cond_5

    return-object v3

    .line 157
    :cond_3
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/c;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/e/ah$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/e/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1

    .line 159
    :cond_4
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/f;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/e/ah$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/e/f;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1

    .line 166
    :cond_5
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/k;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/e/ah$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/e/k;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1

    .line 181
    :cond_6
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/l;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/e/ah$b;->c:Ljava/util/List;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/e/l;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1

    .line 174
    :cond_7
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/p;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/extractor/e/j;->a(Landroidx/media2/exoplayer/external/extractor/e/ah$b;)Landroidx/media2/exoplayer/external/extractor/e/ab;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/e/p;-><init>(Landroidx/media2/exoplayer/external/extractor/e/ab;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1

    .line 170
    :cond_8
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/extractor/e/j;->a(I)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object v3

    .line 171
    :cond_9
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/o;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/extractor/e/j;->a(Landroidx/media2/exoplayer/external/extractor/e/ah$b;)Landroidx/media2/exoplayer/external/extractor/e/ab;

    move-result-object p2

    const/4 v1, 0x1

    .line 172
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/extractor/e/j;->a(I)Z

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/extractor/e/j;->a(I)Z

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Landroidx/media2/exoplayer/external/extractor/e/o;-><init>(Landroidx/media2/exoplayer/external/extractor/e/ab;ZZ)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1

    .line 179
    :cond_a
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/e/q;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/extractor/e/q;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1

    .line 153
    :cond_b
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/e/j;->a(I)Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v3

    .line 154
    :cond_c
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/r;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/e/ah$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/e/r;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1

    .line 150
    :cond_d
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/e/j;->a(I)Z

    move-result p1

    if-eqz p1, :cond_e

    return-object v3

    .line 151
    :cond_e
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/i;

    const/4 v1, 0x0

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/e/ah$b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/e/i;-><init>(ZLjava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1

    .line 148
    :cond_f
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/s;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/e/ah$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/e/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1

    .line 168
    :cond_10
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/u;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/n;

    .line 1211
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/aj;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/extractor/e/j;->b(Landroidx/media2/exoplayer/external/extractor/e/ah$b;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Landroidx/media2/exoplayer/external/extractor/e/aj;-><init>(Ljava/util/List;)V

    .line 168
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/n;-><init>(Landroidx/media2/exoplayer/external/extractor/e/aj;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/u;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V

    return-object p1
.end method
