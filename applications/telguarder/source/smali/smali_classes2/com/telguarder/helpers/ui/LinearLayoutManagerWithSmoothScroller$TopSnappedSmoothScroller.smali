.class Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "LinearLayoutManagerWithSmoothScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopSnappedSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;


# direct methods
.method public constructor <init>(Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;Landroid/content/Context;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;->this$0:Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;

    .line 56
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;->this$0:Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
