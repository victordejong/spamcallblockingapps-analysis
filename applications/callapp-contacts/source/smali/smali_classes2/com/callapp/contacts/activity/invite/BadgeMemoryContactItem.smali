.class public Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;
.super Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    .line 18
    iput p2, p0, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->i:I

    return-void
.end method


# virtual methods
.method public getBadgeResId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->a:I

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->i:I

    return v0
.end method

.method public isShouldGrey()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->b:Z

    return v0
.end method

.method public setBadgeResId(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->a:I

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->j:Ljava/lang/String;

    return-void
.end method

.method public setShouldGrey(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->b:Z

    return-void
.end method
