.class public Lcom/callapp/contacts/activity/analytics/graph/DecoView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;,
        Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

.field private c:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Landroid/graphics/RectF;

.field private h:F

.field private i:I

.field private j:I

.field private k:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

.field private l:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a:Ljava/lang/String;

    .line 38
    sget-object p1, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    .line 39
    sget-object p1, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_CENTER:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->e:I

    .line 49
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->f:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 57
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->h:F

    const/16 p1, 0x168

    .line 69
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    .line 79
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    .line 39
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_CENTER:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->e:I

    .line 49
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->f:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 57
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->h:F

    const/16 v1, 0x168

    .line 69
    iput v1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/callapp/contacts/R$styleable;->DecoView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 92
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->h:F

    const/4 p2, 0x3

    .line 93
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x4

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    .line 95
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->values()[Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    .line 96
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->values()[Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_CENTER:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->ordinal()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a(II)V

    .line 103
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b()V

    return-void

    :catchall_0
    move-exception p2

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a:Ljava/lang/String;

    .line 38
    sget-object p1, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    .line 39
    sget-object p1, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_CENTER:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->e:I

    .line 49
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->f:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 57
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->h:F

    const/16 p1, 0x168

    .line 69
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    .line 108
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b()V

    return-void
.end method

.method private a(II)V
    .locals 2

    if-lez p1, :cond_2

    .line 126
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    add-int/lit16 v0, p2, 0x10e

    const/16 v1, 0x168

    .line 127
    rem-int/2addr v0, v1

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->i:I

    if-ge p1, v1, :cond_0

    rsub-int p1, p1, 0x168

    .line 130
    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x5a

    add-int/2addr p1, p2

    rem-int/2addr p1, v1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->i:I

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    .line 135
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->i:I

    invoke-virtual {p2, v0, v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->setupView(II)V

    goto :goto_0

    :cond_1
    return-void

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Total angle of the arc must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b()V
    .locals 0

    .line 141
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getContext()Landroid/content/Context;

    invoke-static {}, Lcom/callapp/contacts/activity/analytics/graph/util/GenericFunctions;->a()V

    .line 142
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->e()V

    .line 143
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c()V

    return-void
.end method

.method private b(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)Z
    .locals 6

    .line 510
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 511
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-eq v0, v1, :cond_0

    return v2

    .line 515
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 516
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->setVisibility(I)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 520
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 521
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getIndexPosition()I

    move-result v3

    if-eq v3, v0, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getIndexPosition()I

    move-result v3

    if-gez v3, :cond_4

    .line 522
    :cond_2
    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    .line 523
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, p1, v4}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;Z)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private c()V
    .locals 5

    .line 226
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;

    const/16 v1, 0xff

    const/16 v2, 0xda

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;-><init>(I)V

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    .line 228
    invoke-virtual {v0, v2, v3, v3, v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a(FFFF)Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;

    move-result-object v0

    iget v4, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->h:F

    .line 1325
    iput v4, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a:F

    .line 230
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;)I

    .line 231
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;

    const/16 v4, 0x40

    invoke-static {v1, v1, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;-><init>(I)V

    const/high16 v1, 0x41c80000    # 25.0f

    .line 232
    invoke-virtual {v0, v2, v3, v1, v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a(FFFF)Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->h:F

    .line 2325
    iput v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a:F

    .line 234
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v0

    .line 231
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;)I

    :cond_0
    return-void
.end method

.method private c(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)Z
    .locals 5

    .line 538
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return v2

    .line 546
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getIndexPosition()I

    move-result v0

    if-gez v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EffectType "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must specify valid data series index"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 555
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEffectType()Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_EXPLODE:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 557
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 558
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    .line 559
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getIndexPosition()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 560
    invoke-virtual {v1, p1, v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;Z)V

    goto :goto_1

    .line 562
    :cond_3
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v3

    .line 568
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 569
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getIndexPosition()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getIndexPosition()I

    move-result v0

    if-gez v0, :cond_7

    .line 570
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    .line 571
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return v3
.end method

.method private d()V
    .locals 10

    .line 257
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->e:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->f:I

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getWidestLine()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 265
    iget v1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->e:I

    iget v2, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->f:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    if-le v1, v2, :cond_1

    sub-int/2addr v1, v2

    .line 267
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v1

    .line 269
    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    move v2, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 273
    :goto_1
    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    sget-object v5, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->GRAVITY_VERTICAL_FILL:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    if-ne v4, v5, :cond_3

    const/4 v2, 0x0

    .line 277
    :cond_3
    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    sget-object v5, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_FILL:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    if-ne v4, v5, :cond_4

    const/4 v1, 0x0

    .line 284
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 285
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    .line 286
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    .line 287
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    .line 289
    new-instance v8, Landroid/graphics/RectF;

    add-float/2addr v4, v0

    add-float/2addr v5, v0

    iget v9, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->e:I

    int-to-float v9, v9

    sub-float/2addr v9, v0

    sub-float/2addr v9, v6

    iget v6, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->f:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    sub-float/2addr v6, v7

    invoke-direct {v8, v4, v5, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->g:Landroid/graphics/RectF;

    .line 294
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    sget-object v4, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->GRAVITY_VERTICAL_TOP:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    if-ne v0, v4, :cond_5

    .line 295
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->g:Landroid/graphics/RectF;

    neg-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    sget-object v4, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->GRAVITY_VERTICAL_BOTTOM:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    if-ne v0, v4, :cond_6

    .line 297
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 300
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    sget-object v2, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_LEFT:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    if-ne v0, v2, :cond_7

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->g:Landroid/graphics/RectF;

    neg-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    return-void

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    sget-object v2, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_RIGHT:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    if-ne v0, v2, :cond_8

    .line 303
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_8
    :goto_3
    return-void
.end method

.method private e()V
    .locals 2

    .line 640
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 642
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getLabelPosition(I)F
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    .line 373
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 374
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    .line 375
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getPositionPercent()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 376
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getPositionPercent()F

    move-result v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getPositionPercent()F

    move-result p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    .line 382
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getPositionPercent()F

    move-result p1

    add-float/2addr p1, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    .line 385
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->i:I

    int-to-float v0, v0

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    sub-float/2addr p1, v0

    goto :goto_1

    :cond_2
    return p1

    :cond_3
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method private getWidestLine()F
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    .line 319
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getLineWidth()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;)I
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    .line 178
    :cond_0
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/DecoView$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView$1;-><init>(Lcom/callapp/contacts/activity/analytics/graph/DecoView;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;)V

    .line 191
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getLineWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 192
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->h:F

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->setLineWidth(F)V

    .line 196
    :cond_1
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/DecoView$2;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getChartStyle()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 212
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Chart Style not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a:Ljava/lang/String;

    const-string v2, "STYLE_LINE_* is currently experimental"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;

    iget v2, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    iget v3, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->i:I

    invoke-direct {v0, p1, v2, v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V

    .line 207
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->setHorizGravity(Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;)V

    .line 208
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->setVertGravity(Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;)V

    goto :goto_1

    .line 201
    :cond_4
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;

    iget v2, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    iget v3, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->i:I

    invoke-direct {v0, p1, v2, v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V

    goto :goto_1

    .line 198
    :cond_5
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;

    iget v2, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->j:I

    iget v3, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->i:I

    invoke-direct {v0, p1, v2, v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V

    .line 214
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->l:[F

    .line 217
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d()V

    .line 218
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    return p1
.end method

.method public final a()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->k:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;->a()V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    .line 486
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V
    .locals 4

    .line 2402
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-eq v0, v1, :cond_0

    .line 2403
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_COLOR_CHANGE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-ne v0, v1, :cond_4

    .line 2407
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 2408
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getIndexPosition()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 2412
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getIndexPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 2413
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2414
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getIndexPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    .line 2415
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_COLOR_CHANGE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-ne v1, v2, :cond_1

    .line 2416
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V

    goto :goto_0

    .line 2418
    :cond_1
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V

    goto :goto_0

    .line 2421
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring move request: Invalid array index. Index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Size: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2409
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index: Position out of range (Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getIndexPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Series Count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)Z

    .line 600
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)Z

    return-void
.end method

.method public getChartSeries(I)Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;
    .locals 1

    if-ltz p1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEventManager()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->k:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;-><init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->k:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->k:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 584
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 585
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->k:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;->a()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 331
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->g:Landroid/graphics/RectF;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 339
    :goto_0
    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 340
    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    .line 341
    iget-object v5, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->g:Landroid/graphics/RectF;

    invoke-virtual {v4, p1, v5}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    .line 343
    invoke-virtual {v4}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSpinClockwise()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    and-int/2addr v3, v4

    .line 344
    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->l:[F

    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getLabelPosition(I)F

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    .line 350
    :goto_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->l:[F

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 351
    aget v1, v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 352
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    .line 353
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->g:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->l:[F

    aget v3, v3, v0

    invoke-virtual {v1, p1, v2, v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 243
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->e:I

    .line 244
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->f:I

    .line 246
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->d()V

    return-void
.end method

.method public setHorizGravity(Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->c:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    return-void
.end method

.method public setVertGravity(Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->b:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    return-void
.end method
