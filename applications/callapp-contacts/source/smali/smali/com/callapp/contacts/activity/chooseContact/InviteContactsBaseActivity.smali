.class public abstract Lcom/callapp/contacts/activity/chooseContact/InviteContactsBaseActivity;
.super Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/InviteContactsBaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a00aa

    .line 16
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f1204c4

    .line 17
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 18
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 23
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a00aa

    if-eq v0, v1, :cond_0

    .line 30
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
