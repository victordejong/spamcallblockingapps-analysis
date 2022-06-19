.class public Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private b:Landroid/widget/RadioGroup;

.field private c:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/RadioGroup;[Ljava/lang/String;IILjava/lang/String;)V
    .locals 5

    .line 92
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f080113

    .line 94
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_0

    const v3, 0x7f0d0129

    .line 97
    invoke-virtual {p1, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    const v4, 0x7f0601ec

    .line 98
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 99
    aget-object v4, p4, v2

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    float-to-int v4, v0

    .line 100
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setMinimumHeight(I)V

    .line 101
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setId(I)V

    .line 102
    invoke-virtual {p3, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p3, p5}, Landroid/widget/RadioGroup;->check(I)V

    .line 106
    new-instance p1, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$1;

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$1;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 113
    invoke-virtual {p2, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 114
    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f060088

    .line 115
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    const v0, 0x7f0a0315

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1200d1

    .line 120
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0600f2

    .line 121
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$2;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0318

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1205e4

    .line 131
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_0

    const p2, 0x7f08058d

    goto :goto_0

    :cond_0
    const p2, 0x7f080119

    .line 133
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    new-instance p2, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$3;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$3;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;)V
    .locals 3

    .line 1144
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 1145
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 1146
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    move-result-object v1

    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->c:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const p2, 0x7f0d00e0

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f080113

    .line 41
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0956

    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0d012c

    const/4 v2, 0x1

    .line 44
    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a040c

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a04ad

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v1, 0x7f0a0922

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0601ec

    .line 48
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f1205a8

    .line 49
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0a45

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1205a3

    .line 52
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, 0x0

    .line 54
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v0

    .line 1064
    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1065
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1066
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0a05cb

    .line 1069
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a:Landroid/widget/RadioGroup;

    .line 1070
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->ordinal()I

    move-result v6

    const v7, 0x7f0a05cc

    const v0, 0x7f1205a9

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/RadioGroup;[Ljava/lang/String;IILjava/lang/String;)V

    .line 1072
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v0

    .line 1073
    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1074
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1075
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f0a00f6

    .line 1078
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->b:Landroid/widget/RadioGroup;

    .line 1079
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->ordinal()I

    move-result v6

    const v7, 0x7f0a00f7

    const v0, 0x7f1205a4

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/RadioGroup;[Ljava/lang/String;IILjava/lang/String;)V

    .line 1081
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    move-result-object v0

    .line 1082
    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1083
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1084
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const v0, 0x7f0a03eb

    .line 1087
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->c:Landroid/widget/RadioGroup;

    .line 1088
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->ordinal()I

    move-result v6

    const v7, 0x7f0a03ec

    const v0, 0x7f1205a6

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/RadioGroup;[Ljava/lang/String;IILjava/lang/String;)V

    .line 57
    invoke-direct {p0, p2, v9}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a(Landroid/view/View;Z)V

    return-object p2
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
