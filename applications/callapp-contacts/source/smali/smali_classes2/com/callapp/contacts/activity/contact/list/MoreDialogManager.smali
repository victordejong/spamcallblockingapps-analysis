.class public Lcom/callapp/contacts/activity/contact/list/MoreDialogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;)V
    .locals 6

    .line 37
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f080406

    const v4, 0x7f12050d

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080410

    const v3, 0x7f12050c

    const v4, 0x7f080413

    if-eqz p1, :cond_1

    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    invoke-direct {p1, v4, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f120510

    invoke-direct {p1, v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f0802e7

    const v3, 0x7f1200d4

    invoke-direct {p1, v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f080328

    const v3, 0x7f120708

    invoke-direct {p1, v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    invoke-direct {p1, v4, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f080407

    const v4, 0x7f12050e

    invoke-direct {p1, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f080408

    const v4, 0x7f1201dd

    invoke-direct {p1, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f12050f

    invoke-direct {p1, v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f08049d

    const v3, 0x7f120135

    invoke-direct {p1, v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_0
    new-instance p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    const v2, 0x7f0d00aa

    invoke-direct {p1, p0, v2, v1}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 58
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$MoreDialogManager$yzKDIRDa2WWmsIhFEFAU1v3BEjA;

    invoke-direct {v1, v0, p0, p2}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$MoreDialogManager$yzKDIRDa2WWmsIhFEFAU1v3BEjA;-><init>(Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 97
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;I)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    sparse-switch p3, :sswitch_data_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;->a()V

    return-void

    .line 86
    :pswitch_1
    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;->b()V

    return-void

    .line 69
    :pswitch_2
    invoke-static {p1}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;)V

    return-void

    :pswitch_3
    const-string p0, "phone"

    const-string p2, ""

    .line 62
    invoke-static {p1, p0, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    .line 66
    :pswitch_4
    invoke-static {p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/content/Context;)V

    return-void

    .line 89
    :sswitch_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string p2, "Optimize contacts"

    const-string p3, "Start from menu"

    invoke-virtual {p0, p2, p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a(Landroid/content/Context;)V

    return-void

    .line 72
    :sswitch_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/content/Context;)V

    return-void

    .line 75
    :sswitch_2
    new-instance p0, Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$1;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$1;-><init>(Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;)V

    invoke-static {p1, p0}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/OnSortAction;)V

    return-void

    :sswitch_3
    const-string p0, "contacts"

    .line 93
    invoke-static {p0}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f1200d4 -> :sswitch_3
        0x7f120135 -> :sswitch_2
        0x7f1201dd -> :sswitch_1
        0x7f120708 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f12050c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$yzKDIRDa2WWmsIhFEFAU1v3BEjA(Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/list/MoreDialogManager;->a(Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;I)V

    return-void
.end method
