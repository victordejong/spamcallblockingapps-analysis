.class public Lcom/telguarder/features/postCallStatistics/CSHistData;
.super Lcom/telguarder/features/postCallStatistics/CSData;
.source "CSHistData.java"


# instance fields
.field public callDate:J

.field public callDuration:I

.field public callType:I


# direct methods
.method constructor <init>(JII)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSData;-><init>()V

    const/4 v0, 0x4

    .line 18
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistData;->mItemType:I

    .line 19
    iput-wide p1, p0, Lcom/telguarder/features/postCallStatistics/CSHistData;->callDate:J

    .line 20
    iput p3, p0, Lcom/telguarder/features/postCallStatistics/CSHistData;->callType:I

    .line 21
    iput p4, p0, Lcom/telguarder/features/postCallStatistics/CSHistData;->callDuration:I

    return-void
.end method
