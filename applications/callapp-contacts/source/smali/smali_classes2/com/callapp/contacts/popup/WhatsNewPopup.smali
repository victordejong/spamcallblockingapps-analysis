.class public Lcom/callapp/contacts/popup/WhatsNewPopup;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)Z
    .locals 3

    .line 147
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ai:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcom/callapp/contacts/popup/WhatsNewPopup;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/WhatsNewPopup;-><init>()V

    .line 160
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 163
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 33
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const p2, 0x7f0d00ea

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a0314

    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0805c4

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a0318

    .line 46
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060088

    .line 47
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f1204ea

    .line 48
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v3, Lcom/callapp/contacts/popup/WhatsNewPopup$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/popup/WhatsNewPopup$1;-><init>(Lcom/callapp/contacts/popup/WhatsNewPopup;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102000a

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v2, "%X"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f120847

    .line 65
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 66
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f120848

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0802e7

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f12084e

    .line 68
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 69
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f12084f

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080451

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v5, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v7, 0x7f12084c

    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120851

    .line 74
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 75
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f120852

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080417

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120827

    .line 77
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 78
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f120828

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0802db

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120835

    .line 80
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 81
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f120836

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080488

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120837

    .line 83
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 84
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f120838

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f08041c

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120839

    .line 86
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 87
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f12083a

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v8

    const v10, 0x7f080450

    invoke-direct {v7, v10, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILandroid/text/Spannable;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f12083b

    .line 89
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 90
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f12083c

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f12083d

    .line 92
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 93
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f12083e

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v10, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f12083f

    .line 95
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 96
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f120840

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080299

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120841

    .line 98
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 99
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f120842

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f08032b

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120843

    .line 101
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 102
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f120844

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0803e6

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120845

    .line 104
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 105
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f120846

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0804b0

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120849

    .line 107
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 108
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f12084a

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080298

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120829

    .line 110
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 111
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f12082a

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f12082b

    .line 113
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 114
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f12082c

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080379

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f12082d

    .line 116
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 117
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f12082e

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080343

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f12082f

    .line 119
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 120
    new-instance v7, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v8, 0x7f120830

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f08049b

    invoke-direct {v7, v9, v8, v5}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f120831

    .line 122
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    .line 123
    new-instance v5, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v7, 0x7f120832

    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f08047d

    invoke-direct {v5, v8, v7, v2}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f120833

    .line 125
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    .line 126
    new-instance v5, Lcom/callapp/contacts/popup/WhatsNewItemData;

    const v7, 0x7f120834

    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f080496

    invoke-direct {v5, v8, v7, v2}, Lcom/callapp/contacts/popup/WhatsNewItemData;-><init>(ILjava/lang/String;Landroid/text/Spannable;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/popup/WhatsNewItemData;

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/popup/WhatsNewItemData;->setExpanded(Z)V

    const v2, 0x7f0d030a

    .line 130
    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0a45

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0601ec

    .line 132
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f120850

    .line 133
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 135
    new-instance p1, Lcom/callapp/contacts/popup/WhatsNewAdapter;

    invoke-direct {p1, v3}, Lcom/callapp/contacts/popup/WhatsNewAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f0a094d

    .line 137
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0802e6

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
