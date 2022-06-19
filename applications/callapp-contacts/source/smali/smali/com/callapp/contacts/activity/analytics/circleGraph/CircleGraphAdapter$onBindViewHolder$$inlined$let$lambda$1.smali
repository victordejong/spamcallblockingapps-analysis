.class public final Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008\u00b8\u0006\t"
    }
    d2 = {
        "com/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$1$1$1",
        "Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;",
        "onSeriesItemAnimationProgress",
        "",
        "percentComplete",
        "",
        "currentPosition",
        "onSeriesItemDisplayProgress",
        "callapp-client_playRelease",
        "com/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$$special$$inlined$let$lambda$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;

.field final synthetic c:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

.field final synthetic d:Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$$inlined$let$lambda$1;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;

    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$$inlined$let$lambda$1;->c:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    iput-object p4, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$$inlined$let$lambda$1;->d:Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(F)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$$inlined$let$lambda$1;->d:Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getSetPercentageSign()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$$inlined$let$lambda$1;->a:Landroid/widget/TextView;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$$inlined$let$lambda$1;->a:Landroid/widget/TextView;

    float-to-int p1, p1

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
