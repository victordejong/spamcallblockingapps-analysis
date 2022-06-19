.class public Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;
.super Lcom/callapp/contacts/activity/base/BaseViewTypeData;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSectionId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;->b:I

    return v0
.end method

.method public getSuffixText()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public setSectionId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;->b:I

    return-void
.end method
