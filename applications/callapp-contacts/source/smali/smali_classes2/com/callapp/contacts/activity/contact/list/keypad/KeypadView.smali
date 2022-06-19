.class public Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;
    }
.end annotation


# instance fields
.field a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

.field b:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

.field c:Landroid/view/View;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/view/View;

.field h:Landroid/view/GestureDetector;

.field private i:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 227
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$7;

    sget-object v3, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->MEDIUM:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$7;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->h:Landroid/view/GestureDetector;

    .line 71
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$7;

    sget-object v2, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->MEDIUM:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$7;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    invoke-direct {p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->h:Landroid/view/GestureDetector;

    .line 76
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 227
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$7;

    sget-object v1, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->MEDIUM:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$7;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    invoke-direct {p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->h:Landroid/view/GestureDetector;

    .line 81
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->i:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->b:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f0d02fe

    .line 90
    invoke-static {p1, v0, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->c:Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->c:Landroid/view/View;

    const v0, 0x7f0a0325

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 94
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0600eb

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 97
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    :cond_0
    const p1, 0x7f0a02a4

    .line 102
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->g:Landroid/view/View;

    .line 105
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->c:Landroid/view/View;

    const v0, 0x7f0a054c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 106
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$1;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->c:Landroid/view/View;

    const v0, 0x7f0a0244

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->f:Landroid/widget/ImageView;

    .line 114
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f0600ed

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 115
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->f:Landroid/widget/ImageView;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$2;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->c:Landroid/view/View;

    const v0, 0x7f0a0542

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->e:Landroid/widget/ImageView;

    .line 127
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->e:Landroid/widget/ImageView;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$3;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->b()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Landroid/app/Activity;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->b:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Z)V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->d:Landroid/widget/ImageView;

    const v1, 0x7f0600ed

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->c:Landroid/view/View;

    const v2, 0x7f0a081b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->d:Landroid/widget/ImageView;

    .line 206
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 209
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 213
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->b:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->b:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-static {v2}, Lcom/callapp/contacts/manager/sim/SimManager;->c(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)I

    move-result v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$6;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getNumber()Ljava/lang/CharSequence;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->getNumber()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBottomSectionShown()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public isUserAddedToDialerText()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->isUserAddedToDialerText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Keypadview"

    const-string v0, "touch is not allowed or view is hidden"

    .line 253
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 257
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setKeypadSearchEventsListener(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->i:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1

    .line 281
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->setNumber(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 284
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Z)V

    return-void
.end method
