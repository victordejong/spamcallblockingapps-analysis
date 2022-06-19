.class public Lcom/telguarder/features/postCallStatistics/CSCountData;
.super Lcom/telguarder/features/postCallStatistics/CSData;
.source "CSCountData.java"


# instance fields
.field public incomingCount:I

.field public missedCount:I

.field public outgoingCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSData;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountData;->incomingCount:I

    .line 12
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountData;->outgoingCount:I

    .line 13
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountData;->missedCount:I

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountData;->mItemType:I

    return-void
.end method
