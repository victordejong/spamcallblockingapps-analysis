.class public Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/framework/phone/Phone;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/callapp/framework/phone/Phone;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 32
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->getQuickResponses()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->b:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->c:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->a:Lcom/callapp/framework/phone/Phone;

    return-void
.end method

.method private a()V
    .locals 2

    .line 46
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->b()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;I)V
    .locals 3

    .line 1088
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->a:Lcom/callapp/framework/phone/Phone;

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    goto :goto_0

    .line 1091
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->a:Lcom/callapp/framework/phone/Phone;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/util/SmsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    .line 1093
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 97
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->f()Z

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->dismiss()V

    return-void
.end method

.method private static getQuickResponses()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 106
    :goto_0
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bi:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 107
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bj:[Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bi:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, v1

    .line 109
    new-instance v3, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2, v1}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_0
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bi:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->getDefaultResId()I

    move-result v3

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    const v3, 0x7f12025c

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 121
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public onDialogCancelled(Landroid/content/DialogInterface;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->a()V

    .line 127
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogCancelled(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->a()V

    .line 133
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogDismissed(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const p2, 0x7f0d00de

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x102000a

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 54
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterText;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->b:Ljava/util/ArrayList;

    const v3, 0x7f0d00aa

    invoke-direct {v1, p1, v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f0a0716

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0601ec

    .line 58
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f120578

    .line 59
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;)V

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/popup/contact/AdapterText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    return-object p2
.end method
