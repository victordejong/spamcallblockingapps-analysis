.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;
.super Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;
.source "SpamCommentSubmitData.java"


# instance fields
.field public mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;->mItemType:I

    .line 19
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    return-void
.end method
