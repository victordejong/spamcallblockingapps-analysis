.class public Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:F

.field public b:J

.field public c:Z

.field public d:Z

.field public e:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

.field public f:Landroid/view/animation/Interpolator;

.field public g:Landroid/graphics/PointF;

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;

.field private s:F

.field private t:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    const/16 v1, 0x20

    .line 294
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->h:I

    const/4 v0, 0x0

    .line 295
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->i:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 296
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a:F

    const-wide/16 v0, 0x1388

    .line 297
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->b:J

    const/high16 v0, 0x42c80000    # 100.0f

    .line 299
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->k:F

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->n:Z

    .line 303
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->c:Z

    .line 304
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->d:Z

    .line 306
    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;->STYLE_DONUT:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->e:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    .line 308
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->p:Z

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->s:F

    const/high16 v0, -0x1000000

    .line 313
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->t:I

    .line 316
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->h:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    const/16 v1, 0x20

    .line 294
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->h:I

    const/4 v0, 0x0

    .line 295
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->i:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 296
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a:F

    const-wide/16 v0, 0x1388

    .line 297
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->b:J

    const/high16 v0, 0x42c80000    # 100.0f

    .line 299
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->k:F

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->n:Z

    .line 303
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->c:Z

    .line 304
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->d:Z

    .line 306
    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;->STYLE_DONUT:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->e:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    .line 308
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->p:Z

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->s:F

    const/high16 v0, -0x1000000

    .line 313
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->t:I

    .line 320
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->h:I

    .line 321
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->i:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)I
    .locals 0

    .line 293
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->h:I

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)I
    .locals 0

    .line 293
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->i:I

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F
    .locals 0

    .line 293
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a:F

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)J
    .locals 2

    .line 293
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->b:J

    return-wide v0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F
    .locals 0

    .line 293
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->j:F

    return p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F
    .locals 0

    .line 293
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->k:F

    return p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F
    .locals 0

    .line 293
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->l:F

    return p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F
    .locals 0

    .line 293
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->m:F

    return p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Z
    .locals 0

    .line 293
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->n:Z

    return p0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Z
    .locals 0

    .line 293
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->c:Z

    return p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Z
    .locals 0

    .line 293
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->d:Z

    return p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Z
    .locals 0

    .line 293
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->o:Z

    return p0
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->e:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    return-object p0
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->f:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Z
    .locals 0

    .line 293
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->p:Z

    return p0
.end method

.method static synthetic p(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Landroid/graphics/PointF;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->g:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic q(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic r(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->r:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;

    return-object p0
.end method

.method static synthetic s(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F
    .locals 0

    .line 293
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->s:F

    return p0
.end method

.method static synthetic t(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)I
    .locals 0

    .line 293
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->t:I

    return p0
.end method


# virtual methods
.method public final a(FFFF)Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;
    .locals 1

    cmpl-float v0, p1, p2

    if-gez v0, :cond_1

    cmpl-float v0, p1, p3

    if-gtz v0, :cond_0

    cmpg-float v0, p2, p3

    if-ltz v0, :cond_0

    .line 370
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->j:F

    .line 371
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->k:F

    .line 372
    iput p3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->l:F

    .line 373
    iput p4, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->m:F

    return-object p0

    .line 368
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial value must be in the range of min .. max"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minimum value must be less that maximum value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;
    .locals 2

    .line 429
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$1;)V

    return-object v0
.end method
