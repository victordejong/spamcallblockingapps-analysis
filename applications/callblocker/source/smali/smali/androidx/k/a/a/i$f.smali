.class Landroidx/k/a/a/i$f;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field private static final n:Landroid/graphics/Matrix;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field final c:Landroidx/k/a/a/i$c;

.field d:F

.field e:F

.field f:F

.field g:F

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/Boolean;

.field final k:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/graphics/Path;

.field private final m:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/PathMeasure;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1170
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroidx/k/a/a/i$f;->n:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$f;->o:Landroid/graphics/Matrix;

    .line 1181
    iput v1, p0, Landroidx/k/a/a/i$f;->d:F

    .line 1182
    iput v1, p0, Landroidx/k/a/a/i$f;->e:F

    .line 1183
    iput v1, p0, Landroidx/k/a/a/i$f;->f:F

    .line 1184
    iput v1, p0, Landroidx/k/a/a/i$f;->g:F

    .line 1185
    const/16 v0, 0xff

    iput v0, p0, Landroidx/k/a/a/i$f;->h:I

    .line 1186
    iput-object v2, p0, Landroidx/k/a/a/i$f;->i:Ljava/lang/String;

    .line 1187
    iput-object v2, p0, Landroidx/k/a/a/i$f;->j:Ljava/lang/Boolean;

    .line 1189
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$f;->k:Landroidx/b/a;

    .line 1192
    new-instance v0, Landroidx/k/a/a/i$c;

    invoke-direct {v0}, Landroidx/k/a/a/i$c;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$f;->c:Landroidx/k/a/a/i$c;

    .line 1193
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$f;->l:Landroid/graphics/Path;

    .line 1194
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    .line 1195
    return-void
.end method

