.class public abstract Lcom/callapp/contacts/activity/base/BaseListActivity;
.super Lcom/callapp/contacts/activity/base/BaseTopBarActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/activity/base/BaseListImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;-><init>()V

    .line 7
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseListImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/base/BaseListImpl;-><init>(Lcom/callapp/contacts/activity/base/BaseListImpl$IAdapterReady;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListActivity;->a:Lcom/callapp/contacts/activity/base/BaseListImpl;

    return-void
.end method


# virtual methods
.method public getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListActivity;->a:Lcom/callapp/contacts/activity/base/BaseListImpl;

    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onContentChanged()V

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListActivity;->a:Lcom/callapp/contacts/activity/base/BaseListImpl;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/base/BaseListImpl;->a(Landroid/app/Activity;)V

    return-void
.end method
