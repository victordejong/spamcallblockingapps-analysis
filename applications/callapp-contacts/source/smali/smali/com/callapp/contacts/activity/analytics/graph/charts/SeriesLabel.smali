.class public Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;
    }
.end annotation


# static fields
.field private static h:Landroid/graphics/Typeface;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/graphics/Paint;

.field c:Landroid/graphics/Paint;

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/RectF;

.field f:F

.field final g:Z

.field private final i:F

.field private final j:F

.field private final k:F

.field private final l:Landroid/graphics/Typeface;

.field private final m:I

.field private final n:I


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41700000    # 15.0f

    .line 33
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->i:F

    .line 34
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->j:F

    .line 48
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->a:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->b(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->g:Z

    .line 50
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->c(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->m:I

    .line 51
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->d(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->n:I

    .line 52
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->e(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->l:Landroid/graphics/Typeface;

    .line 53
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->f(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->k:F

    .line 1066
    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->b:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    .line 1067
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->b:Landroid/graphics/Paint;

    .line 1068
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1071
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->c:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 1072
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->c:Landroid/graphics/Paint;

    .line 1073
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1074
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->c:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/util/GenericFunctions;->a(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1075
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v2, :cond_1

    .line 1078
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->c:Landroid/graphics/Paint;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->h:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 1079
    :cond_1
    sget-object p1, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->h:Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    .line 1080
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1084
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->d:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    .line 1085
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->d:Landroid/graphics/Rect;

    .line 1086
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1087
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->e:Landroid/graphics/RectF;

    .line 1088
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->f:F

    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)V

    return-void
.end method
