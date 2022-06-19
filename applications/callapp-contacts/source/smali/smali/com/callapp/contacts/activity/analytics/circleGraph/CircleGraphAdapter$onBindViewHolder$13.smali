.class final Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$13;->a:Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$13;->a:Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getEvents()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;->a()V

    :cond_0
    return-void
.end method
