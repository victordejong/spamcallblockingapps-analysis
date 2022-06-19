.class public Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;
.super Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/TopBarFragmentActivity<",
        "Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/framework/phone/Phone;

.field private b:J

.field private c:Lcom/callapp/contacts/model/contact/ContactData;

.field private d:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

.field private e:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->e:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 210
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;JLcom/callapp/framework/phone/Phone;)V
    .locals 2

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "phone"

    .line 142
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p3, "contactId"

    .line 143
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 144
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->setScreenMode(Z)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->e:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const v0, 0x7f0a067a

    .line 195
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->b(I)V

    const v0, 0x7f0a02f6

    .line 196
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->a(I)V

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->e:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 217
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->e:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const v0, 0x7f0a02f6

    .line 202
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->b(I)V

    const v0, 0x7f0a067a

    .line 203
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method private setScreenMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->c()V

    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->b()V

    .line 81
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->a:Lcom/callapp/framework/phone/Phone;

    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string p1, ""

    .line 86
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getNewFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getNewFragment()Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getNewFragment()Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;
    .locals 1

    .line 42
    new-instance v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;-><init>()V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->isInMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->showMultiSelect(Z)V

    return-void

    .line 249
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02f6

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a067a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2148
    :cond_0
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 2149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2151
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f0802f0

    const v3, 0x7f12029f

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2153
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f08042e

    const v3, 0x7f12050f

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2154
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    const v2, 0x7f0d00aa

    invoke-direct {v1, p0, v2, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2155
    new-instance v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 2177
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2178
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    new-instance v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$4;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->deleteSelectedCallLogEntries(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 47
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1129
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "phone"

    .line 1131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/callapp/framework/phone/Phone;

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->a:Lcom/callapp/framework/phone/Phone;

    const-wide/16 v0, 0x0

    const-string v2, "contactId"

    .line 1132
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->b:J

    .line 1133
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->a:Lcom/callapp/framework/phone/Phone;

    if-eqz p1, :cond_0

    .line 1134
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->setKeyguardDismissAndScreenWindowFlags()V

    .line 2092
    new-instance p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->d:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    .line 2109
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->a:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->setSingleContactPhone(Lcom/callapp/framework/phone/Phone;)V

    .line 2112
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->a:Lcom/callapp/framework/phone/Phone;

    iget-wide v2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->b:J

    iget-object v4, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->d:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    sget-object v5, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p1

    .line 2113
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->c:Lcom/callapp/contacts/model/contact/ContactData;

    .line 2114
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2115
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->d:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->c:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {v0, v1, p1}, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->setRetainInstance(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    new-instance v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$1;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->setMultiSelectListener(Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;)V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact Call Log Screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 183
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->e:Landroid/view/Menu;

    .line 184
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 185
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->isInMultiSelectMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->b()V

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->c()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 4

    .line 121
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onDestroy()V

    .line 122
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Contact Call Log Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->c:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->c:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->d:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 254
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onResume()V

    .line 255
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    .line 256
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->isInMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->getSelectedCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->onSelectedAmountChanged(I)V

    :cond_0
    return-void
.end method
