.class Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$4$1;
.super Landroidx/recyclerview/widget/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$4;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic n:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$4;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$4$1;->n:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$4;

    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$4$1;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 251
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x437a0000    # 250.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final c(I)Landroid/graphics/PointF;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$4$1;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 244
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
