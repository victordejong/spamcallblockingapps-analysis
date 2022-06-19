.class public Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;->a:I

    .line 10
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;->b:I

    return-void
.end method


# virtual methods
.method public getBlockNumber()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;->a:I

    return v0
.end method

.method public getSpamNumber()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;->b:I

    return v0
.end method
