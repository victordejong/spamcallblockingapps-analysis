.class public Lcom/telguarder/features/postCallStatistics/CSDurData;
.super Lcom/telguarder/features/postCallStatistics/CSData;
.source "CSDurData.java"


# instance fields
.field public mCallType:I

.field public mDuration:J

.field public mMinutesIn:J

.field public mMinutesOut:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSData;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurData;->mDuration:J

    .line 14
    iput-wide v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurData;->mMinutesOut:J

    .line 15
    iput-wide v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurData;->mMinutesIn:J

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurData;->mItemType:I

    return-void
.end method
