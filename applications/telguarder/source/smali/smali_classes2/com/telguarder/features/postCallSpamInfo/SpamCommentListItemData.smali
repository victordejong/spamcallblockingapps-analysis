.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;
.super Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;
.source "SpamCommentListItemData.java"


# instance fields
.field public mCommentDate:Ljava/lang/String;

.field public mCommentText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;->mCommentText:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;->mCommentDate:Ljava/lang/String;

    const/4 p1, 0x3

    .line 19
    iput p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;->mItemType:I

    return-void
.end method
