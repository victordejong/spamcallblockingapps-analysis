.class public Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->b:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/RadioGroup;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/View;",
            "Landroid/widget/RadioGroup;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f080113

    .line 86
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 88
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    const v4, 0x7f0d0244

    .line 89
    invoke-virtual {p1, v4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    const v5, 0x7f0601ec

    .line 90
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 91
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getNameString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    float-to-int v5, v0

    .line 92
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setMinimumHeight(I)V

    .line 93
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setId(I)V

    .line 94
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UNKNOWN:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-eq v5, v6, :cond_0

    .line 95
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getNameString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getNameString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v2

    .line 99
    :cond_0
    invoke-virtual {p3, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object p4, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UNKNOWN:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-eq p1, p4, :cond_2

    .line 102
    invoke-virtual {p3, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 104
    :cond_2
    new-instance p1, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$1;

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$1;-><init>(Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    const v0, 0x7f0a0315

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1201a9

    .line 116
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0600f2

    .line 117
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    new-instance v1, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$2;-><init>(Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0318

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1205e4

    .line 126
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_0

    const p2, 0x7f08058d

    goto :goto_0

    :cond_0
    const p2, 0x7f080119

    .line 128
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    new-instance p2, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$3;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog$3;-><init>(Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;)V
    .locals 2

    .line 1139
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1140
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->a:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->a(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const p2, 0x7f0d00d1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f080113

    .line 45
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a0922

    .line 46
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120613

    .line 47
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0601ec

    .line 48
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1055
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->values()[Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v1

    .line 1056
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1059
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 1061
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1062
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v0

    .line 1064
    :goto_1
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->isIM()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->isAppInstalled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1065
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getNameString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getLargeIcon()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    iget-object v6, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->b:Ljava/util/List;

    aget-object v7, v1, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1072
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v1

    const v2, 0x7f1204ce

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1111
    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1073
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->dismiss()V

    :cond_3
    const v0, 0x7f0a0184

    .line 1075
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->a:Landroid/widget/RadioGroup;

    .line 1077
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->b:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/RadioGroup;Ljava/util/List;)V

    .line 50
    invoke-direct {p0, p2, v4}, Lcom/callapp/contacts/activity/settings/PostCallDefaultIMDialog;->a(Landroid/view/View;Z)V

    return-object p2
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
