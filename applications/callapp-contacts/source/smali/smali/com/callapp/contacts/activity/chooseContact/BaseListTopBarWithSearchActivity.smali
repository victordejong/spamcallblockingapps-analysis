.class public abstract Lcom/callapp/contacts/activity/chooseContact/BaseListTopBarWithSearchActivity;
.super Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;
.source "SourceFile"


# instance fields
.field private b:Lcom/callapp/contacts/activity/base/BaseListImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;-><init>()V

    .line 10
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseListImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/base/BaseListImpl;-><init>(Lcom/callapp/contacts/activity/base/BaseListImpl$IAdapterReady;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/BaseListTopBarWithSearchActivity;->b:Lcom/callapp/contacts/activity/base/BaseListImpl;

    return-void
.end method


# virtual methods
.method public getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/BaseListTopBarWithSearchActivity;->b:Lcom/callapp/contacts/activity/base/BaseListImpl;

    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->onContentChanged()V

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/BaseListTopBarWithSearchActivity;->b:Lcom/callapp/contacts/activity/base/BaseListImpl;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/base/BaseListImpl;->a(Landroid/app/Activity;)V

    return-void
.end method