.method public constructor <init>(Landroidx/k/a/a/i$f;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$f;->o:Landroid/graphics/Matrix;

    .line 1181
    iput v1, p0, Landroidx/k/a/a/i$f;->d:F

    .line 1182
    iput v1, p0, Landroidx/k/a/a/i$f;->e:F

    .line 1183
    iput v1, p0, Landroidx/k/a/a/i$f;->f:F

    .line 1184
    iput v1, p0, Landroidx/k/a/a/i$f;->g:F

    .line 1185
    const/16 v0, 0xff

    iput v0, p0, Landroidx/k/a/a/i$f;->h:I

    .line 1186
    iput-object v2, p0, Landroidx/k/a/a/i$f;->i:Ljava/lang/String;

    .line 1187
    iput-object v2, p0, Landroidx/k/a/a/i$f;->j:Ljava/lang/Boolean;

    .line 1189
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Landroidx/k/a/a/i$f;->k:Landroidx/b/a;

    .line 1217
    new-instance v0, Landroidx/k/a/a/i$c;

    iget-object v1, p1, Landroidx/k/a/a/i$f;->c:Landroidx/k/a/a/i$c;

    iget-object v2, p0, Landroidx/k/a/a/i$f;->k:Landroidx/b/a;

    invoke-direct {v0, v1, v2}, Landroidx/k/a/a/i$c;-><init>(Landroidx/k/a/a/i$c;Landroidx/b/a;)V

    iput-object v0, p0, Landroidx/k/a/a/i$f;->c:Landroidx/k/a/a/i$c;

    .line 1218
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroidx/k/a/a/i$f;->l:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroidx/k/a/a/i$f;->l:Landroid/graphics/Path;

    .line 1219
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    .line 1220
    iget v0, p1, Landroidx/k/a/a/i$f;->d:F

    iput v0, p0, Landroidx/k/a/a/i$f;->d:F

    .line 1221
    iget v0, p1, Landroidx/k/a/a/i$f;->e:F

    iput v0, p0, Landroidx/k/a/a/i$f;->e:F

    .line 1222
    iget v0, p1, Landroidx/k/a/a/i$f;->f:F

    iput v0, p0, Landroidx/k/a/a/i$f;->f:F

    .line 1223
    iget v0, p1, Landroidx/k/a/a/i$f;->g:F

    iput v0, p0, Landroidx/k/a/a/i$f;->g:F

    .line 1224
    iget v0, p1, Landroidx/k/a/a/i$f;->q:I

    iput v0, p0, Landroidx/k/a/a/i$f;->q:I

    .line 1225
    iget v0, p1, Landroidx/k/a/a/i$f;->h:I

    iput v0, p0, Landroidx/k/a/a/i$f;->h:I

    .line 1226
    iget-object v0, p1, Landroidx/k/a/a/i$f;->i:Ljava/lang/String;

    iput-object v0, p0, Landroidx/k/a/a/i$f;->i:Ljava/lang/String;

    .line 1227
    iget-object v0, p1, Landroidx/k/a/a/i$f;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Landroidx/k/a/a/i$f;->k:Landroidx/b/a;

    iget-object v1, p1, Landroidx/k/a/a/i$f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    :cond_0
    iget-object v0, p1, Landroidx/k/a/a/i$f;->j:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/k/a/a/i$f;->j:Ljava/lang/Boolean;

    .line 1231
    return-void
.end method

.method private static a(FFFF)F
    .locals 2

    .prologue
    .line 1379
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/graphics/Matrix;)F
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 1393
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 1394
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 1395
    aget v2, v1, v8

    float-to-double v2, v2

    aget v4, v1, v9

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1396
    aget v3, v1, v10

    float-to-double v4, v3

    aget v3, v1, v11

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1397
    aget v4, v1, v8

    aget v5, v1, v9

    aget v6, v1, v10

    aget v1, v1, v11

    invoke-static {v4, v5, v6, v1}, Landroidx/k/a/a/i$f;->a(FFFF)F

    move-result v1

    .line 1399
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1402
    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    .line 1403
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    .line 1408
    :cond_0
    return v0

    .line 1393
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Landroidx/k/a/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 8

    .prologue
    .line 1239
    iget-object v0, p1, Landroidx/k/a/a/i$c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1241
    iget-object v0, p1, Landroidx/k/a/a/i$c;->a:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroidx/k/a/a/i$c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 1244
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 1247
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p1, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1248
    iget-object v0, p1, Landroidx/k/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/k/a/a/i$d;

    .line 1249
    instance-of v1, v0, Landroidx/k/a/a/i$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 1250
    check-cast v1, Landroidx/k/a/a/i$c;

    .line 1251
    iget-object v2, p1, Landroidx/k/a/a/i$c;->a:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/k/a/a/i$f;->a(Landroidx/k/a/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1247
    :cond_0
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1253
    :cond_1
    instance-of v1, v0, Landroidx/k/a/a/i$e;

    if-eqz v1, :cond_0

    move-object v2, v0

    .line 1254
    check-cast v2, Landroidx/k/a/a/i$e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1255
    invoke-direct/range {v0 .. v6}, Landroidx/k/a/a/i$f;->a(Landroidx/k/a/a/i$c;Landroidx/k/a/a/i$e;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 1259
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 1260
    return-void
.end method

.method private a(Landroidx/k/a/a/i$c;Landroidx/k/a/a/i$e;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 8

    .prologue
    .line 1269
    int-to-float v0, p4

    iget v1, p0, Landroidx/k/a/a/i$f;->f:F

    div-float/2addr v0, v1

    .line 1270
    int-to-float v1, p5

    iget v2, p0, Landroidx/k/a/a/i$f;->g:F

    div-float/2addr v1, v2

    .line 1271
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1272
    iget-object v3, p1, Landroidx/k/a/a/i$c;->a:Landroid/graphics/Matrix;

    .line 1274
    iget-object v4, p0, Landroidx/k/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1275
    iget-object v4, p0, Landroidx/k/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1278
    invoke-direct {p0, v3}, Landroidx/k/a/a/i$f;->a(Landroid/graphics/Matrix;)F

    move-result v1

    .line 1279
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    iget-object v0, p0, Landroidx/k/a/a/i$f;->l:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroidx/k/a/a/i$e;->a(Landroid/graphics/Path;)V

    .line 1284
    iget-object v3, p0, Landroidx/k/a/a/i$f;->l:Landroid/graphics/Path;

    .line 1286
    iget-object v0, p0, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1288
    invoke-virtual {p2}, Landroidx/k/a/a/i$e;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1289
    iget-object v1, p0, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    iget v0, p2, Landroidx/k/a/a/i$e;->n:I

    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1291
    iget-object v0, p0, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/k/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1292
    iget-object v0, p0, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 1289
    :cond_2
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_1

    .line 1294
    :cond_3
    check-cast p2, Landroidx/k/a/a/i$b;

    .line 1295
    iget v0, p2, Landroidx/k/a/a/i$b;->f:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    iget v0, p2, Landroidx/k/a/a/i$b;->g:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_6

    .line 1296
    :cond_4
    iget v0, p2, Landroidx/k/a/a/i$b;->f:F

    iget v4, p2, Landroidx/k/a/a/i$b;->h:F

    add-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v0, v4

    .line 1297
    iget v4, p2, Landroidx/k/a/a/i$b;->g:F

    iget v5, p2, Landroidx/k/a/a/i$b;->h:F

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    .line 1299
    iget-object v5, p0, Landroidx/k/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    if-nez v5, :cond_5

    .line 1300
    new-instance v5, Landroid/graphics/PathMeasure;

    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v5, p0, Landroidx/k/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    .line 1302
    :cond_5
    iget-object v5, p0, Landroidx/k/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    iget-object v6, p0, Landroidx/k/a/a/i$f;->l:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1304
    iget-object v5, p0, Landroidx/k/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    .line 1305
    mul-float/2addr v0, v5

    .line 1306
    mul-float/2addr v4, v5

    .line 1307
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1308
    cmpl-float v6, v0, v4

    if-lez v6, :cond_c

    .line 1309
    iget-object v6, p0, Landroidx/k/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v5, v3, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1310
    iget-object v0, p0, Landroidx/k/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v4, v3, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1314
    :goto_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1316
    :cond_6
    iget-object v0, p0, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    iget-object v4, p0, Landroidx/k/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1318
    iget-object v0, p2, Landroidx/k/a/a/i$b;->c:Landroidx/core/a/a/b;

    invoke-virtual {v0}, Landroidx/core/a/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1319
    iget-object v0, p2, Landroidx/k/a/a/i$b;->c:Landroidx/core/a/a/b;

    .line 1320
    iget-object v3, p0, Landroidx/k/a/a/i$f;->b:Landroid/graphics/Paint;

    if-nez v3, :cond_7

    .line 1321
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Landroidx/k/a/a/i$f;->b:Landroid/graphics/Paint;

    .line 1322
    iget-object v3, p0, Landroidx/k/a/a/i$f;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1325
    :cond_7
    iget-object v3, p0, Landroidx/k/a/a/i$f;->b:Landroid/graphics/Paint;

    .line 1326
    invoke-virtual {v0}, Landroidx/core/a/a/b;->c()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1327
    invoke-virtual {v0}, Landroidx/core/a/a/b;->a()Landroid/graphics/Shader;

    move-result-object v0

    .line 1328
    iget-object v4, p0, Landroidx/k/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1329
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1330
    iget v0, p2, Landroidx/k/a/a/i$b;->e:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1336
    :goto_3
    invoke-virtual {v3, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1337
    iget-object v4, p0, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    iget v0, p2, Landroidx/k/a/a/i$b;->n:I

    if-nez v0, :cond_e

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_4
    invoke-virtual {v4, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1339
    iget-object v0, p0, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {p3, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1342
    :cond_8
    iget-object v0, p2, Landroidx/k/a/a/i$b;->a:Landroidx/core/a/a/b;

    invoke-virtual {v0}, Landroidx/core/a/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p2, Landroidx/k/a/a/i$b;->a:Landroidx/core/a/a/b;

    .line 1344
    iget-object v3, p0, Landroidx/k/a/a/i$f;->a:Landroid/graphics/Paint;

    if-nez v3, :cond_9

    .line 1345
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Landroidx/k/a/a/i$f;->a:Landroid/graphics/Paint;

    .line 1346
    iget-object v3, p0, Landroidx/k/a/a/i$f;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1349
    :cond_9
    iget-object v3, p0, Landroidx/k/a/a/i$f;->a:Landroid/graphics/Paint;

    .line 1350
    iget-object v4, p2, Landroidx/k/a/a/i$b;->j:Landroid/graphics/Paint$Join;

    if-eqz v4, :cond_a

    .line 1351
    iget-object v4, p2, Landroidx/k/a/a/i$b;->j:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1354
    :cond_a
    iget-object v4, p2, Landroidx/k/a/a/i$b;->i:Landroid/graphics/Paint$Cap;

    if-eqz v4, :cond_b

    .line 1355
    iget-object v4, p2, Landroidx/k/a/a/i$b;->i:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1358
    :cond_b
    iget v4, p2, Landroidx/k/a/a/i$b;->k:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1359
    invoke-virtual {v0}, Landroidx/core/a/a/b;->c()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1360
    invoke-virtual {v0}, Landroidx/core/a/a/b;->a()Landroid/graphics/Shader;

    move-result-object v0

    .line 1361
    iget-object v4, p0, Landroidx/k/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1362
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1363
    iget v0, p2, Landroidx/k/a/a/i$b;->d:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1370
    :goto_5
    invoke-virtual {v3, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1371
    mul-float v0, v2, v1

    .line 1372
    iget v1, p2, Landroidx/k/a/a/i$b;->b:F

    mul-float/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1373
    iget-object v0, p0, Landroidx/k/a/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {p3, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1312
    :cond_c
    iget-object v5, p0, Landroidx/k/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v4, v3, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/16 :goto_2

    .line 1332
    :cond_d
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1333
    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1334
    invoke-virtual {v0}, Landroidx/core/a/a/b;->b()I

    move-result v0

    iget v4, p2, Landroidx/k/a/a/i$b;->e:F

    invoke-static {v0, v4}, Landroidx/k/a/a/i;->a(IF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 1337
    :cond_e
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto/16 :goto_4

    .line 1365
    :cond_f
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1366
    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1367
    invoke-virtual {v0}, Landroidx/core/a/a/b;->b()I

    move-result v0

    iget v4, p2, Landroidx/k/a/a/i$b;->d:F

    invoke-static {v0, v4}, Landroidx/k/a/a/i;->a(IF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7

    .prologue
    .line 1264
    iget-object v1, p0, Landroidx/k/a/a/i$f;->c:Landroidx/k/a/a/i$c;

    sget-object v2, Landroidx/k/a/a/i$f;->n:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/k/a/a/i$f;->a(Landroidx/k/a/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1265
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Landroidx/k/a/a/i$f;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1413
    iget-object v0, p0, Landroidx/k/a/a/i$f;->c:Landroidx/k/a/a/i$c;

    invoke-virtual {v0}, Landroidx/k/a/a/i$c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/i$f;->j:Ljava/lang/Boolean;

    .line 1415
    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i$f;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a([I)Z
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Landroidx/k/a/a/i$f;->c:Landroidx/k/a/a/i$c;

    invoke-virtual {v0, p1}, Landroidx/k/a/a/i$c;->a([I)Z

    move-result v0

    return v0
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 1213
    invoke-virtual {p0}, Landroidx/k/a/a/i$f;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Landroidx/k/a/a/i$f;->h:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .prologue
    .line 1208
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/k/a/a/i$f;->setRootAlpha(I)V

    .line 1209
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    .prologue
    .line 1198
    iput p1, p0, Landroidx/k/a/a/i$f;->h:I

    .line 1199
    return-void
.end method
