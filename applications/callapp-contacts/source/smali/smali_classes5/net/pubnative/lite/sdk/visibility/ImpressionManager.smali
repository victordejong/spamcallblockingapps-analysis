.class public Lnet/pubnative/lite/sdk/visibility/ImpressionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImpressionManager"

.field private static instance:Lnet/pubnative/lite/sdk/visibility/ImpressionManager;


# instance fields
.field protected mTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/pubnative/lite/sdk/visibility/ImpressionManager;
    .locals 2

    .line 47
    sget-object v0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->instance:Lnet/pubnative/lite/sdk/visibility/ImpressionManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;-><init>()V

    .line 49
    sput-object v0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->instance:Lnet/pubnative/lite/sdk/visibility/ImpressionManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    .line 51
    :cond_0
    sget-object v0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->instance:Lnet/pubnative/lite/sdk/visibility/ImpressionManager;

    return-object v0
.end method

.method public static startTrackingView(Landroid/view/View;Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)V
    .locals 1

    .line 66
    invoke-static {}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->getInstance()Lnet/pubnative/lite/sdk/visibility/ImpressionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->addView(Landroid/view/View;Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)V

    return-void
.end method

.method public static stopTrackingAll(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)V
    .locals 1

    .line 75
    invoke-static {}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->getInstance()Lnet/pubnative/lite/sdk/visibility/ImpressionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->stopTracking(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)V

    return-void
.end method

.method public static stopTrackingView(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-static {}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->getInstance()Lnet/pubnative/lite/sdk/visibility/ImpressionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected addView(Landroid/view/View;Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 94
    sget-object p1, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->TAG:Ljava/lang/String;

    const-string p2, "trying to start tracking null view, dropping this calll"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 96
    sget-object p1, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->TAG:Ljava/lang/String;

    const-string p2, "trying to start tracking with null listener"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_1
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->containsTracker(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->indexOfTracker(Landroid/view/View;)I

    move-result v0

    .line 104
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    .line 105
    invoke-virtual {v0, p2}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->removeView(Landroid/view/View;)V

    .line 112
    :cond_2
    invoke-virtual {p0, p2}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->containsTracker(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->indexOfTracker(Landroid/view/View;)I

    move-result p2

    .line 114
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    goto :goto_0

    .line 116
    :cond_3
    new-instance v0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;-><init>()V

    .line 117
    invoke-virtual {v0, p2}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->setListener(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)V

    .line 118
    iget-object p2, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p2, v0

    .line 120
    :goto_0
    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected containsTracker(Landroid/view/View;)Z
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->indexOfTracker(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected containsTracker(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)Z
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->indexOfTracker(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected indexOfTracker(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    .line 162
    :goto_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    .line 164
    invoke-virtual {v1, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method protected indexOfTracker(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)I
    .locals 2

    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 181
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    .line 182
    invoke-virtual {v1, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method protected removeView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    .line 139
    sget-object p1, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->TAG:Ljava/lang/String;

    const-string v0, "trying to remove null view, dropping this call"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->containsTracker(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->indexOfTracker(Landroid/view/View;)I

    move-result v0

    .line 142
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    .line 143
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->clear()V

    .line 146
    iget-object p1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected stopTracking(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 126
    sget-object p1, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->TAG:Ljava/lang/String;

    const-string v0, "trying to remove all views from null listener, dropping this call"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->containsTracker(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->indexOfTracker(Lnet/pubnative/lite/sdk/visibility/ImpressionTracker$Listener;)I

    move-result v0

    .line 129
    iget-object v1, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;

    .line 130
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/visibility/ImpressionTracker;->clear()V

    .line 131
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/ImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
