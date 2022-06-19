.class public final Lcom/balysv/materialmenu/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/balysv/materialmenu/a$c;,
        Lcom/balysv/materialmenu/a$d;,
        Lcom/balysv/materialmenu/a$a;,
        Lcom/balysv/materialmenu/a$b;
    }
.end annotation


# instance fields
.field private A:Lcom/balysv/materialmenu/a$c;

.field private B:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/balysv/materialmenu/a;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Ljava/lang/Object;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field d:F

.field public e:Z

.field public f:Lcom/balysv/materialmenu/a$b;

.field public g:Lcom/balysv/materialmenu/a$b;

.field h:Z

.field public i:Landroid/animation/ObjectAnimator;

.field j:Landroid/animation/Animator$AnimatorListener;

.field private final k:F

.field private final l:F

.field private final m:F

.field private final n:F

.field private final o:F

.field private final p:F

.field private final q:I

.field private final r:I

.field private final s:F

.field private final t:F

.field private final u:F

.field private final v:F

.field private final w:F

.field private final x:Lcom/balysv/materialmenu/a$d;

.field private y:Lcom/balysv/materialmenu/a$a;

.field private z:Z


# direct methods
.method private constructor <init>(ILcom/balysv/materialmenu/a$d;JIIFFFF)V
    .locals 3

    .line 222
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->a:Ljava/lang/Object;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/balysv/materialmenu/a;->d:F

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/balysv/materialmenu/a;->e:Z

    .line 172
    sget-object v0, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    .line 173
    sget-object v0, Lcom/balysv/materialmenu/a$a;->BURGER_ARROW:Lcom/balysv/materialmenu/a$a;

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    .line 704
    new-instance v0, Lcom/balysv/materialmenu/a$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "transformation"

    invoke-direct {v0, p0, v1, v2}, Lcom/balysv/materialmenu/a$1;-><init>(Lcom/balysv/materialmenu/a;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->B:Landroid/util/Property;

    .line 223
    iput p10, p0, Lcom/balysv/materialmenu/a;->l:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p10, v0

    .line 224
    iput v1, p0, Lcom/balysv/materialmenu/a;->m:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, p10

    .line 225
    iput v1, p0, Lcom/balysv/materialmenu/a;->n:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, p10

    .line 226
    iput v2, p0, Lcom/balysv/materialmenu/a;->o:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v2, v2, p10

    .line 227
    iput v2, p0, Lcom/balysv/materialmenu/a;->p:F

    div-float/2addr p10, v0

    .line 228
    iput p10, p0, Lcom/balysv/materialmenu/a;->k:F

    .line 229
    iput-object p2, p0, Lcom/balysv/materialmenu/a;->x:Lcom/balysv/materialmenu/a$d;

    .line 230
    iput p5, p0, Lcom/balysv/materialmenu/a;->q:I

    .line 231
    iput p6, p0, Lcom/balysv/materialmenu/a;->r:I

    .line 232
    iput p7, p0, Lcom/balysv/materialmenu/a;->t:F

    .line 233
    iput p8, p0, Lcom/balysv/materialmenu/a;->w:F

    .line 234
    iput p9, p0, Lcom/balysv/materialmenu/a;->s:F

    int-to-float p2, p5

    sub-float/2addr p2, p7

    div-float/2addr p2, v0

    .line 235
    iput p2, p0, Lcom/balysv/materialmenu/a;->v:F

    int-to-float p2, p6

    const/high16 p5, 0x40a00000    # 5.0f

    mul-float v1, v1, p5

    sub-float/2addr p2, v1

    div-float/2addr p2, v0

    .line 236
    iput p2, p0, Lcom/balysv/materialmenu/a;->u:F

    .line 238
    invoke-direct {p0, p1}, Lcom/balysv/materialmenu/a;->a(I)V

    long-to-int p1, p3

    .line 239
    invoke-direct {p0, p1}, Lcom/balysv/materialmenu/a;->b(I)V

    .line 241
    new-instance p1, Lcom/balysv/materialmenu/a$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/balysv/materialmenu/a$c;-><init>(Lcom/balysv/materialmenu/a;Lcom/balysv/materialmenu/a$1;)V

    iput-object p1, p0, Lcom/balysv/materialmenu/a;->A:Lcom/balysv/materialmenu/a$c;

    return-void
.end method

.method synthetic constructor <init>(ILcom/balysv/materialmenu/a$d;JIIFFFFLcom/balysv/materialmenu/a$1;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p10}, Lcom/balysv/materialmenu/a;-><init>(ILcom/balysv/materialmenu/a$d;JIIFFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/balysv/materialmenu/a$d;)V
    .locals 6

    const/4 v4, 0x1

    const/16 v5, 0x320

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/balysv/materialmenu/a;-><init>(Landroid/content/Context;ILcom/balysv/materialmenu/a$d;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/balysv/materialmenu/a$d;I)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/balysv/materialmenu/a;-><init>(Landroid/content/Context;ILcom/balysv/materialmenu/a$d;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/balysv/materialmenu/a$d;II)V
    .locals 6

    .line 192
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->a:Ljava/lang/Object;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/balysv/materialmenu/a;->d:F

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/balysv/materialmenu/a;->e:Z

    .line 172
    sget-object v0, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    .line 173
    sget-object v0, Lcom/balysv/materialmenu/a$a;->BURGER_ARROW:Lcom/balysv/materialmenu/a$a;

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    .line 704
    new-instance v0, Lcom/balysv/materialmenu/a$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "transformation"

    invoke-direct {v0, p0, v1, v2}, Lcom/balysv/materialmenu/a$1;-><init>(Lcom/balysv/materialmenu/a;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->B:Landroid/util/Property;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 195
    invoke-static {p1, v0}, Lcom/balysv/materialmenu/a;->a(Landroid/content/res/Resources;F)F

    move-result v0

    int-to-float p4, p4

    mul-float v0, v0, p4

    iput v0, p0, Lcom/balysv/materialmenu/a;->l:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 196
    invoke-static {p1, v1}, Lcom/balysv/materialmenu/a;->a(Landroid/content/res/Resources;F)F

    move-result v2

    mul-float v2, v2, p4

    iput v2, p0, Lcom/balysv/materialmenu/a;->m:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 197
    invoke-static {p1, v2}, Lcom/balysv/materialmenu/a;->a(Landroid/content/res/Resources;F)F

    move-result v2

    mul-float v2, v2, p4

    iput v2, p0, Lcom/balysv/materialmenu/a;->n:F

    const/high16 v3, 0x40800000    # 4.0f

    .line 198
    invoke-static {p1, v3}, Lcom/balysv/materialmenu/a;->a(Landroid/content/res/Resources;F)F

    move-result v3

    mul-float v3, v3, p4

    iput v3, p0, Lcom/balysv/materialmenu/a;->o:F

    const/high16 v3, 0x41000000    # 8.0f

    .line 199
    invoke-static {p1, v3}, Lcom/balysv/materialmenu/a;->a(Landroid/content/res/Resources;F)F

    move-result v3

    mul-float v3, v3, p4

    iput v3, p0, Lcom/balysv/materialmenu/a;->p:F

    div-float/2addr v0, v1

    .line 200
    iput v0, p0, Lcom/balysv/materialmenu/a;->k:F

    .line 202
    iput-object p3, p0, Lcom/balysv/materialmenu/a;->x:Lcom/balysv/materialmenu/a$d;

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/balysv/materialmenu/a;->h:Z

    const/high16 v0, 0x42200000    # 40.0f

    .line 204
    invoke-static {p1, v0}, Lcom/balysv/materialmenu/a;->a(Landroid/content/res/Resources;F)F

    move-result v3

    mul-float v3, v3, p4

    float-to-int v3, v3

    iput v3, p0, Lcom/balysv/materialmenu/a;->q:I

    .line 205
    invoke-static {p1, v0}, Lcom/balysv/materialmenu/a;->a(Landroid/content/res/Resources;F)F

    move-result v0

    mul-float v0, v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/balysv/materialmenu/a;->r:I

    const/high16 v4, 0x41a00000    # 20.0f

    .line 206
    invoke-static {p1, v4}, Lcom/balysv/materialmenu/a;->a(Landroid/content/res/Resources;F)F

    move-result v4

    mul-float v4, v4, p4

    iput v4, p0, Lcom/balysv/materialmenu/a;->t:F

    const/high16 v5, 0x41900000    # 18.0f

    .line 207
    invoke-static {p1, v5}, Lcom/balysv/materialmenu/a;->a(Landroid/content/res/Resources;F)F

    move-result v5

    mul-float v5, v5, p4

    iput v5, p0, Lcom/balysv/materialmenu/a;->w:F

    .line 208
    invoke-static {p3}, Lcom/balysv/materialmenu/a$d;->access$000(Lcom/balysv/materialmenu/a$d;)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p1, p3}, Lcom/balysv/materialmenu/a;->a(Landroid/content/res/Resources;F)F

    move-result p1

    mul-float p1, p1, p4

    iput p1, p0, Lcom/balysv/materialmenu/a;->s:F

    int-to-float p1, v3

    sub-float/2addr p1, v4

    div-float/2addr p1, v1

    .line 210
    iput p1, p0, Lcom/balysv/materialmenu/a;->v:F

    int-to-float p1, v0

    const/high16 p3, 0x40a00000    # 5.0f

    mul-float v2, v2, p3

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    .line 211
    iput p1, p0, Lcom/balysv/materialmenu/a;->u:F

    .line 213
    invoke-direct {p0, p2}, Lcom/balysv/materialmenu/a;->a(I)V

    .line 214
    invoke-direct {p0, p5}, Lcom/balysv/materialmenu/a;->b(I)V

    .line 216
    new-instance p1, Lcom/balysv/materialmenu/a$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/balysv/materialmenu/a$c;-><init>(Lcom/balysv/materialmenu/a;Lcom/balysv/materialmenu/a$1;)V

    iput-object p1, p0, Lcom/balysv/materialmenu/a;->A:Lcom/balysv/materialmenu/a$c;

    return-void
.end method

.method private a(F)F
    .locals 3

    .line 561
    sget-object v0, Lcom/balysv/materialmenu/a$3;->b:[I

    iget-object v1, p0, Lcom/balysv/materialmenu/a;->x:Lcom/balysv/materialmenu/a$d;

    invoke-virtual {v1}, Lcom/balysv/materialmenu/a$d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    sget-object v1, Lcom/balysv/materialmenu/a$a;->ARROW_X:Lcom/balysv/materialmenu/a$a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    sget-object v1, Lcom/balysv/materialmenu/a$a;->X_CHECK:Lcom/balysv/materialmenu/a$a;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 576
    :cond_1
    iget v0, p0, Lcom/balysv/materialmenu/a;->o:F

    :goto_0
    mul-float p1, p1, v0

    return p1

    .line 574
    :cond_2
    :goto_1
    iget v0, p0, Lcom/balysv/materialmenu/a;->o:F

    iget v1, p0, Lcom/balysv/materialmenu/a;->n:F

    iget v2, p0, Lcom/balysv/materialmenu/a;->l:F

    add-float/2addr v1, v2

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    return v0

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    sget-object v1, Lcom/balysv/materialmenu/a$a;->ARROW_X:Lcom/balysv/materialmenu/a$a;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    sget-object v1, Lcom/balysv/materialmenu/a$a;->X_CHECK:Lcom/balysv/materialmenu/a$a;

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 571
    :cond_4
    iget v0, p0, Lcom/balysv/materialmenu/a;->n:F

    iget v1, p0, Lcom/balysv/materialmenu/a;->k:F

    add-float/2addr v0, v1

    goto :goto_0

    .line 569
    :cond_5
    :goto_2
    iget v0, p0, Lcom/balysv/materialmenu/a;->n:F

    iget v1, p0, Lcom/balysv/materialmenu/a;->k:F

    add-float v2, v0, v1

    add-float/2addr v0, v1

    mul-float v0, v0, p1

    sub-float/2addr v2, v0

    return v2

    .line 563
    :cond_6
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    sget-object v1, Lcom/balysv/materialmenu/a$a;->ARROW_X:Lcom/balysv/materialmenu/a$a;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    sget-object v1, Lcom/balysv/materialmenu/a$a;->X_CHECK:Lcom/balysv/materialmenu/a$a;

    if-ne v0, v1, :cond_7

    goto :goto_3

    .line 566
    :cond_7
    iget v0, p0, Lcom/balysv/materialmenu/a;->n:F

    goto :goto_0

    .line 564
    :cond_8
    :goto_3
    iget v0, p0, Lcom/balysv/materialmenu/a;->n:F

    mul-float p1, p1, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method private static a(Landroid/content/res/Resources;F)F
    .locals 1

    .line 854
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private a(I)V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/balysv/materialmenu/a;->s:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 252
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget-object p1, p0, Lcom/balysv/materialmenu/a;->c:Landroid/graphics/Paint;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    iget p1, p0, Lcom/balysv/materialmenu/a;->q:I

    iget v0, p0, Lcom/balysv/materialmenu/a;->r:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/balysv/materialmenu/a;->setBounds(IIII)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 557
    iget v0, p0, Lcom/balysv/materialmenu/a;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/balysv/materialmenu/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/balysv/materialmenu/a;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/balysv/materialmenu/a;)Lcom/balysv/materialmenu/a$b;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/balysv/materialmenu/a;->g:Lcom/balysv/materialmenu/a$b;

    return-object p0
.end method

.method private b(I)V
    .locals 4

    .line 727
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->B:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    .line 728
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 729
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 730
    iget-object p1, p0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/balysv/materialmenu/a$2;

    invoke-direct {v0, p0}, Lcom/balysv/materialmenu/a$2;-><init>(Lcom/balysv/materialmenu/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic c(Lcom/balysv/materialmenu/a;)Landroid/graphics/Paint;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/balysv/materialmenu/a;->c:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic d(Lcom/balysv/materialmenu/a;)Lcom/balysv/materialmenu/a$d;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/balysv/materialmenu/a;->x:Lcom/balysv/materialmenu/a$d;

    return-object p0
.end method

.method static synthetic e(Lcom/balysv/materialmenu/a;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic f(Lcom/balysv/materialmenu/a;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/balysv/materialmenu/a;->q:I

    return p0
.end method

.method static synthetic g(Lcom/balysv/materialmenu/a;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/balysv/materialmenu/a;->r:I

    return p0
.end method

.method static synthetic h(Lcom/balysv/materialmenu/a;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/balysv/materialmenu/a;->t:F

    return p0
.end method

.method static synthetic i(Lcom/balysv/materialmenu/a;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/balysv/materialmenu/a;->w:F

    return p0
.end method

.method static synthetic j(Lcom/balysv/materialmenu/a;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/balysv/materialmenu/a;->s:F

    return p0
.end method

.method static synthetic k(Lcom/balysv/materialmenu/a;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/balysv/materialmenu/a;->l:F

    return p0
.end method

.method static synthetic l(Lcom/balysv/materialmenu/a;)Lcom/balysv/materialmenu/a$b;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    return-object p0
.end method

.method static synthetic m(Lcom/balysv/materialmenu/a;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/balysv/materialmenu/a;->h:Z

    return p0
.end method

.method static synthetic n(Lcom/balysv/materialmenu/a;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/balysv/materialmenu/a;->z:Z

    return p0
.end method


# virtual methods
.method public final a(Lcom/balysv/materialmenu/a$b;)V
    .locals 4

    .line 624
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-boolean v1, p0, Lcom/balysv/materialmenu/a;->e:Z

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v1, 0x0

    .line 627
    iput-boolean v1, p0, Lcom/balysv/materialmenu/a;->e:Z

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    if-ne v1, p1, :cond_1

    monitor-exit v0

    return-void

    .line 632
    :cond_1
    sget-object v1, Lcom/balysv/materialmenu/a$3;->c:[I

    invoke-virtual {p1}, Lcom/balysv/materialmenu/a$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 646
    :cond_2
    sget-object v1, Lcom/balysv/materialmenu/a$a;->BURGER_CHECK:Lcom/balysv/materialmenu/a$a;

    iput-object v1, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    .line 647
    iput v3, p0, Lcom/balysv/materialmenu/a;->d:F

    goto :goto_0

    .line 642
    :cond_3
    sget-object v1, Lcom/balysv/materialmenu/a$a;->BURGER_X:Lcom/balysv/materialmenu/a$a;

    iput-object v1, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    .line 643
    iput v3, p0, Lcom/balysv/materialmenu/a;->d:F

    goto :goto_0

    .line 638
    :cond_4
    sget-object v1, Lcom/balysv/materialmenu/a$a;->BURGER_ARROW:Lcom/balysv/materialmenu/a$a;

    iput-object v1, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    .line 639
    iput v3, p0, Lcom/balysv/materialmenu/a;->d:F

    goto :goto_0

    .line 634
    :cond_5
    sget-object v1, Lcom/balysv/materialmenu/a$a;->BURGER_ARROW:Lcom/balysv/materialmenu/a$a;

    iput-object v1, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    const/4 v1, 0x0

    .line 635
    iput v1, p0, Lcom/balysv/materialmenu/a;->d:F

    .line 649
    :goto_0
    iput-object p1, p0, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    .line 650
    invoke-virtual {p0}, Lcom/balysv/materialmenu/a;->invalidateSelf()V

    .line 651
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    .line 684
    iput-boolean p1, p0, Lcom/balysv/materialmenu/a;->h:Z

    .line 685
    invoke-virtual {p0}, Lcom/balysv/materialmenu/a;->invalidateSelf()V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 689
    iput-boolean p1, p0, Lcom/balysv/materialmenu/a;->z:Z

    .line 690
    invoke-virtual {p0}, Lcom/balysv/materialmenu/a;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 263
    iget-boolean v1, v0, Lcom/balysv/materialmenu/a;->h:Z

    if-nez v1, :cond_0

    return-void

    .line 265
    :cond_0
    iget v1, v0, Lcom/balysv/materialmenu/a;->d:F

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v9

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    sub-float v1, v8, v1

    :goto_0
    move v10, v1

    .line 267
    iget-boolean v1, v0, Lcom/balysv/materialmenu/a;->z:Z

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, -0x40800000    # -1.0f

    .line 269
    invoke-virtual {v7, v1, v9, v11, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/balysv/materialmenu/a;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v7, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1355
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1360
    iget v1, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/balysv/materialmenu/a;->n:F

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    .line 1361
    iget v3, v0, Lcom/balysv/materialmenu/a;->u:F

    iget v4, v0, Lcom/balysv/materialmenu/a;->m:F

    add-float v5, v3, v4

    .line 1363
    iget v6, v0, Lcom/balysv/materialmenu/a;->v:F

    add-float v12, v3, v4

    int-to-float v1, v1

    sub-float/2addr v1, v6

    add-float v13, v3, v4

    .line 1369
    sget-object v3, Lcom/balysv/materialmenu/a$3;->a:[I

    iget-object v4, v0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    invoke-virtual {v4}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/high16 v4, 0x42300000    # 44.0f

    const/high16 v14, 0x42b40000    # 90.0f

    const/high16 v16, 0x43610000    # 225.0f

    const/high16 v17, 0x437f0000    # 255.0f

    const/high16 v18, 0x43070000    # 135.0f

    packed-switch v3, :pswitch_data_0

    move v8, v1

    const/16 v1, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 1432
    :pswitch_0
    iget v3, v0, Lcom/balysv/materialmenu/a;->v:F

    iget v11, v0, Lcom/balysv/materialmenu/a;->o:F

    add-float/2addr v3, v11

    .line 1433
    iget v11, v0, Lcom/balysv/materialmenu/a;->u:F

    iget v8, v0, Lcom/balysv/materialmenu/a;->n:F

    add-float/2addr v11, v8

    sub-float v19, v9, v10

    mul-float v20, v8, v19

    sub-float v20, v8, v20

    add-float v1, v1, v20

    add-float/2addr v6, v8

    mul-float v8, v19, v17

    float-to-int v8, v8

    goto :goto_3

    :pswitch_1
    sub-float v3, v9, v10

    mul-float v3, v3, v17

    float-to-int v8, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto :goto_2

    :pswitch_2
    sub-float v3, v9, v10

    mul-float v3, v3, v17

    float-to-int v8, v3

    .line 1417
    iget v3, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1418
    iget v4, v0, Lcom/balysv/materialmenu/a;->r:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v11, v4

    .line 1421
    invoke-direct {v0, v9}, Lcom/balysv/materialmenu/a;->a(F)F

    move-result v4

    sub-float/2addr v1, v4

    .line 1422
    iget v4, v0, Lcom/balysv/materialmenu/a;->n:F

    add-float/2addr v6, v4

    const/high16 v4, 0x43610000    # 225.0f

    :goto_2
    const/4 v14, 0x0

    :goto_3
    move/from16 v21, v8

    move v8, v1

    move/from16 v1, v21

    goto/16 :goto_6

    :pswitch_3
    const/high16 v3, -0x3ccb0000    # -181.0f

    mul-float v3, v3, v10

    add-float v4, v3, v16

    mul-float v3, v10, v14

    .line 1405
    iget v8, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v11, v8, 0x2

    int-to-float v11, v11

    iget v15, v0, Lcom/balysv/materialmenu/a;->v:F

    iget v9, v0, Lcom/balysv/materialmenu/a;->o:F

    add-float/2addr v15, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v15, v8

    mul-float v15, v15, v10

    add-float v8, v11, v15

    .line 1406
    iget v9, v0, Lcom/balysv/materialmenu/a;->r:I

    div-int/lit8 v11, v9, 0x2

    int-to-float v11, v11

    iget v15, v0, Lcom/balysv/materialmenu/a;->u:F

    iget v14, v0, Lcom/balysv/materialmenu/a;->n:F

    add-float/2addr v15, v14

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v15, v9

    mul-float v15, v15, v10

    add-float/2addr v11, v15

    .line 1409
    invoke-direct {v0, v10}, Lcom/balysv/materialmenu/a;->a(F)F

    move-result v9

    sub-float/2addr v1, v9

    .line 1410
    iget v9, v0, Lcom/balysv/materialmenu/a;->n:F

    add-float/2addr v6, v9

    move v14, v3

    move v3, v8

    goto :goto_4

    :pswitch_4
    mul-float v4, v4, v10

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float v8, v10, v3

    .line 1393
    iget v3, v0, Lcom/balysv/materialmenu/a;->v:F

    iget v9, v0, Lcom/balysv/materialmenu/a;->o:F

    add-float/2addr v3, v9

    .line 1394
    iget v9, v0, Lcom/balysv/materialmenu/a;->u:F

    iget v11, v0, Lcom/balysv/materialmenu/a;->n:F

    add-float/2addr v9, v11

    mul-float v11, v11, v10

    add-float/2addr v6, v11

    move v14, v8

    move v11, v9

    :goto_4
    move v8, v1

    const/16 v1, 0xff

    goto :goto_6

    .line 1371
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/balysv/materialmenu/a;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    mul-float v3, v10, v16

    move v4, v3

    goto :goto_5

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v9, v3, v10

    mul-float v9, v9, v18

    add-float v9, v9, v16

    move v4, v9

    .line 1379
    :goto_5
    iget v3, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1380
    iget v8, v0, Lcom/balysv/materialmenu/a;->r:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v11, v8

    .line 1383
    invoke-direct {v0, v10}, Lcom/balysv/materialmenu/a;->a(F)F

    move-result v8

    sub-float/2addr v1, v8

    .line 1384
    iget v8, v0, Lcom/balysv/materialmenu/a;->n:F

    mul-float v8, v8, v10

    add-float/2addr v6, v8

    move v8, v1

    const/16 v1, 0xff

    goto/16 :goto_1

    .line 1442
    :goto_6
    iget-object v9, v0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1443
    invoke-virtual {v7, v4, v3, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1444
    invoke-virtual {v7, v14, v2, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1445
    iget-object v9, v0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v6

    move v3, v12

    move v4, v8

    move v5, v13

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1446
    iget-object v1, v0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2283
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2284
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2287
    iget v1, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    .line 2288
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    .line 2289
    iget v4, v0, Lcom/balysv/materialmenu/a;->v:F

    .line 2290
    iget v5, v0, Lcom/balysv/materialmenu/a;->u:F

    iget v6, v0, Lcom/balysv/materialmenu/a;->n:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v6, v8

    const/high16 v11, 0x40a00000    # 5.0f

    mul-float v9, v9, v11

    add-float/2addr v9, v5

    int-to-float v1, v1

    sub-float/2addr v1, v4

    div-float/2addr v6, v8

    mul-float v6, v6, v11

    add-float/2addr v5, v6

    .line 2295
    sget-object v6, Lcom/balysv/materialmenu/a$3;->a:[I

    iget-object v8, v0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    invoke-virtual {v8}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_1

    move v6, v1

    move v8, v2

    const/4 v1, 0x0

    const/16 v2, 0xff

    goto/16 :goto_c

    :pswitch_6
    mul-float v2, v10, v17

    float-to-int v2, v2

    mul-float v6, v10, v18

    .line 2342
    iget v8, v0, Lcom/balysv/materialmenu/a;->o:F

    iget v11, v0, Lcom/balysv/materialmenu/a;->n:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v11, v12

    add-float/2addr v8, v13

    mul-float v8, v8, v10

    add-float/2addr v4, v8

    .line 2343
    iget v8, v0, Lcom/balysv/materialmenu/a;->l:F

    mul-float v8, v8, v10

    add-float/2addr v1, v8

    .line 2344
    iget v8, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v11

    iget v11, v0, Lcom/balysv/materialmenu/a;->k:F

    add-float/2addr v8, v11

    goto :goto_9

    :pswitch_7
    mul-float v6, v10, v18

    .line 2332
    iget v2, v0, Lcom/balysv/materialmenu/a;->o:F

    iget v8, v0, Lcom/balysv/materialmenu/a;->n:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v8, v11

    add-float/2addr v2, v12

    mul-float v2, v2, v10

    add-float/2addr v4, v2

    .line 2333
    iget v2, v0, Lcom/balysv/materialmenu/a;->l:F

    mul-float v2, v2, v10

    add-float/2addr v1, v2

    .line 2334
    iget v2, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v8

    iget v8, v0, Lcom/balysv/materialmenu/a;->k:F

    :goto_7
    add-float/2addr v2, v8

    :goto_8
    move v8, v2

    const/16 v2, 0xff

    :goto_9
    move/from16 v21, v6

    move v6, v1

    move/from16 v1, v21

    goto/16 :goto_c

    .line 2316
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/balysv/materialmenu/a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    mul-float v2, v10, v18

    move v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v6, v2, v10

    mul-float v6, v6, v18

    sub-float v6, v18, v6

    .line 2324
    :goto_a
    iget v8, v0, Lcom/balysv/materialmenu/a;->n:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v8, v11

    iget v11, v0, Lcom/balysv/materialmenu/a;->o:F

    add-float/2addr v12, v11

    sub-float v11, v2, v10

    iget v2, v0, Lcom/balysv/materialmenu/a;->m:F

    mul-float v11, v11, v2

    sub-float/2addr v12, v11

    add-float/2addr v4, v12

    .line 2325
    iget v2, v0, Lcom/balysv/materialmenu/a;->l:F

    mul-float v2, v2, v10

    add-float/2addr v1, v2

    .line 2326
    iget v2, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v8

    iget v8, v0, Lcom/balysv/materialmenu/a;->k:F

    goto :goto_7

    :pswitch_9
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v8, v6, v10

    mul-float v11, v8, v17

    float-to-int v11, v11

    .line 2313
    iget v12, v0, Lcom/balysv/materialmenu/a;->m:F

    mul-float v8, v8, v12

    add-float/2addr v4, v8

    move v6, v1

    move v8, v2

    move v2, v11

    const/4 v1, 0x0

    goto :goto_c

    :pswitch_a
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v8, v6, v10

    mul-float v8, v8, v17

    float-to-int v8, v8

    move v6, v1

    const/4 v1, 0x0

    move/from16 v21, v8

    move v8, v2

    move/from16 v2, v21

    goto :goto_c

    :pswitch_b
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2298
    invoke-direct/range {p0 .. p0}, Lcom/balysv/materialmenu/a;->a()Z

    move-result v8

    const/high16 v11, 0x43340000    # 180.0f

    if-eqz v8, :cond_5

    mul-float v11, v11, v10

    move v6, v11

    goto :goto_b

    :cond_5
    sub-float v8, v6, v10

    mul-float v8, v8, v11

    add-float/2addr v8, v11

    move v6, v8

    .line 2304
    :goto_b
    invoke-direct {v0, v10}, Lcom/balysv/materialmenu/a;->a(F)F

    move-result v8

    mul-float v8, v8, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    sub-float/2addr v1, v8

    goto :goto_8

    .line 2348
    :goto_c
    iget-object v11, v0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2349
    invoke-virtual {v7, v1, v8, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2350
    iget-object v8, v0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    move v3, v9

    move v4, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2351
    iget-object v1, v0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2450
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2451
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2456
    iget v1, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/balysv/materialmenu/a;->n:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 2457
    iget v3, v0, Lcom/balysv/materialmenu/a;->r:I

    int-to-float v4, v3

    iget v5, v0, Lcom/balysv/materialmenu/a;->u:F

    sub-float/2addr v4, v5

    iget v6, v0, Lcom/balysv/materialmenu/a;->m:F

    sub-float/2addr v4, v6

    .line 2459
    iget v8, v0, Lcom/balysv/materialmenu/a;->v:F

    int-to-float v9, v3

    sub-float/2addr v9, v5

    sub-float/2addr v9, v6

    int-to-float v1, v1

    sub-float/2addr v1, v8

    int-to-float v3, v3

    sub-float/2addr v3, v5

    sub-float v5, v3, v6

    .line 2464
    sget-object v3, Lcom/balysv/materialmenu/a$3;->a:[I

    iget-object v6, v0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    invoke-virtual {v6}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/high16 v6, -0x3dd00000    # -44.0f

    const/high16 v11, -0x3d4c0000    # -90.0f

    packed-switch v3, :pswitch_data_2

    move v6, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_11

    :pswitch_c
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v10

    mul-float v11, v11, v3

    const/high16 v12, 0x42b20000    # 89.0f

    mul-float v12, v12, v10

    add-float/2addr v6, v12

    .line 2542
    iget v12, v0, Lcom/balysv/materialmenu/a;->v:F

    iget v13, v0, Lcom/balysv/materialmenu/a;->o:F

    add-float v14, v12, v13

    iget v15, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move/from16 v16, v6

    iget v6, v0, Lcom/balysv/materialmenu/a;->n:F

    add-float/2addr v15, v6

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    mul-float v15, v15, v10

    add-float v12, v14, v15

    .line 2543
    iget v14, v0, Lcom/balysv/materialmenu/a;->r:I

    int-to-float v15, v14

    move/from16 v17, v11

    iget v11, v0, Lcom/balysv/materialmenu/a;->u:F

    sub-float/2addr v15, v11

    sub-float/2addr v15, v6

    div-int/lit8 v6, v14, 0x2

    int-to-float v6, v6

    add-float/2addr v11, v6

    int-to-float v6, v14

    sub-float/2addr v11, v6

    mul-float v11, v11, v10

    add-float/2addr v11, v15

    .line 2546
    iget v6, v0, Lcom/balysv/materialmenu/a;->p:F

    iget v10, v0, Lcom/balysv/materialmenu/a;->l:F

    add-float/2addr v13, v10

    mul-float v13, v13, v3

    sub-float/2addr v6, v13

    add-float/2addr v8, v6

    .line 2547
    invoke-direct {v0, v3}, Lcom/balysv/materialmenu/a;->a(F)F

    move-result v3

    sub-float/2addr v1, v3

    move v6, v1

    move v3, v12

    move/from16 v1, v17

    move v12, v11

    move/from16 v11, v16

    goto/16 :goto_11

    :pswitch_d
    const/high16 v3, 0x42340000    # 45.0f

    mul-float v3, v3, v10

    .line 2529
    iget v6, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v11, v0, Lcom/balysv/materialmenu/a;->n:F

    mul-float v12, v11, v10

    add-float/2addr v6, v12

    .line 2530
    iget v12, v0, Lcom/balysv/materialmenu/a;->r:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    mul-float v11, v11, v10

    sub-float/2addr v12, v11

    .line 2533
    iget v11, v0, Lcom/balysv/materialmenu/a;->p:F

    mul-float v11, v11, v10

    add-float/2addr v8, v11

    .line 2534
    invoke-direct {v0, v10}, Lcom/balysv/materialmenu/a;->a(F)F

    move-result v10

    sub-float/2addr v1, v10

    move v11, v3

    move v3, v6

    goto :goto_d

    :pswitch_e
    mul-float v11, v11, v10

    add-float v11, v11, v18

    .line 2517
    iget v3, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v6, v0, Lcom/balysv/materialmenu/a;->n:F

    mul-float v12, v6, v10

    add-float/2addr v3, v12

    .line 2518
    iget v12, v0, Lcom/balysv/materialmenu/a;->r:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    mul-float v6, v6, v10

    sub-float/2addr v12, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2521
    invoke-direct {v0, v6}, Lcom/balysv/materialmenu/a;->a(F)F

    move-result v6

    sub-float/2addr v1, v6

    .line 2522
    iget v6, v0, Lcom/balysv/materialmenu/a;->n:F

    iget v13, v0, Lcom/balysv/materialmenu/a;->o:F

    iget v14, v0, Lcom/balysv/materialmenu/a;->l:F

    add-float/2addr v13, v14

    mul-float v13, v13, v10

    add-float/2addr v6, v13

    add-float/2addr v8, v6

    :goto_d
    move v6, v1

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_f
    const/high16 v3, 0x43350000    # 181.0f

    mul-float v3, v3, v10

    add-float v3, v3, v18

    mul-float v11, v11, v10

    .line 2505
    iget v6, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v12, v6, 0x2

    int-to-float v12, v12

    iget v13, v0, Lcom/balysv/materialmenu/a;->v:F

    iget v14, v0, Lcom/balysv/materialmenu/a;->o:F

    add-float/2addr v13, v14

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v13, v6

    mul-float v13, v13, v10

    add-float v6, v12, v13

    .line 2506
    iget v12, v0, Lcom/balysv/materialmenu/a;->r:I

    div-int/lit8 v13, v12, 0x2

    int-to-float v13, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    iget v14, v0, Lcom/balysv/materialmenu/a;->u:F

    sub-float/2addr v12, v14

    iget v14, v0, Lcom/balysv/materialmenu/a;->n:F

    sub-float/2addr v12, v14

    mul-float v12, v12, v10

    add-float/2addr v12, v13

    .line 2509
    invoke-direct {v0, v10}, Lcom/balysv/materialmenu/a;->a(F)F

    move-result v10

    sub-float/2addr v1, v10

    .line 2510
    iget v10, v0, Lcom/balysv/materialmenu/a;->n:F

    add-float/2addr v8, v10

    :goto_e
    move/from16 v21, v6

    move v6, v1

    move v1, v11

    move v11, v3

    move/from16 v3, v21

    goto :goto_11

    .line 2482
    :pswitch_10
    invoke-direct/range {p0 .. p0}, Lcom/balysv/materialmenu/a;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    mul-float v11, v11, v10

    goto :goto_f

    :cond_6
    const/high16 v3, 0x42b40000    # 90.0f

    mul-float v14, v10, v3

    move v11, v14

    :goto_f
    mul-float v3, v10, v6

    .line 2493
    iget v6, v0, Lcom/balysv/materialmenu/a;->v:F

    iget v12, v0, Lcom/balysv/materialmenu/a;->o:F

    add-float/2addr v6, v12

    .line 2494
    iget v12, v0, Lcom/balysv/materialmenu/a;->r:I

    int-to-float v12, v12

    iget v13, v0, Lcom/balysv/materialmenu/a;->u:F

    sub-float/2addr v12, v13

    iget v13, v0, Lcom/balysv/materialmenu/a;->n:F

    sub-float/2addr v12, v13

    mul-float v13, v13, v10

    add-float/2addr v8, v13

    goto :goto_e

    .line 2466
    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/balysv/materialmenu/a;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-float v18, v18, v10

    goto :goto_10

    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v10

    mul-float v1, v1, v16

    add-float v18, v1, v18

    .line 2474
    :goto_10
    iget v1, v0, Lcom/balysv/materialmenu/a;->q:I

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    .line 2475
    iget v6, v0, Lcom/balysv/materialmenu/a;->r:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    int-to-float v1, v1

    .line 2478
    iget v8, v0, Lcom/balysv/materialmenu/a;->v:F

    sub-float/2addr v1, v8

    invoke-direct {v0, v10}, Lcom/balysv/materialmenu/a;->a(F)F

    move-result v8

    sub-float/2addr v1, v8

    .line 2479
    iget v8, v0, Lcom/balysv/materialmenu/a;->v:F

    iget v11, v0, Lcom/balysv/materialmenu/a;->n:F

    mul-float v11, v11, v10

    add-float/2addr v8, v11

    move v12, v6

    move/from16 v11, v18

    goto/16 :goto_d

    .line 2551
    :goto_11
    invoke-virtual {v7, v11, v3, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2552
    invoke-virtual {v7, v1, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2553
    iget-object v10, v0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move v4, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 277
    iget-boolean v1, v0, Lcom/balysv/materialmenu/a;->z:Z

    if-eqz v1, :cond_8

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->A:Lcom/balysv/materialmenu/a$c;

    invoke-virtual {p0}, Lcom/balysv/materialmenu/a;->getChangingConfigurations()I

    move-result v1

    invoke-static {v0, v1}, Lcom/balysv/materialmenu/a$c;->a(Lcom/balysv/materialmenu/a$c;I)I

    .line 823
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->A:Lcom/balysv/materialmenu/a$c;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 818
    iget v0, p0, Lcom/balysv/materialmenu/a;->r:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 814
    iget v0, p0, Lcom/balysv/materialmenu/a;->q:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 810
    iget-boolean v0, p0, Lcom/balysv/materialmenu/a;->e:Z

    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 827
    new-instance v0, Lcom/balysv/materialmenu/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/balysv/materialmenu/a$c;-><init>(Lcom/balysv/materialmenu/a;Lcom/balysv/materialmenu/a$1;)V

    iput-object v0, p0, Lcom/balysv/materialmenu/a;->A:Lcom/balysv/materialmenu/a$c;

    return-object p0
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final start()V
    .locals 11

    .line 784
    iget-boolean v0, p0, Lcom/balysv/materialmenu/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->g:Lcom/balysv/materialmenu/a$b;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x1

    .line 787
    iput-boolean v0, p0, Lcom/balysv/materialmenu/a;->e:Z

    .line 2739
    sget-object v2, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2740
    :goto_0
    iget-object v2, p0, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    sget-object v4, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 2741
    :goto_1
    iget-object v4, p0, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    sget-object v5, Lcom/balysv/materialmenu/a$b;->X:Lcom/balysv/materialmenu/a$b;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 2742
    :goto_2
    iget-object v5, p0, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    sget-object v6, Lcom/balysv/materialmenu/a$b;->CHECK:Lcom/balysv/materialmenu/a$b;

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 2743
    :goto_3
    iget-object v6, p0, Lcom/balysv/materialmenu/a;->g:Lcom/balysv/materialmenu/a$b;

    sget-object v7, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    .line 2744
    :goto_4
    iget-object v7, p0, Lcom/balysv/materialmenu/a;->g:Lcom/balysv/materialmenu/a$b;

    sget-object v8, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    .line 2745
    :goto_5
    iget-object v8, p0, Lcom/balysv/materialmenu/a;->g:Lcom/balysv/materialmenu/a$b;

    sget-object v9, Lcom/balysv/materialmenu/a$b;->X:Lcom/balysv/materialmenu/a$b;

    if-ne v8, v9, :cond_7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    .line 2746
    :goto_6
    iget-object v9, p0, Lcom/balysv/materialmenu/a;->g:Lcom/balysv/materialmenu/a$b;

    sget-object v10, Lcom/balysv/materialmenu/a$b;->CHECK:Lcom/balysv/materialmenu/a$b;

    if-ne v9, v10, :cond_8

    const/4 v9, 0x1

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    const/4 v10, 0x2

    if-eqz v1, :cond_9

    if-nez v7, :cond_a

    :cond_9
    if-eqz v2, :cond_b

    if-eqz v6, :cond_b

    .line 2749
    :cond_a
    sget-object v2, Lcom/balysv/materialmenu/a$a;->BURGER_ARROW:Lcom/balysv/materialmenu/a$a;

    iput-object v2, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    goto :goto_9

    :cond_b
    if-eqz v2, :cond_c

    if-nez v8, :cond_d

    :cond_c
    if-eqz v4, :cond_e

    if-eqz v7, :cond_e

    .line 2754
    :cond_d
    sget-object v1, Lcom/balysv/materialmenu/a$a;->ARROW_X:Lcom/balysv/materialmenu/a$a;

    iput-object v1, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    goto :goto_8

    :cond_e
    if-eqz v1, :cond_f

    if-nez v8, :cond_10

    :cond_f
    if-eqz v4, :cond_11

    if-eqz v6, :cond_11

    .line 2759
    :cond_10
    sget-object v2, Lcom/balysv/materialmenu/a$a;->BURGER_X:Lcom/balysv/materialmenu/a$a;

    iput-object v2, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    goto :goto_9

    :cond_11
    if-eqz v2, :cond_12

    if-nez v9, :cond_13

    :cond_12
    if-eqz v5, :cond_14

    if-eqz v7, :cond_14

    .line 2764
    :cond_13
    sget-object v1, Lcom/balysv/materialmenu/a$a;->ARROW_CHECK:Lcom/balysv/materialmenu/a$a;

    iput-object v1, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    :goto_8
    move v1, v2

    goto :goto_9

    :cond_14
    if-eqz v1, :cond_15

    if-nez v9, :cond_16

    :cond_15
    if-eqz v5, :cond_17

    if-eqz v6, :cond_17

    .line 2769
    :cond_16
    sget-object v2, Lcom/balysv/materialmenu/a$a;->BURGER_CHECK:Lcom/balysv/materialmenu/a$a;

    iput-object v2, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    goto :goto_9

    :cond_17
    if-eqz v4, :cond_18

    if-nez v9, :cond_19

    :cond_18
    if-eqz v5, :cond_1c

    if-eqz v8, :cond_1c

    .line 2774
    :cond_19
    sget-object v1, Lcom/balysv/materialmenu/a$a;->X_CHECK:Lcom/balysv/materialmenu/a$a;

    iput-object v1, p0, Lcom/balysv/materialmenu/a;->y:Lcom/balysv/materialmenu/a$a;

    move v1, v4

    .line 790
    :goto_9
    iget-object v2, p0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    new-array v4, v10, [F

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1a

    const/4 v6, 0x0

    goto :goto_a

    :cond_1a
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_a
    aput v6, v4, v3

    if-eqz v1, :cond_1b

    goto :goto_b

    :cond_1b
    const/high16 v5, 0x40000000    # 2.0f

    :goto_b
    aput v5, v4, v0

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 794
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_c

    .line 2778
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/balysv/materialmenu/a;->g:Lcom/balysv/materialmenu/a$b;

    aput-object v3, v2, v0

    const-string v0, "Animating from %s to %s is not supported"

    .line 2779
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 797
    :cond_1d
    :goto_c
    invoke-virtual {p0}, Lcom/balysv/materialmenu/a;->invalidateSelf()V

    return-void
.end method

.method public final stop()V
    .locals 1

    .line 801
    invoke-virtual {p0}, Lcom/balysv/materialmenu/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 804
    iput-boolean v0, p0, Lcom/balysv/materialmenu/a;->e:Z

    .line 805
    invoke-virtual {p0}, Lcom/balysv/materialmenu/a;->invalidateSelf()V

    return-void
.end method
