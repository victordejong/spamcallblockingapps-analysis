.class public Lcom/callapp/contacts/activity/select/PersonSelectActivity;
.super Lcom/callapp/contacts/activity/chooseContact/BaseListTopBarWithSearchActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/select/PersonSelectActivity$SearchExceptionDialogSimpleListener;,
        Lcom/callapp/contacts/activity/select/PersonSelectActivity$PersonSelectDialogSimpleListener;,
        Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field private final c:I

.field private d:I

.field private e:Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/CheckBox;

.field private j:Z

.field private k:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field private l:Z

.field private m:Lcom/callapp/contacts/manager/task/Task;

.field private n:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private o:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/callapp/contacts/activity/chooseContact/BaseListTopBarWithSearchActivity;-><init>()V

    const v0, 0x7f060088

    .line 91
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c:I

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->d:I

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 5594
    invoke-direct {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getSocialNetworkFriends()Ljava/util/List;

    move-result-object p0

    .line 5598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5599
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5600
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5601
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/PersonData;

    .line 5602
    invoke-virtual {v1}, Lcom/callapp/contacts/model/PersonData;->getUnAccanetName()Ljava/lang/String;

    move-result-object v2

    .line 5603
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5604
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    const-string v4, " "

    invoke-static {v2, v3, p1, v4}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5605
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 728
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PERSON_SELECT_NET_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PERSON_SELECT_CONTACTS_FULL_NAME"

    .line 729
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_FQL_TYPE"

    .line 730
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const-string v0, "PERSON_SELECT_OPEN_PROFILE_IF_SINGLE_RESULT"

    const/4 v1, 0x0

    .line 731
    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p4

    .line 733
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p1

    const-string v0, "PERSON_SELECT_AUTO_SEARCH_TEXT"

    const-string v2, "PERSON_SELECT_HAS_RESULT"

    if-eqz p1, :cond_0

    .line 734
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->get()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->getApiConstantNetworkId()I

    move-result v3

    if-eq p2, v3, :cond_0

    const/4 p2, 0x1

    .line 735
    invoke-virtual {p4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 736
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->term:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {p4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    invoke-virtual {p4, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/16 p1, 0x3e4

    .line 741
    invoke-virtual {p0, p4, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Landroid/app/Activity;Lcom/callapp/contacts/model/PersonData;)V
    .locals 8

    .line 8614
    invoke-virtual {p2}, Lcom/callapp/contacts/model/PersonData;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 p0, 0x4

    const/4 v1, 0x0

    if-eq v0, p0, :cond_4

    const/4 p0, 0x6

    if-eq v0, p0, :cond_3

    const/4 p0, 0x7

    if-eq v0, p0, :cond_2

    const/16 p0, 0x9

    if-eq v0, p0, :cond_1

    const/16 p0, 0xa

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 8636
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 8632
    :cond_1
    invoke-virtual {p2}, Lcom/callapp/contacts/model/PersonData;->getUserName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 8628
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->get()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object p0

    invoke-virtual {p2}, Lcom/callapp/contacts/model/PersonData;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 8624
    :cond_3
    invoke-virtual {p2}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 8620
    :cond_4
    invoke-virtual {p2}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 8616
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->b:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/Exception;Z)V
    .locals 1

    const v0, 0x7f1207ec

    .line 7360
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/util/List;I)V
    .locals 9

    .line 6557
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/base/BaseListFunctions;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter;

    if-nez v0, :cond_0

    .line 6560
    new-instance v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->o:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;

    .line 6561
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e:Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;

    iget-object p0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->o:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;

    invoke-direct {v1, p1, v2, p0, p2}, Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener;I)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/base/BaseListFunctions;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 6563
    :cond_0
    new-instance p0, Lcom/callapp/contacts/model/PersonData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/callapp/contacts/model/PersonData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6564
    invoke-virtual {v0, p2}, Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter;->setSeperatorPosition(I)V

    .line 6565
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/widget/ArrayAdapter;Ljava/util/Collection;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;Ljava/lang/String;Z)V
    .locals 8

    .line 354
    const-class v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 355
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    new-instance v7, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v0, 0x7f1204ea

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/callapp/contacts/activity/select/PersonSelectActivity$SearchExceptionDialogSimpleListener;

    const/4 v0, 0x0

    invoke-direct {v5, p3, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$SearchExceptionDialogSimpleListener;-><init>(ZLcom/callapp/contacts/activity/select/PersonSelectActivity$1;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    invoke-virtual {p1, p0, v7}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;ZZ)V
    .locals 3

    .line 292
    new-instance v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 324
    new-instance p2, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->n:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const v2, 0x7f120600

    .line 325
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 326
    iget-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->n:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 327
    iget-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->n:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    new-instance v2, Lcom/callapp/contacts/activity/select/PersonSelectActivity$PersonSelectDialogSimpleListener;

    invoke-direct {v2, v0, v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$PersonSelectDialogSimpleListener;-><init>(Ljava/lang/Thread;Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 328
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->n:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {p2, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    goto :goto_0

    .line 331
    :cond_0
    iput-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->n:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 334
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    if-eqz p3, :cond_1

    .line 338
    new-instance p1, Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/Thread;)V

    const/16 p2, 0x3a98

    .line 349
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->m:Lcom/callapp/contacts/manager/task/Task;

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p1, p3}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    .line 6270
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6273
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/PersonData;

    .line 6274
    invoke-virtual {v2}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6275
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6279
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 6280
    invoke-interface {p0, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/util/List;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getSocialNetworkFriends()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setScreenAccordingToSearchText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/util/List;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getFriendsThatContainsName()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 539
    new-instance v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3284
    invoke-direct {p0, v0, v1, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)V
    .locals 1

    .line 7577
    new-instance v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$10;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8288
    invoke-direct {p0, v0, p1, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->h:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->j:Z

    return p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->j:Z

    return v0
.end method

.method private static getFacebookFriends()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 698
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getFriends()Ljava/util/List;

    move-result-object v0

    .line 4702
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 4704
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONFBEntity;

    .line 4705
    new-instance v3, Lcom/callapp/contacts/model/PersonData;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/model/PersonData;-><init>(Lcom/callapp/common/model/json/JSONFBEntity;)V

    .line 4706
    invoke-virtual {v3}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/PersonData;->setUnAccanetName(Ljava/lang/String;)V

    .line 4707
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getFriendsThatContainsName()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->g:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-direct {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getSocialNetworkFriends()Ljava/util/List;

    move-result-object v2

    .line 667
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/PersonData;

    .line 669
    invoke-virtual {v3}, Lcom/callapp/contacts/model/PersonData;->getUnAccanetName()Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 671
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getSocialNetworkFriends()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "social_network_friends_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 1215
    invoke-virtual {v1, v2, v0, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 365
    check-cast v1, Ljava/util/List;

    .line 366
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 373
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getVKFriends()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 378
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getTwitterFriends()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 375
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getFacebookFriends()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 387
    :goto_0
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 390
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 391
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v2

    const-class v3, Ljava/util/List;

    const v4, 0x7f0b001e

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_1
    return-object v1
.end method

.method private static getTwitterFriends()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 684
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(ZZ)Ljava/util/List;

    move-result-object v1

    .line 685
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/models/User;

    .line 688
    new-instance v3, Lcom/callapp/contacts/model/PersonData;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/model/PersonData;-><init>(Lcom/twitter/sdk/android/core/models/User;)V

    .line 689
    invoke-virtual {v3}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/PersonData;->setUnAccanetName(Ljava/lang/String;)V

    .line 690
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getVKFriends()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 715
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->getFriends()Ljava/util/List;

    move-result-object v0

    .line 716
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 717
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/api/helper/vk/VKUser;

    .line 719
    new-instance v3, Lcom/callapp/contacts/model/PersonData;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/model/PersonData;-><init>(Lcom/callapp/contacts/api/helper/vk/VKUser;)V

    .line 720
    invoke-virtual {v3}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/PersonData;->setUnAccanetName(Ljava/lang/String;)V

    .line 721
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e:Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->k:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    return-object p0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c()V

    return-void
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->n:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object p0
.end method

.method private setScreenAccordingToSearchText(Ljava/lang/String;)V
    .locals 1

    .line 424
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 425
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 426
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->h:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method private setupSearchEditbox(Ljava/lang/String;)V
    .locals 2

    .line 570
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setScreenAccordingToSearchText(Ljava/lang/String;)V

    .line 571
    iget-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->g:Ljava/lang/String;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 572
    aget-object p1, p1, v1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->f:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const p1, 0x7f12051d

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setHintText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0039

    return v0
.end method

.method public getSearchBarEvents()Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;
    .locals 1

    .line 408
    new-instance v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$4;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 400
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 401
    iget v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->d:I

    const-string v2, "PERSON_SELECT_NET_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 402
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 403
    invoke-super {p0}, Lcom/callapp/contacts/activity/chooseContact/BaseListTopBarWithSearchActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 436
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 437
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setKeyguardDismissAndScreenWindowFlags()V

    .line 442
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/BaseListTopBarWithSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 443
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    .line 444
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "PERSON_SELECT_NET_ID"

    .line 446
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->d:I

    .line 447
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->d:I

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->k:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    .line 448
    iget v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->d:I

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->getSocialNetworkName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->f:Ljava/lang/String;

    const-string v2, "PERSON_SELECT_CONTACTS_FULL_NAME"

    .line 449
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->g:Ljava/lang/String;

    const-string v2, "INTENT_EXTRA_FQL_TYPE"

    .line 450
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->b:Ljava/lang/String;

    const-string v2, "PERSON_SELECT_OPEN_PROFILE_IF_SINGLE_RESULT"

    .line 451
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->j:Z

    .line 452
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->g:Ljava/lang/String;

    const v3, 0x7f12051e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 453
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->f:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120405

    .line 456
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->g:Ljava/lang/String;

    :cond_1
    const-string v2, "PERSON_SELECT_HAS_RESULT"

    .line 458
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->l:Z

    .line 460
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0113

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0333

    .line 461
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0600f3

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const v2, 0x7f0a043c

    .line 462
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f12034c

    .line 463
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget v3, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 465
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;

    move-result-object v2

    invoke-interface {v2}, Lcom/callapp/contacts/activity/base/BaseListFunctions;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v2, 0x7f0a07b4

    .line 467
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0813

    .line 468
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->h:Landroid/widget/CheckBox;

    const v2, 0x7f12034d

    .line 469
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->h:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c:I

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 471
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->h:Landroid/widget/CheckBox;

    new-instance v2, Lcom/callapp/contacts/activity/select/PersonSelectActivity$5;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$5;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1527
    new-instance v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$8;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$8;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e:Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;

    .line 486
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/base/BaseListFunctions;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/activity/select/PersonSelectActivity$6;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$6;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "PERSON_SELECT_LIST_KEY"

    .line 495
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 497
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getInitialSearchText()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setupSearchEditbox(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 501
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 508
    :cond_2
    new-instance v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/util/List;)V

    .line 2288
    invoke-direct {p0, v0, v5, v5}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/Runnable;ZZ)V

    return-void

    .line 502
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2149
    invoke-direct {p0, v0, v1, v5}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/String;ZZ)V

    return-void

    .line 505
    :cond_4
    invoke-direct {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c()V

    return-void

    .line 438
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 643
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/base/BaseListFunctions;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 644
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->m:Lcom/callapp/contacts/manager/task/Task;

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/task/Task;->cancel()V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->n:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    if-eqz v0, :cond_1

    .line 649
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->n:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 653
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->o:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;

    if-eqz v0, :cond_2

    .line 4144
    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 657
    :cond_2
    invoke-super {p0}, Lcom/callapp/contacts/activity/chooseContact/BaseListTopBarWithSearchActivity;->onDestroy()V

    return-void
.end method
