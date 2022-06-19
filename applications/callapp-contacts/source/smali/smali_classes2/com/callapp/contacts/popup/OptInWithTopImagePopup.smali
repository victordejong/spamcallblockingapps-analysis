.class public Lcom/callapp/contacts/popup/OptInWithTopImagePopup;
.super Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

.field private b:Lcom/callapp/contacts/widget/CallAppCheckBox;


# direct methods
.method private constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p8}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 89
    iput-object p9, p0, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->a:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    .line 1094
    new-instance p1, Lcom/callapp/contacts/popup/-$$Lambda$OptInWithTopImagePopup$X5xcmnkmzdCtEChHjElaFVJX2n0;

    invoke-direct {p1, p0, p5}, Lcom/callapp/contacts/popup/-$$Lambda$OptInWithTopImagePopup$X5xcmnkmzdCtEChHjElaFVJX2n0;-><init>(Lcom/callapp/contacts/popup/OptInWithTopImagePopup;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->setPositiveListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 11

    .line 62
    new-instance v10, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;

    const v0, 0x7f1203c1

    .line 64
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1203c0

    .line 65
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    const v0, 0x7f1204ea

    .line 66
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/callapp/contacts/manager/preferences/Prefs;->fO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    const v1, 0x7f080517

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v10

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v10}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 11

    .line 27
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;

    const v2, 0x7f080517

    const v1, 0x7f1203bf

    .line 30
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1203be

    .line 31
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1204ea

    .line 32
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f1201e3

    .line 34
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v1, 0x7f060110

    .line 35
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    sget-object v10, Lcom/callapp/contacts/manager/preferences/Prefs;->fN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-object v1, v0

    move-object v6, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v10}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 38
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b:Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setChecked(Z)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b:Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->a:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 98
    :cond_0
    invoke-interface {p1, p2}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;->onClickListener(Landroid/app/Activity;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 22
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 11

    .line 48
    new-instance v10, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;

    const v0, 0x7f1203bf

    .line 50
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1203bd

    .line 51
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1204ea

    .line 52
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1201e3

    .line 54
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f060110

    .line 55
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    sget-object v9, Lcom/callapp/contacts/manager/preferences/Prefs;->fM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    const v1, 0x7f080517

    move-object v0, v10

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V

    .line 58
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v10}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 43
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    .line 76
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$1prs42S7UOTLZv5YVrMjcRIP86g(Lcom/callapp/contacts/popup/OptInWithTopImagePopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$X5xcmnkmzdCtEChHjElaFVJX2n0(Lcom/callapp/contacts/popup/OptInWithTopImagePopup;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    const v0, 0x7f0d00db

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 110
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0a49

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120502

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a065a

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/CallAppCheckBox;

    iput-object p2, p0, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b:Lcom/callapp/contacts/widget/CallAppCheckBox;

    const p2, 0x7f0a065b

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/popup/-$$Lambda$OptInWithTopImagePopup$1prs42S7UOTLZv5YVrMjcRIP86g;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/-$$Lambda$OptInWithTopImagePopup$1prs42S7UOTLZv5YVrMjcRIP86g;-><init>(Lcom/callapp/contacts/popup/OptInWithTopImagePopup;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p2, p0, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b:Lcom/callapp/contacts/widget/CallAppCheckBox;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setChecked(Z)V

    return-object p1
.end method
