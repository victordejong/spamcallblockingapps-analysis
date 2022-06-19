.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;
.super Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;
.source "SpamCommentProgressData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;
    }
.end annotation


# instance fields
.field public mProgressState:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;-><init>()V

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;->mItemType:I

    return-void
.end method
