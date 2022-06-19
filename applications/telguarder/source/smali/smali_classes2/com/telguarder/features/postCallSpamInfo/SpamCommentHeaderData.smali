.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;
.super Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;
.source "SpamCommentHeaderData.java"


# instance fields
.field public headerTextColor:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;->mItemType:I

    return-void
.end method
