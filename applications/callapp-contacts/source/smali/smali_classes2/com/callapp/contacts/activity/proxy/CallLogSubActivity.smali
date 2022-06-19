.class public Lcom/callapp/contacts/activity/proxy/CallLogSubActivity;
.super Lcom/callapp/contacts/activity/proxy/SubActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/contacts/activity/proxy/SubActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTabState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
    .locals 1

    .line 9
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object v0
.end method
