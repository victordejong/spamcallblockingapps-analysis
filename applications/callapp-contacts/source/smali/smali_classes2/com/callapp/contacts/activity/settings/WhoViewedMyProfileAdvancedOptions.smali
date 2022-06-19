.class public Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/RadioGroup;

.field private c:Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->a:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->c:Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;)Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->c:Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;

    return-object p0
.end method

.method static synthetic a()V
    .locals 2

    .line 1093
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->INSTANT:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    if-ne v0, v1, :cond_0

    .line 1094
    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;->b()V

    return-void

    .line 1098
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;->b()V

    .line 1099
    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;->a()V

    return-void
.end method


# virtual methods
.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const p2, 0x7f0d00eb

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f080113

    .line 46
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1053
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->a:Ljava/util/List;

    sget-object v2, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->INSTANT:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->a:Ljava/util/List;

    sget-object v2, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->DAILY:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->a:Ljava/util/List;

    sget-object v2, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->WEEKLY:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0a0184

    .line 1056
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->b:Landroid/widget/RadioGroup;

    .line 1057
    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->a:Ljava/util/List;

    .line 1062
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070156

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 1063
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1065
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    const v6, 0x7f0d0244

    .line 1066
    invoke-virtual {p1, v6, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    const v7, 0x7f0601ec

    .line 1067
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1068
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    float-to-int v7, v3

    .line 1069
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setMinimumHeight(I)V

    .line 1070
    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 1071
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->hy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v4

    .line 1074
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1076
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 1078
    new-instance p1, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;

    invoke-direct {p1, p0, v2, v1}, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;-><init>(Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;Ljava/util/List;Landroid/widget/RadioGroup;)V

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-object p2
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
