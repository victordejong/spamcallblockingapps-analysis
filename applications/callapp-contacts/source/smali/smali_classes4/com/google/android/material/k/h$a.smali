.class public final Lcom/google/android/material/k/h$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/k/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/material/k/m;

.field public b:Lcom/google/android/material/e/a;

.field public c:Landroid/graphics/ColorFilter;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Landroid/graphics/Rect;

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:F

.field public o:F

.field public p:F

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(Lcom/google/android/material/k/h$a;)V
    .locals 2

    .line 1413
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1382
    iput-object v0, p0, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    .line 1383
    iput-object v0, p0, Lcom/google/android/material/k/h$a;->e:Landroid/content/res/ColorStateList;

    .line 1384
    iput-object v0, p0, Lcom/google/android/material/k/h$a;->f:Landroid/content/res/ColorStateList;

    .line 1385
    iput-object v0, p0, Lcom/google/android/material/k/h$a;->g:Landroid/content/res/ColorStateList;

    .line 1386
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/google/android/material/k/h$a;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1387
    iput-object v0, p0, Lcom/google/android/material/k/h$a;->i:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1389
    iput v0, p0, Lcom/google/android/material/k/h$a;->j:F

    .line 1390
    iput v0, p0, Lcom/google/android/material/k/h$a;->k:F

    const/16 v0, 0xff

    .line 1393
    iput v0, p0, Lcom/google/android/material/k/h$a;->m:I

    const/4 v0, 0x0

    .line 1394
    iput v0, p0, Lcom/google/android/material/k/h$a;->n:F

    .line 1395
    iput v0, p0, Lcom/google/android/material/k/h$a;->o:F

    .line 1396
    iput v0, p0, Lcom/google/android/material/k/h$a;->p:F

    const/4 v0, 0x0

    .line 1397
    iput v0, p0, Lcom/google/android/material/k/h$a;->q:I

    .line 1398
    iput v0, p0, Lcom/google/android/material/k/h$a;->r:I

    .line 1399
    iput v0, p0, Lcom/google/android/material/k/h$a;->s:I

    .line 1400
    iput v0, p0, Lcom/google/android/material/k/h$a;->t:I

    .line 1402
    iput-boolean v0, p0, Lcom/google/android/material/k/h$a;->u:Z

    .line 1404
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->v:Landroid/graphics/Paint$Style;

    .line 1414
    iget-object v0, p1, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 1415
    iget-object v0, p1, Lcom/google/android/material/k/h$a;->b:Lcom/google/android/material/e/a;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->b:Lcom/google/android/material/e/a;

    .line 1416
    iget v0, p1, Lcom/google/android/material/k/h$a;->l:F

    iput v0, p0, Lcom/google/android/material/k/h$a;->l:F

    .line 1417
    iget-object v0, p1, Lcom/google/android/material/k/h$a;->c:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->c:Landroid/graphics/ColorFilter;

    .line 1418
    iget-object v0, p1, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    .line 1419
    iget-object v0, p1, Lcom/google/android/material/k/h$a;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->e:Landroid/content/res/ColorStateList;

    .line 1420
    iget-object v0, p1, Lcom/google/android/material/k/h$a;->h:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1421
    iget-object v0, p1, Lcom/google/android/material/k/h$a;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->g:Landroid/content/res/ColorStateList;

    .line 1422
    iget v0, p1, Lcom/google/android/material/k/h$a;->m:I

    iput v0, p0, Lcom/google/android/material/k/h$a;->m:I

    .line 1423
    iget v0, p1, Lcom/google/android/material/k/h$a;->j:F

    iput v0, p0, Lcom/google/android/material/k/h$a;->j:F

    .line 1424
    iget v0, p1, Lcom/google/android/material/k/h$a;->s:I

    iput v0, p0, Lcom/google/android/material/k/h$a;->s:I

    .line 1425
    iget v0, p1, Lcom/google/android/material/k/h$a;->q:I

    iput v0, p0, Lcom/google/android/material/k/h$a;->q:I

    .line 1426
    iget-boolean v0, p1, Lcom/google/android/material/k/h$a;->u:Z

    iput-boolean v0, p0, Lcom/google/android/material/k/h$a;->u:Z

    .line 1427
    iget v0, p1, Lcom/google/android/material/k/h$a;->k:F

    iput v0, p0, Lcom/google/android/material/k/h$a;->k:F

    .line 1428
    iget v0, p1, Lcom/google/android/material/k/h$a;->n:F

    iput v0, p0, Lcom/google/android/material/k/h$a;->n:F

    .line 1429
    iget v0, p1, Lcom/google/android/material/k/h$a;->o:F

    iput v0, p0, Lcom/google/android/material/k/h$a;->o:F

    .line 1430
    iget v0, p1, Lcom/google/android/material/k/h$a;->p:F

    iput v0, p0, Lcom/google/android/material/k/h$a;->p:F

    .line 1431
    iget v0, p1, Lcom/google/android/material/k/h$a;->r:I

    iput v0, p0, Lcom/google/android/material/k/h$a;->r:I

    .line 1432
    iget v0, p1, Lcom/google/android/material/k/h$a;->t:I

    iput v0, p0, Lcom/google/android/material/k/h$a;->t:I

    .line 1433
    iget-object v0, p1, Lcom/google/android/material/k/h$a;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->f:Landroid/content/res/ColorStateList;

    .line 1434
    iget-object v0, p1, Lcom/google/android/material/k/h$a;->v:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->v:Landroid/graphics/Paint$Style;

    .line 1435
    iget-object v0, p1, Lcom/google/android/material/k/h$a;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1436
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/google/android/material/k/h$a;->i:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->i:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/k/m;Lcom/google/android/material/e/a;)V
    .locals 2

    .line 1408
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1382
    iput-object v0, p0, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    .line 1383
    iput-object v0, p0, Lcom/google/android/material/k/h$a;->e:Landroid/content/res/ColorStateList;

    .line 1384
    iput-object v0, p0, Lcom/google/android/material/k/h$a;->f:Landroid/content/res/ColorStateList;

    .line 1385
    iput-object v0, p0, Lcom/google/android/material/k/h$a;->g:Landroid/content/res/ColorStateList;

    .line 1386
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/google/android/material/k/h$a;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1387
    iput-object v0, p0, Lcom/google/android/material/k/h$a;->i:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1389
    iput v0, p0, Lcom/google/android/material/k/h$a;->j:F

    .line 1390
    iput v0, p0, Lcom/google/android/material/k/h$a;->k:F

    const/16 v0, 0xff

    .line 1393
    iput v0, p0, Lcom/google/android/material/k/h$a;->m:I

    const/4 v0, 0x0

    .line 1394
    iput v0, p0, Lcom/google/android/material/k/h$a;->n:F

    .line 1395
    iput v0, p0, Lcom/google/android/material/k/h$a;->o:F

    .line 1396
    iput v0, p0, Lcom/google/android/material/k/h$a;->p:F

    const/4 v0, 0x0

    .line 1397
    iput v0, p0, Lcom/google/android/material/k/h$a;->q:I

    .line 1398
    iput v0, p0, Lcom/google/android/material/k/h$a;->r:I

    .line 1399
    iput v0, p0, Lcom/google/android/material/k/h$a;->s:I

    .line 1400
    iput v0, p0, Lcom/google/android/material/k/h$a;->t:I

    .line 1402
    iput-boolean v0, p0, Lcom/google/android/material/k/h$a;->u:Z

    .line 1404
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/k/h$a;->v:Landroid/graphics/Paint$Style;

    .line 1409
    iput-object p1, p0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 1410
    iput-object p2, p0, Lcom/google/android/material/k/h$a;->b:Lcom/google/android/material/e/a;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1443
    new-instance v0, Lcom/google/android/material/k/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/h$a;Lcom/google/android/material/k/h$1;)V

    .line 1445
    invoke-static {v0}, Lcom/google/android/material/k/h;->d(Lcom/google/android/material/k/h;)Z

    return-object v0
.end method
