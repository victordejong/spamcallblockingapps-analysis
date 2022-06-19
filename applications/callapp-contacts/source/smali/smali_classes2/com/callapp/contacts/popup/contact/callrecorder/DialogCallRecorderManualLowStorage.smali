.class public Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/model/call/CallData;

.field private final b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field private final c:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->a:Lcom/callapp/contacts/model/call/CallData;

    .line 35
    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->c:Lcom/callapp/contacts/model/contact/ContactData;

    .line 38
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "Call recorders list"

    const-string p3, "Storage exception display"

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;)Lcom/callapp/contacts/model/objectbox/CallRecorder;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->c:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f060244

    .line 52
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v6, 0x7f0601cc

    .line 53
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f0601ec

    .line 54
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const v3, 0x7f0a04ad

    .line 56
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v3, 0x7f0a0a4d

    .line 58
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120151

    .line 59
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0a48

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f120150

    .line 63
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a06da

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getPhoneInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a06d4

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1204e0

    .line 72
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a06d9

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-static {v2}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/model/call/CallData;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    const v0, 0x7f0a06d5

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    new-instance v2, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage$1;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;)V

    const v0, 0x7f1205e4

    .line 86
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v3, 0x7f0a0318

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 82
    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;Z)Landroid/view/View;

    .line 88
    new-instance v2, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage$2;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;)V

    const v0, 0x7f1202b6

    .line 95
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    const v3, 0x7f0a0315

    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;I)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 100
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0d00c8

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->setupViews(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;->setCancelable(Z)V

    return-object p1
.end method
