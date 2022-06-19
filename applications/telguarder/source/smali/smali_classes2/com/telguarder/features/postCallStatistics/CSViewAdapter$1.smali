.class Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;
.super Ljava/lang/Object;
.source "CSViewAdapter.java"

# interfaces
.implements Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->initData(Landroid/content/Context;)V
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

    .line 87
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallHistoryRow(JII)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->access$100(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSHistHeaderData()Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->access$100(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSHistHeaderData()Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSHistData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/telguarder/features/postCallStatistics/CSHistData;-><init>(JII)V

    .line 118
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->access$100(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$BqhVvkO2vU1vGPIj8kYBIaKy-vs;

    invoke-direct {p2, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$BqhVvkO2vU1vGPIj8kYBIaKy-vs;-><init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$addCallHistoryRow$3$CSViewAdapter$1()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->access$100(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public synthetic lambda$updateCount$1$CSViewAdapter$1()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->access$100(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {v2}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSCountData()Lcom/telguarder/features/postCallStatistics/CSCountData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public synthetic lambda$updateDailyStat$2$CSViewAdapter$1()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->access$100(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {v2}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSStatData()Lcom/telguarder/features/postCallStatistics/CSStatData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public synthetic lambda$updateDuration$0$CSViewAdapter$1()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->access$100(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {v2}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSDurData()Lcom/telguarder/features/postCallStatistics/CSDurData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public updateCount(III)V
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 99
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSCountData()Lcom/telguarder/features/postCallStatistics/CSCountData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->remove(Lcom/telguarder/features/postCallStatistics/CSData;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSCountData()Lcom/telguarder/features/postCallStatistics/CSCountData;

    move-result-object v0

    iput p1, v0, Lcom/telguarder/features/postCallStatistics/CSCountData;->incomingCount:I

    .line 102
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSCountData()Lcom/telguarder/features/postCallStatistics/CSCountData;

    move-result-object p1

    iput p2, p1, Lcom/telguarder/features/postCallStatistics/CSCountData;->outgoingCount:I

    .line 103
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSCountData()Lcom/telguarder/features/postCallStatistics/CSCountData;

    move-result-object p1

    iput p3, p1, Lcom/telguarder/features/postCallStatistics/CSCountData;->missedCount:I

    .line 104
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$yQueKjXI3T7TCNc6pDX-k16jNkQ;

    invoke-direct {p2, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$yQueKjXI3T7TCNc6pDX-k16jNkQ;-><init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public updateDailyStat(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSStatData()Lcom/telguarder/features/postCallStatistics/CSStatData;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/telguarder/features/postCallStatistics/CSStatData;->setupData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$WZC87JFboqFBOkVUsrSbUfgHr6k;

    invoke-direct {p2, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$WZC87JFboqFBOkVUsrSbUfgHr6k;-><init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateDuration(IJJJ)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSDurData()Lcom/telguarder/features/postCallStatistics/CSDurData;

    move-result-object v0

    iput p1, v0, Lcom/telguarder/features/postCallStatistics/CSDurData;->mCallType:I

    .line 91
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSDurData()Lcom/telguarder/features/postCallStatistics/CSDurData;

    move-result-object p1

    iput-wide p2, p1, Lcom/telguarder/features/postCallStatistics/CSDurData;->mDuration:J

    .line 92
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSDurData()Lcom/telguarder/features/postCallStatistics/CSDurData;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-static {p2, p4, p5}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->access$000(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;J)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/telguarder/features/postCallStatistics/CSDurData;->mMinutesIn:J

    .line 93
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getCSDurData()Lcom/telguarder/features/postCallStatistics/CSDurData;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-static {p2, p6, p7}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->access$000(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;J)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/telguarder/features/postCallStatistics/CSDurData;->mMinutesOut:J

    .line 94
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$o92EwszcppnKh5a4bkPliAbAbNc;

    invoke-direct {p2, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$o92EwszcppnKh5a4bkPliAbAbNc;-><init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
