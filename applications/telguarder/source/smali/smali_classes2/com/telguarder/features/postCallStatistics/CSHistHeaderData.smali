.class public Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;
.super Lcom/telguarder/features/postCallStatistics/CSData;
.source "CSHistHeaderData.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSData;-><init>()V

    const/4 v0, 0x3

    .line 13
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;->mItemType:I

    return-void
.end method
