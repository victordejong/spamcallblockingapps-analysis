.class Lcom/telguarder/features/postCallStatistics/CSViewAdapter$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CSViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$2;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 224
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 226
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendCallStatisticsScrollAction()V

    :cond_0
    return-void
.end method
