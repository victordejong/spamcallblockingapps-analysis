.class public Lcom/callapp/contacts/activity/proxy/FavoritesSubActivity;
.super Lcom/callapp/contacts/activity/proxy/SubActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/callapp/contacts/activity/proxy/SubActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTabState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
    .locals 1

    .line 13
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->UNSET:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object v0
.end method
