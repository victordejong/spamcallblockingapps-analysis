.class public Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;,
        Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;,
        Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;
    }
.end annotation


# instance fields
.field final a:Z

.field private b:I

.field private c:I

.field private d:F

.field private final e:J

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

.field private final o:Landroid/view/animation/Interpolator;

.field private p:Landroid/graphics/PointF;

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

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->b:I

    .line 121
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->b(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->c:I

    .line 122
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->c(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->d:F

    .line 123
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->d(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->e:J

    .line 124
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->e(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->f:F

    .line 125
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->f(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->g:F

    .line 126
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->g(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->h:F

    .line 127
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->h(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->i:F

    .line 128
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->i(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->j:Z

    .line 129
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->j(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->k:Z

    .line 130
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->k(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->l:Z

    .line 131
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->l(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->m:Z

    .line 132
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->m(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->n:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    .line 133
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->n(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->o:Landroid/view/animation/Interpolator;

    .line 134
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->o(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->a:Z

    .line 135
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->p(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->p:Landroid/graphics/PointF;

    .line 136
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->q(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->q:Ljava/util/ArrayList;

    .line 137
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->r(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->r:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;

    .line 138
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->s(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->s:F

    .line 139
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->t(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->t:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->u:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->u:Ljava/util/ArrayList;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChartStyle()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->n:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->b:I

    return v0
.end method

.method public getDrawAsPoint()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->m:Z

    return v0
.end method

.method public getEdgeDetail()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInitialValue()F
    .locals 1

    .line 179
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->h:F

    return v0
.end method

.method public getInitialVisibility()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->j:Z

    return v0
.end method

.method public getInset()Landroid/graphics/PointF;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->p:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->p:Landroid/graphics/PointF;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->p:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->o:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 159
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->d:F

    return v0
.end method

.method getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 175
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->g:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 171
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->f:F

    return v0
.end method

.method public getRoundCap()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->l:Z

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->c:I

    return v0
.end method

.method public getSeriesLabel()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->r:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;

    return-object v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->t:I

    return v0
.end method

.method public getShadowSize()F
    .locals 1

    .line 249
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->s:F

    return v0
.end method

.method public getSpinClockwise()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->k:Z

    return v0
.end method

.method public getSpinDuration()J
    .locals 2

    .line 167
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->e:J

    return-wide v0
.end method

.method public getTargetValue()F
    .locals 1

    .line 183
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->i:F

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->b:I

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->d:F

    return-void
.end method
