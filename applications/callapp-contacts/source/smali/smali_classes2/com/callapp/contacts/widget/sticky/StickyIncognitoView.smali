.class public Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1040
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d01be

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1041
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->fP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->fR:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    .line 1042
    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p3, v1}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    const-wide/16 v1, 0x3

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    const/4 p2, 0x0

    .line 1043
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;->setVisibility(I)V

    .line 1044
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->fP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const p2, 0x7f0805d4

    .line 1045
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;->setBackgroundResource(I)V

    const p2, 0x7f0a0896

    .line 1046
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f1203c3

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0894

    .line 1047
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyIncognitoView$3z0u7o7BAAMEdqrJG8Z1ZDotI4s;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyIncognitoView$3z0u7o7BAAMEdqrJG8Z1ZDotI4s;-><init>(Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1203c2

    .line 1064
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1203b6

    .line 1065
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1066
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1067
    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1069
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v0, 0x21

    .line 1068
    invoke-virtual {p3, v1, p1, p2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    const p1, 0x7f0a0895

    .line 1071
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/16 p1, 0x8

    .line 1073
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;->setVisibility(I)V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    const/16 p2, 0x8

    .line 48
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;->setVisibility(I)V

    .line 49
    new-instance p2, Lcom/callapp/contacts/popup/contact/DialogBulletListTopImage;

    const v0, 0x7f1203bc

    .line 50
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x5

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const v0, 0x7f1204ea

    .line 56
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyIncognitoView$nYFgWyIA9G4ZY0ob_nENGX8b2f4;->INSTANCE:Lcom/callapp/contacts/widget/sticky/-$$Lambda$StickyIncognitoView$nYFgWyIA9G4ZY0ob_nENGX8b2f4;

    const v1, 0x7f080517

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/popup/contact/DialogBulletListTopImage;-><init>(ILjava/lang/CharSequence;[ILjava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 61
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1203b8
        0x7f1203ba
        0x7f1203bb
        0x7f1203b9
        0x7f1203b7
    .end array-data
.end method

.method public static synthetic lambda$3z0u7o7BAAMEdqrJG8Z1ZDotI4s(Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$nYFgWyIA9G4ZY0ob_nENGX8b2f4(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/widget/sticky/StickyIncognitoView;->a(Landroid/app/Activity;)V

    return-void
.end method
