.class public final Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0018\u0008\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u000cR*\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;",
        "",
        "multiCircleGraphData",
        "Ljava/util/ArrayList;",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
        "Lkotlin/collections/ArrayList;",
        "(Ljava/util/ArrayList;)V",
        "getMultiCircleGraphData",
        "()Ljava/util/ArrayList;",
        "setMultiCircleGraphData",
        "addCircle",
        "build",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;-><init>(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "multiCircleGraphData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;
    .locals 2

    const-string v0, "multiCircleGraphData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;
    .locals 3

    .line 16
    new-instance v0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;

    .line 17
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
