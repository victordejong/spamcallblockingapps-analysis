.class public Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;
.super Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# instance fields
.field private actionSMS:Landroid/widget/ImageView;

.field private callSimLayout:Landroid/widget/LinearLayout;

.field private phoneVerificationLayoutText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 92
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$1;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;ZZ)V

    const p1, 0x7f0a0500

    .line 102
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 103
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f1203c4

    .line 104
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0244

    .line 105
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a018d

    .line 106
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0195

    .line 107
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 108
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f060244

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const p1, 0x7f0a04df

    .line 110
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 111
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f0600e7

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 112
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04e3

    .line 113
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->actionSMS:Landroid/widget/ImageView;

    const p1, 0x7f0a06af

    .line 114
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->phoneVerificationLayoutText:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->actionSMS:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 117
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->actionSMS:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04e0

    .line 118
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 119
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 120
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;ILcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->handleVerificationStatus(ILcom/callapp/framework/phone/Phone;)V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->setSimId(Lcom/callapp/contacts/manager/sim/SimManager$SimId;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;)Landroid/widget/ImageView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->actionSMS:Landroid/widget/ImageView;

    return-object p0
.end method

.method private handleVerificationStatus(ILcom/callapp/framework/phone/Phone;)V
    .locals 4

    const v0, 0x7f07036d

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    .line 162
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->s:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, v1, :cond_2

    .line 167
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->r:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->phoneVerificationLayoutText:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 168
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->phoneVerificationLayoutText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->phoneVerificationLayoutText:Landroid/widget/TextView;

    const v3, 0x7f120529

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v3, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->phoneVerificationLayoutText:Landroid/widget/TextView;

    const p2, 0x7f0804d8

    invoke-virtual {p1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 171
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->phoneVerificationLayoutText:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void

    .line 163
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->phoneVerificationLayoutText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->phoneVerificationLayoutText:Landroid/widget/TextView;

    const v3, 0x7f120527

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v3, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->phoneVerificationLayoutText:Landroid/widget/TextView;

    const p2, 0x7f080432

    invoke-virtual {p1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 166
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->phoneVerificationLayoutText:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method private incomingIsPrivate(Z)V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->getPresenterContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$4;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setSimId(Lcom/callapp/contacts/manager/sim/SimManager$SimId;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->callSimLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a0368

    .line 191
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 192
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->callSimLayout:Landroid/widget/LinearLayout;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->callSimLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0367

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 195
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->callSimLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0363

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 196
    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager;->b(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)I

    move-result p1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f060088

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, p1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 198
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 199
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const p1, 0x7f060244

    .line 201
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    .line 203
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->callSimLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 207
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->callSimLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 208
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->callSimLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected getBottomLayoutAdColor()I
    .locals 1

    const v0, 0x7f0601f1

    return v0
.end method

.method protected getBottomLayoutBackgroundColor()I
    .locals 1

    const v0, 0x7f080278

    return v0
.end method

.method public getBottomLayoutResId()I
    .locals 1

    const v0, 0x7f0d0132

    return v0
.end method

.method getOrigin()Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
    .locals 1

    .line 225
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-object v0
.end method

.method protected getOverlayInitHeight()I
    .locals 2

    .line 131
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070329

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 85
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->DURING_CALL_OVERLAY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method protected getStartYposition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTrackEventCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "Contact Details Overlay"

    return-object v0
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 141
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$2;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$3;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 148
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->finishViewContainer(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 235
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 238
    :pswitch_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 239
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->muteRingerIfNeeded()V

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;-><init>(Lcom/callapp/framework/phone/Phone;)V

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 242
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->finishViewContainer(Z)V

    return-void

    .line 249
    :pswitch_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->f()Z

    .line 250
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->finishViewContainer(Z)V

    goto :goto_0

    .line 246
    :pswitch_3
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->c()Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a04df
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 182
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->incomingIsPrivate(Z)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V

    .line 56
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 61
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onDestroy()V

    .line 62
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Incoming Call Overlay Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onNewIntent(Landroid/content/Intent;)Z

    move-result p1

    .line 69
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Incoming Call Overlay Screen"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    return p1
.end method

.method protected setCloseButtonListenerInOverlay(IIZ)V
    .locals 0

    return-void
.end method
