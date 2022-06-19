.class public Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;
    }
.end annotation


# instance fields
.field private buttonGroup:Landroid/widget/RadioGroup;

.field private index:I

.field private listener:Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;


# direct methods
.method public constructor <init>(ILcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->listener:Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;

    .line 45
    iput p1, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->index:I

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;)Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->listener:Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;

    return-object p0
.end method

.method private setupGroup(Landroid/view/LayoutInflater;Landroid/widget/RadioGroup;[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;)V
    .locals 9

    .line 78
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f080113

    .line 79
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_1

    const v3, 0x7f0d0244

    .line 82
    invoke-virtual {p1, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    const v4, 0x7f0601ec

    .line 83
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 84
    aget-object v4, p3, v2

    sget-object v5, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_1000:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    if-ne v4, v5, :cond_0

    .line 85
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x7f12013a

    .line 88
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    new-instance v5, Landroid/text/SpannableString;

    sget-object v6, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_1000:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    invoke-virtual {v6}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, 0x7f0600f2

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v5, v4, v1, v7, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 94
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v7, 0x7f060088

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v5, v4, v1, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 95
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 96
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v5, v4, v1, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v4, " "

    .line 97
    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 98
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 101
    :cond_0
    aget-object v4, p3, v2

    invoke-virtual {v4}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    float-to-int v4, v0

    .line 103
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setMinimumHeight(I)V

    .line 104
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setId(I)V

    .line 105
    invoke-virtual {p2, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 107
    :cond_1
    iget p1, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->index:I

    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 108
    new-instance p1, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$1;-><init>(Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;)V

    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private setupGroups(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0184

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->buttonGroup:Landroid/widget/RadioGroup;

    .line 74
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->values()[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->setupGroup(Landroid/view/LayoutInflater;Landroid/widget/RadioGroup;[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;)V

    return-void
.end method


# virtual methods
.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const p2, 0x7f0d00d7

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f080113

    .line 57
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f060088

    .line 59
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0601ec

    .line 60
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f0a0498

    .line 62
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a049c

    .line 63
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120707

    .line 65
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->setupGroups(Landroid/view/LayoutInflater;Landroid/view/View;)V

    return-object p2
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
