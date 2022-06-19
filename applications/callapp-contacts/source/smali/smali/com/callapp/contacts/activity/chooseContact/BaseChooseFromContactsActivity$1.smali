.class Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity$1;
.super Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;->getSearchBarEvents()Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity$1;->a:Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl;-><init>(Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity$1;->a:Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;->getContactsFragment()Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->filterReq(Ljava/lang/CharSequence;Z)V

    return-void
.end method
