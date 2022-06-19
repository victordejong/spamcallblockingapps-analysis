.class public Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/graphics/Typeface;

.field private c:F

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 156
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->c:F

    const-string v0, "#FFFFFFFF"

    .line 157
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->d:I

    const-string v0, "#AA000000"

    .line 158
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->e:I

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->f:Z

    .line 162
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->d:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->e:I

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)Landroid/graphics/Typeface;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->b:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;)F
    .locals 0

    .line 153
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder;->c:F

    return p0
.end method
