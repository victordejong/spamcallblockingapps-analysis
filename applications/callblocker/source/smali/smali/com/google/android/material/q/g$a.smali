.class final Lcom/google/android/material/q/g$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "MaterialShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/q/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/material/q/k;

.field public b:Lcom/google/android/material/j/a;

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
.method public constructor <init>(Lcom/google/android/material/q/g$a;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1363
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1332
    iput-object v2, p0, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    .line 1333
    iput-object v2, p0, Lcom/google/android/material/q/g$a;->e:Landroid/content/res/ColorStateList;

    .line 1334
    iput-object v2, p0, Lcom/google/android/material/q/g$a;->f:Landroid/content/res/ColorStateList;

    .line 1335
    iput-object v2, p0, Lcom/google/android/material/q/g$a;->g:Landroid/content/res/ColorStateList;

    .line 1336
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1337
    iput-object v2, p0, Lcom/google/android/material/q/g$a;->i:Landroid/graphics/Rect;

    .line 1339
    iput v4, p0, Lcom/google/android/material/q/g$a;->j:F

    .line 1340
    iput v4, p0, Lcom/google/android/material/q/g$a;->k:F

    .line 1343
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/q/g$a;->m:I

    .line 1344
    iput v3, p0, Lcom/google/android/material/q/g$a;->n:F

    .line 1345
    iput v3, p0, Lcom/google/android/material/q/g$a;->o:F

    .line 1346
    iput v3, p0, Lcom/google/android/material/q/g$a;->p:F

    .line 1347
    iput v1, p0, Lcom/google/android/material/q/g$a;->q:I

    .line 1348
    iput v1, p0, Lcom/google/android/material/q/g$a;->r:I

    .line 1349
    iput v1, p0, Lcom/google/android/material/q/g$a;->s:I

    .line 1350
    iput v1, p0, Lcom/google/android/material/q/g$a;->t:I

    .line 1352
    iput-boolean v1, p0, Lcom/google/android/material/q/g$a;->u:Z

    .line 1354
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->v:Landroid/graphics/Paint$Style;

    .line 1364
    iget-object v0, p1, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    .line 1365
    iget-object v0, p1, Lcom/google/android/material/q/g$a;->b:Lcom/google/android/material/j/a;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->b:Lcom/google/android/material/j/a;

    .line 1366
    iget v0, p1, Lcom/google/android/material/q/g$a;->l:F

    iput v0, p0, Lcom/google/android/material/q/g$a;->l:F

    .line 1367
    iget-object v0, p1, Lcom/google/android/material/q/g$a;->c:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->c:Landroid/graphics/ColorFilter;

    .line 1368
    iget-object v0, p1, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    .line 1369
    iget-object v0, p1, Lcom/google/android/material/q/g$a;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->e:Landroid/content/res/ColorStateList;

    .line 1370
    iget-object v0, p1, Lcom/google/android/material/q/g$a;->h:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1371
    iget-object v0, p1, Lcom/google/android/material/q/g$a;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->g:Landroid/content/res/ColorStateList;

    .line 1372
    iget v0, p1, Lcom/google/android/material/q/g$a;->m:I

    iput v0, p0, Lcom/google/android/material/q/g$a;->m:I

    .line 1373
    iget v0, p1, Lcom/google/android/material/q/g$a;->j:F

    iput v0, p0, Lcom/google/android/material/q/g$a;->j:F

    .line 1374
    iget v0, p1, Lcom/google/android/material/q/g$a;->s:I

    iput v0, p0, Lcom/google/android/material/q/g$a;->s:I

    .line 1375
    iget v0, p1, Lcom/google/android/material/q/g$a;->q:I

    iput v0, p0, Lcom/google/android/material/q/g$a;->q:I

    .line 1376
    iget-boolean v0, p1, Lcom/google/android/material/q/g$a;->u:Z

    iput-boolean v0, p0, Lcom/google/android/material/q/g$a;->u:Z

    .line 1377
    iget v0, p1, Lcom/google/android/material/q/g$a;->k:F

    iput v0, p0, Lcom/google/android/material/q/g$a;->k:F

    .line 1378
    iget v0, p1, Lcom/google/android/material/q/g$a;->n:F

    iput v0, p0, Lcom/google/android/material/q/g$a;->n:F

    .line 1379
    iget v0, p1, Lcom/google/android/material/q/g$a;->o:F

    iput v0, p0, Lcom/google/android/material/q/g$a;->o:F

    .line 1380
    iget v0, p1, Lcom/google/android/material/q/g$a;->p:F

    iput v0, p0, Lcom/google/android/material/q/g$a;->p:F

    .line 1381
    iget v0, p1, Lcom/google/android/material/q/g$a;->r:I

    iput v0, p0, Lcom/google/android/material/q/g$a;->r:I

    .line 1382
    iget v0, p1, Lcom/google/android/material/q/g$a;->t:I

    iput v0, p0, Lcom/google/android/material/q/g$a;->t:I

    .line 1383
    iget-object v0, p1, Lcom/google/android/material/q/g$a;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->f:Landroid/content/res/ColorStateList;

    .line 1384
    iget-object v0, p1, Lcom/google/android/material/q/g$a;->v:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->v:Landroid/graphics/Paint$Style;

    .line 1385
    iget-object v0, p1, Lcom/google/android/material/q/g$a;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1386
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/google/android/material/q/g$a;->i:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->i:Landroid/graphics/Rect;

    .line 1388
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/q/k;Lcom/google/android/material/j/a;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1358
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1332
    iput-object v2, p0, Lcom/google/android/material/q/g$a;->d:Landroid/content/res/ColorStateList;

    .line 1333
    iput-object v2, p0, Lcom/google/android/material/q/g$a;->e:Landroid/content/res/ColorStateList;

    .line 1334
    iput-object v2, p0, Lcom/google/android/material/q/g$a;->f:Landroid/content/res/ColorStateList;

    .line 1335
    iput-object v2, p0, Lcom/google/android/material/q/g$a;->g:Landroid/content/res/ColorStateList;

    .line 1336
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1337
    iput-object v2, p0, Lcom/google/android/material/q/g$a;->i:Landroid/graphics/Rect;

    .line 1339
    iput v4, p0, Lcom/google/android/material/q/g$a;->j:F

    .line 1340
    iput v4, p0, Lcom/google/android/material/q/g$a;->k:F

    .line 1343
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/q/g$a;->m:I

    .line 1344
    iput v3, p0, Lcom/google/android/material/q/g$a;->n:F

    .line 1345
    iput v3, p0, Lcom/google/android/material/q/g$a;->o:F

    .line 1346
    iput v3, p0, Lcom/google/android/material/q/g$a;->p:F

    .line 1347
    iput v1, p0, Lcom/google/android/material/q/g$a;->q:I

    .line 1348
    iput v1, p0, Lcom/google/android/material/q/g$a;->r:I

    .line 1349
    iput v1, p0, Lcom/google/android/material/q/g$a;->s:I

    .line 1350
    iput v1, p0, Lcom/google/android/material/q/g$a;->t:I

    .line 1352
    iput-boolean v1, p0, Lcom/google/android/material/q/g$a;->u:Z

    .line 1354
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/q/g$a;->v:Landroid/graphics/Paint$Style;

    .line 1359
    iput-object p1, p0, Lcom/google/android/material/q/g$a;->a:Lcom/google/android/material/q/k;

    .line 1360
    iput-object p2, p0, Lcom/google/android/material/q/g$a;->b:Lcom/google/android/material/j/a;

    .line 1361
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1401
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1393
    new-instance v0, Lcom/google/android/material/q/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/g$a;Lcom/google/android/material/q/g$1;)V

    .line 1395
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/q/g;->a(Lcom/google/android/material/q/g;Z)Z

    .line 1396
    return-object v0
.end method
