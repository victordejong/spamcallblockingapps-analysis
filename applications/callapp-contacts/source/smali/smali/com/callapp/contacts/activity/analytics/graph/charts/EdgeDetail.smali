.class public Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:F

.field private final c:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

.field private d:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;IF)V
    .locals 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->c:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    .line 44
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->a:I

    .line 45
    iput p3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->b:F

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid ratio set for EdgeDetail"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->c:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->c:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    .line 50
    iget v0, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->a:I

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->a:I

    .line 51
    iget p1, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->b:F

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->b:F

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method getClipPath()Landroid/graphics/Path;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->d:Landroid/graphics/Path;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->a:I

    return v0
.end method

.method public getEdgeType()Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->c:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->b:F

    return v0
.end method

.method setClipPath(Landroid/graphics/Path;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->d:Landroid/graphics/Path;

    return-void
.end method
