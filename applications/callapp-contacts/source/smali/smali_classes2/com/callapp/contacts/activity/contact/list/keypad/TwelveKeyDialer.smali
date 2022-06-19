.class public Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$KeypadRequestsEvents;,
        Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;
    }
.end annotation


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field a:Z

.field b:Lcom/callapp/contacts/activity/settings/Language;

.field c:Lcom/callapp/contacts/manager/InCallToneManager;

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;

.field private m:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$KeypadRequestsEvents;

.field private n:Landroid/widget/EditText;

.field private final o:Landroid/media/AudioManager;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:[Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

.field private s:Landroid/view/View;

.field private final t:Z

.field private u:Landroid/app/Activity;

.field private v:I

.field private w:Z

.field private x:Lcom/callapp/contacts/model/call/CallData;

.field private y:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

.field private z:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, ""

    const-string v1, "ABC"

    const-string v2, "DEF"

    const-string v3, "GHI"

    const-string v4, "JKL"

    const-string v5, "MNO"

    const-string v6, "PQRS"

    const-string v7, "TUV"

    const-string v8, "WXYZ"

    const-string v9, "+"

    .line 92
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->e:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/view/View;ZZ)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->f:Ljava/lang/Object;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->j:Landroid/util/SparseArray;

    .line 152
    iput-boolean p3, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->h:Z

    .line 153
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->s:Landroid/view/View;

    .line 154
    iput-boolean p4, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->t:Z

    .line 156
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b()V

    .line 157
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->u:Landroid/app/Activity;

    const-string p1, "audio"

    .line 159
    invoke-static {p1}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->o:Landroid/media/AudioManager;

    .line 160
    new-instance p1, Lcom/callapp/contacts/manager/InCallToneManager;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/InCallToneManager;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c:Lcom/callapp/contacts/manager/InCallToneManager;

    const p1, 0x7f0a0325

    .line 162
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    const/4 p3, 0x1

    .line 163
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    const p1, 0x7f0a031d

    .line 165
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->i:Landroid/view/View;

    const p1, 0x7f0a030b

    .line 166
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->k:Landroid/widget/ImageView;

    .line 167
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0600ed

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 169
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a031f

    .line 170
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p4, :cond_0

    const/4 p3, 0x4

    .line 172
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 174
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :goto_0
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->setupButtons(Landroid/view/View;)V

    .line 177
    new-instance p1, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$1;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)V

    .line 192
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 194
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)F
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010095

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x7f130114

    .line 1067
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/high16 v0, 0x41400000    # 12.0f

    .line 1069
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 1071
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1072
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->b(F)F

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 960
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;Z)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->setButtonsVisibility(Z)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 10

    .line 565
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    new-instance v9, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$4;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$4;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "Contact List"

    const-string v7, "Dialer dial"

    const/4 v8, 0x1

    move-object v1, p2

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 633
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b(I)V

    return v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "*#06#"

    .line 722
    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 723
    new-instance p1, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;-><init>()V

    .line 724
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->g:Z

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->l:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;

    return-object p0
.end method

.method private b(I)V
    .locals 4

    .line 639
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Keypad"

    const-string v2, "Speed dial"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;I)V

    .line 701
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 10

    .line 539
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    new-instance v9, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "Contact List"

    const-string v7, "Dialer long-press dial"

    const/4 v8, 0x1

    move-object v1, p2

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "*#07#"

    .line 732
    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 733
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/widget/EditText;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    return-object p0
.end method

.method private c(I)V
    .locals 4

    .line 705
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 706
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->i:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 707
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 710
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    .line 711
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 712
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 715
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 716
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->u:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->u:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 717
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private d(I)V
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c:Lcom/callapp/contacts/manager/InCallToneManager;

    if-eqz v0, :cond_3

    .line 802
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->t:Z

    if-eqz v0, :cond_2

    .line 803
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->x:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_0

    .line 806
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getActiveCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 810
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c:Lcom/callapp/contacts/manager/InCallToneManager;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->e(I)C

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/callapp/contacts/manager/InCallToneManager;->a(Landroid/telecom/Call;C)V

    return-void

    .line 812
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const/16 v0, 0x50

    const-string v1, "Play DTMF FAILED !!!"

    .line 3206
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void

    .line 814
    :cond_2
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 815
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c:Lcom/callapp/contacts/manager/InCallToneManager;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/InCallToneManager;->a(I)V

    return-void

    .line 819
    :cond_3
    const-class p1, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    const-string v0, "toneManager is null while trying to play tone!"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Z
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->g:Z

    return v0
.end method

.method private static e(I)C
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 871
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown tone given"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x23

    return p0

    :pswitch_1
    const/16 p0, 0x2a

    return p0

    :pswitch_2
    const/16 p0, 0x39

    return p0

    :pswitch_3
    const/16 p0, 0x38

    return p0

    :pswitch_4
    const/16 p0, 0x37

    return p0

    :pswitch_5
    const/16 p0, 0x36

    return p0

    :pswitch_6
    const/16 p0, 0x35

    return p0

    :pswitch_7
    const/16 p0, 0x34

    return p0

    :pswitch_8
    const/16 p0, 0x33

    return p0

    :pswitch_9
    const/16 p0, 0x32

    return p0

    :pswitch_a
    const/16 p0, 0x31

    return p0

    :pswitch_b
    const/16 p0, 0x30

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()Z
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->o:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Z
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return v0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Ljava/lang/Object;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/util/SparseArray;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->j:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->v:I

    return p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/app/Activity;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->u:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic lambda$csWYHuEIvdnzIE2vT8aA_LJoo4M(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$kn8WtWiXFBDuh19bwo_BtFqkprA(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private setButtonsVisibility(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->h:Z

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->k:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setupButtons(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a0651

    .line 881
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const v3, 0x7f0a0a63

    .line 882
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const-string v4, "2"

    .line 883
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a(Ljava/lang/String;)Z

    const v4, 0x7f0a0915

    .line 884
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const-string v5, "3"

    .line 885
    invoke-virtual {v4, v5}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a(Ljava/lang/String;)Z

    const v5, 0x7f0a0430

    .line 886
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const-string v6, "4"

    .line 887
    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a(Ljava/lang/String;)Z

    const v6, 0x7f0a0411

    .line 888
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const-string v7, "5"

    .line 889
    invoke-virtual {v6, v7}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a(Ljava/lang/String;)Z

    const v7, 0x7f0a0824

    .line 890
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const-string v8, "6"

    .line 891
    invoke-virtual {v7, v8}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a(Ljava/lang/String;)Z

    const v8, 0x7f0a07f0

    .line 892
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const-string v9, "7"

    .line 893
    invoke-virtual {v8, v9}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a(Ljava/lang/String;)Z

    const v9, 0x7f0a037a

    .line 894
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const-string v10, "8"

    .line 895
    invoke-virtual {v9, v10}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a(Ljava/lang/String;)Z

    const v10, 0x7f0a0629

    .line 896
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const-string v11, "9"

    .line 897
    invoke-virtual {v10, v11}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a(Ljava/lang/String;)Z

    const v11, 0x7f0a0ae5

    .line 898
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const-string v12, "0"

    .line 899
    invoke-virtual {v11, v12}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a(Ljava/lang/String;)Z

    const v12, 0x7f0a0872

    .line 900
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    iput-object v12, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->y:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const v12, 0x7f0a06db

    .line 901
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    iput-object v12, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->z:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    .line 903
    iget-boolean v12, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->t:Z

    if-eqz v12, :cond_0

    .line 904
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const/16 v12, 0xa

    new-array v12, v12, [Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v14, 0x1

    aput-object v3, v12, v14

    const/4 v14, 0x2

    aput-object v4, v12, v14

    const/4 v14, 0x3

    aput-object v5, v12, v14

    const/4 v14, 0x4

    aput-object v6, v12, v14

    const/4 v14, 0x5

    aput-object v7, v12, v14

    const/4 v14, 0x6

    aput-object v8, v12, v14

    const/4 v14, 0x7

    aput-object v9, v12, v14

    const/16 v14, 0x8

    aput-object v10, v12, v14

    const/16 v14, 0x9

    aput-object v11, v12, v14

    .line 906
    iput-object v12, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->r:[Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    .line 907
    array-length v14, v12

    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v15, v12, v13

    .line 908
    iget-boolean v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->t:Z

    if-eqz v1, :cond_1

    .line 909
    invoke-virtual {v15, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 911
    :cond_1
    invoke-virtual {v15, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    :goto_1
    iget-boolean v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->t:Z

    if-eqz v1, :cond_2

    .line 915
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->y:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 916
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->z:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 918
    :cond_2
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->y:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->z:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    .line 923
    :cond_3
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->s:Landroid/view/View;

    const v12, 0x7f0a02f3

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->p:Landroid/widget/ImageView;

    .line 924
    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v14

    const v15, 0x7f0600ed

    invoke-static {v14, v15}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v14

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 925
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080336

    .line 927
    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 929
    iget-object v12, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->u:Landroid/app/Activity;

    const v13, 0x7f0600e9

    invoke-static {v12, v13}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 931
    :cond_4
    iget-object v12, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->s:Landroid/view/View;

    const v13, 0x7f0a0308

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 932
    invoke-virtual {v12, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 933
    invoke-virtual {v12, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    invoke-virtual {v12, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 935
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v13, 0x7f06010a

    invoke-static {v1, v13}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 936
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->s:Landroid/view/View;

    const v12, 0x7f0a031e

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->q:Landroid/widget/ImageView;

    .line 937
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v13

    invoke-static {v13, v15}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 939
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 943
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->s:Landroid/view/View;

    const v12, 0x7f0a02f3

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 944
    invoke-virtual {v11, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 945
    invoke-virtual {v2, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 946
    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 947
    invoke-virtual {v4, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 948
    invoke-virtual {v5, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 949
    invoke-virtual {v6, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 950
    invoke-virtual {v7, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 951
    invoke-virtual {v8, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 952
    invoke-virtual {v9, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 953
    invoke-virtual {v10, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->p:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 201
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->k:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->q:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->r:[Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->r:[Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 205
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->y:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a()V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->z:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->a()V

    :cond_2
    return-void
.end method

.method final a(Z)V
    .locals 1

    .line 286
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->g:Z

    .line 287
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final b()V
    .locals 1

    .line 227
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$2;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)V

    .line 239
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final c()V
    .locals 3

    .line 824
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c:Lcom/callapp/contacts/manager/InCallToneManager;

    if-eqz v0, :cond_2

    .line 825
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->t:Z

    if-eqz v0, :cond_3

    .line 826
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->x:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_0

    .line 829
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getActiveCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 833
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c:Lcom/callapp/contacts/manager/InCallToneManager;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/InCallToneManager;->a(Landroid/telecom/Call;)V

    return-void

    .line 835
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const/16 v1, 0x50

    const-string v2, "Stop DTMF FAILED !!!"

    .line 4206
    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void

    .line 840
    :cond_2
    const-class v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    const-string v1, "toneManager is null while trying to stop tone!"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method final d()V
    .locals 12

    .line 964
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "T9 language changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b:Lcom/callapp/contacts/activity/settings/Language;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Keypad"

    const-string v3, "Keypad Events"

    invoke-virtual {v0, v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bA:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/Language;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b:Lcom/callapp/contacts/activity/settings/Language;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 968
    sget-object v1, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$8;->a:[I

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b:Lcom/callapp/contacts/activity/settings/Language;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/settings/Language;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const v1, 0x7f12069e

    .line 1041
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const v1, 0x7f1206a6

    .line 1042
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f1206ae

    .line 1043
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x7f1206b7

    .line 1044
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f1206c0

    .line 1045
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x7f1206c9

    .line 1046
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x7f1206d2

    .line 1047
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f1206db

    .line 1048
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_0

    :pswitch_1
    const v1, 0x7f1203f7

    .line 1032
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x7f1203f8

    .line 1033
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f1203f9

    .line 1034
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x7f1203fa

    .line 1035
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x7f1203fb

    .line 1036
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f1203fc

    .line 1037
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f1203f6

    .line 1038
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto/16 :goto_0

    :pswitch_2
    const v1, 0x7f12069b

    .line 1020
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f1206a2

    .line 1021
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const v1, 0x7f1206aa

    .line 1022
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f1206b3

    .line 1023
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x7f1206bc

    .line 1024
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f1206c5

    .line 1025
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x7f1206ce

    .line 1026
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x7f1206d7

    .line 1027
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f1206e0

    .line 1028
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f12069a

    .line 1029
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto/16 :goto_0

    :pswitch_3
    const v1, 0x7f12069d

    .line 1010
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const v1, 0x7f1206a5

    .line 1011
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f1206ad

    .line 1012
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x7f1206b6

    .line 1013
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f1206bf

    .line 1014
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x7f1206c8

    .line 1015
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x7f1206d1

    .line 1016
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f1206da

    .line 1017
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_0

    :pswitch_4
    const v1, 0x7f120366

    .line 1000
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const v1, 0x7f120367

    .line 1001
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f120368

    .line 1002
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x7f120369

    .line 1003
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f12036a

    .line 1004
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x7f12036b

    .line 1005
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x7f12036c

    .line 1006
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f12036d

    .line 1007
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_0

    :pswitch_5
    const v1, 0x7f12036f

    .line 990
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const v1, 0x7f120370

    .line 991
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f120371

    .line 992
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x7f120372

    .line 993
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f120373

    .line 994
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x7f120374

    .line 995
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x7f120375

    .line 996
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f120376

    .line 997
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_0

    :pswitch_6
    const v1, 0x7f1206a3

    .line 980
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const v1, 0x7f1206ab

    .line 981
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f1206b4

    .line 982
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x7f1206bd

    .line 983
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f1206c6

    .line 984
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x7f1206cf

    .line 985
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x7f1206d8

    .line 986
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f1206e1

    .line 987
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    :pswitch_7
    const v1, 0x7f1206a1

    .line 970
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const v1, 0x7f1206a9

    .line 971
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f1206b2

    .line 972
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x7f1206bb

    .line 973
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f1206c4

    .line 974
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x7f1206cd

    .line 975
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x7f1206d6

    .line 976
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f1206df

    .line 977
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1054
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->u:Landroid/app/Activity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Landroid/content/Context;)F

    move-result v1

    .line 1056
    :goto_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->r:[Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1057
    aget-object v2, v2, v3

    sget-object v4, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->e:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->b(Ljava/lang/String;)Z

    .line 1058
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->r:[Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    aget-object v2, v2, v3

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->c(Ljava/lang/String;)Z

    .line 1059
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->r:[Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton;->setSecondaryTextSize(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNumber()Ljava/lang/CharSequence;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method isUserAddedToDialerText()Z
    .locals 1

    .line 1076
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return v0
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->x:Lcom/callapp/contacts/model/call/CallData;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x1

    .line 296
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v1, 0xa

    const/4 v2, 0x7

    const/16 v3, 0x9

    const/16 v4, 0xb

    const/16 v5, 0x8

    const-string v6, "Clicked"

    const-string v7, "Keypad"

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    const/4 p1, 0x0

    .line 353
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    .line 354
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    .line 355
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return-void

    :sswitch_1
    const/4 p1, 0x2

    .line 305
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    .line 306
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    .line 307
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return-void

    :sswitch_2
    const/4 p1, 0x3

    .line 311
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    .line 312
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    .line 313
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return-void

    .line 364
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    const/16 p1, 0x11

    .line 365
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    return-void

    :sswitch_4
    const/4 p1, 0x6

    .line 329
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    const/16 p1, 0xd

    .line 330
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    .line 331
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return-void

    .line 335
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    const/16 p1, 0xe

    .line 336
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    .line 337
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return-void

    .line 359
    :sswitch_6
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    const/16 p1, 0x12

    .line 360
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    return-void

    .line 299
    :sswitch_7
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    .line 300
    invoke-direct {p0, v5}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    .line 301
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return-void

    .line 347
    :sswitch_8
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    const/16 p1, 0x10

    .line 348
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    .line 349
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return-void

    :sswitch_9
    const/4 p1, 0x4

    .line 317
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    .line 318
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    .line 319
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return-void

    :sswitch_a
    const/4 p1, 0x5

    .line 323
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    const/16 p1, 0xc

    .line 324
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    .line 325
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return-void

    .line 341
    :sswitch_b
    invoke-direct {p0, v5}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d(I)V

    const/16 p1, 0xf

    .line 342
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    .line 343
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->w:Z

    return-void

    .line 382
    :sswitch_c
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_0
    return-void

    .line 378
    :sswitch_d
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->q:Landroid/widget/ImageView;

    .line 2411
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Showing keypad menu options"

    invoke-virtual {v0, v7, v1, v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->u:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2413
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    const p1, 0x7f0e0003

    .line 2414
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 2415
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f0a0320

    .line 2416
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f12044f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v1, 0x7f0a0321

    .line 2417
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v1, 0x7f120450

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2418
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 388
    :sswitch_e
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Voice search from keypad"

    invoke-virtual {p1, v7, v0, v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->m:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$KeypadRequestsEvents;

    if-eqz p1, :cond_1

    .line 2437
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$KeypadRequestsEvents;->a()V

    :cond_1
    return-void

    .line 373
    :sswitch_f
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->i:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 1744
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1745
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1746
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Show last call log number"

    invoke-virtual {p1, v7, v1, v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Z)Lcom/callapp/contacts/util/CallLogEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1750
    invoke-virtual {p1}, Lcom/callapp/contacts/util/CallLogEntry;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->setNumber(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1753
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Call to number"

    invoke-virtual {v1, v7, v2, v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->i:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 1755
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->u:Landroid/app/Activity;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$7;

    invoke-direct {v10, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$7;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)V

    const-string v7, "Contact List"

    const-string v8, "Dialer dial"

    invoke-static/range {v2 .. v10}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    return-void

    :sswitch_10
    const/16 p1, 0x43

    .line 369
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a02f3 -> :sswitch_10
        0x7f0a0308 -> :sswitch_f
        0x7f0a030b -> :sswitch_e
        0x7f0a031e -> :sswitch_d
        0x7f0a0325 -> :sswitch_c
        0x7f0a037a -> :sswitch_b
        0x7f0a0411 -> :sswitch_a
        0x7f0a0430 -> :sswitch_9
        0x7f0a0629 -> :sswitch_8
        0x7f0a0651 -> :sswitch_7
        0x7f0a06db -> :sswitch_6
        0x7f0a07f0 -> :sswitch_5
        0x7f0a0824 -> :sswitch_4
        0x7f0a0872 -> :sswitch_3
        0x7f0a0915 -> :sswitch_2
        0x7f0a0a63 -> :sswitch_1
        0x7f0a0ae5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 447
    invoke-static {v2, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 450
    iget-boolean v3, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->t:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0a02f3

    if-eq v2, v3, :cond_0

    return v1

    .line 455
    :cond_0
    iget-object v3, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v3, v4, :cond_1

    iget-object v3, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    .line 456
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput v3, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->v:I

    const-string v5, "Clicked"

    const-string v6, "Keypad"

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    if-nez v3, :cond_2

    const/16 v1, 0x51

    .line 512
    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    goto/16 :goto_1

    .line 514
    :cond_2
    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(I)Z

    goto/16 :goto_1

    .line 479
    :sswitch_1
    invoke-direct {v0, v4}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(I)Z

    goto/16 :goto_1

    :sswitch_2
    const/4 v1, 0x3

    .line 483
    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(I)Z

    goto/16 :goto_1

    :sswitch_3
    const/4 v1, 0x6

    .line 495
    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(I)Z

    goto/16 :goto_1

    :sswitch_4
    const/4 v1, 0x7

    .line 499
    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(I)Z

    goto/16 :goto_1

    :sswitch_5
    if-nez v3, :cond_3

    .line 472
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->c(Landroid/content/Context;)Z

    goto/16 :goto_1

    .line 474
    :cond_3
    invoke-direct {v0, v7}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(I)Z

    goto/16 :goto_1

    :sswitch_6
    const/16 v1, 0x9

    .line 507
    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(I)Z

    goto/16 :goto_1

    :sswitch_7
    const/4 v1, 0x4

    .line 487
    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(I)Z

    goto/16 :goto_1

    :sswitch_8
    const/4 v1, 0x5

    .line 491
    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(I)Z

    goto/16 :goto_1

    :sswitch_9
    const/16 v1, 0x8

    .line 503
    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(I)Z

    goto/16 :goto_1

    .line 525
    :sswitch_a
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return v1

    .line 534
    :sswitch_b
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Call to number"

    invoke-virtual {v2, v6, v3, v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->i:Landroid/view/View;

    invoke-static {v2, v7}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 537
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 538
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->u:Landroid/app/Activity;

    new-instance v3, Lcom/callapp/contacts/activity/contact/list/keypad/-$$Lambda$TwelveKeyDialer$kn8WtWiXFBDuh19bwo_BtFqkprA;

    invoke-direct {v3, v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/-$$Lambda$TwelveKeyDialer$kn8WtWiXFBDuh19bwo_BtFqkprA;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;Ljava/lang/String;)V

    new-instance v4, Lcom/callapp/contacts/activity/contact/list/keypad/-$$Lambda$TwelveKeyDialer$csWYHuEIvdnzIE2vT8aA_LJoo4M;

    invoke-direct {v4, v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/-$$Lambda$TwelveKeyDialer$csWYHuEIvdnzIE2vT8aA_LJoo4M;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_1

    .line 593
    :cond_4
    iget-object v8, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->u:Landroid/app/Activity;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)V

    const-string v13, "Contact List"

    const-string v14, "Dialer long-press dial"

    move-object/from16 v16, v1

    invoke-static/range {v8 .. v16}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    goto :goto_1

    .line 460
    :sswitch_c
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Clear number"

    invoke-virtual {v2, v6, v3, v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, v7}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Z)V

    .line 464
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 465
    iget-object v3, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v3, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 466
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_5
    :goto_1
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a02f3 -> :sswitch_c
        0x7f0a0308 -> :sswitch_b
        0x7f0a0325 -> :sswitch_a
        0x7f0a037a -> :sswitch_9
        0x7f0a0411 -> :sswitch_8
        0x7f0a0430 -> :sswitch_7
        0x7f0a0629 -> :sswitch_6
        0x7f0a0651 -> :sswitch_5
        0x7f0a07f0 -> :sswitch_4
        0x7f0a0824 -> :sswitch_3
        0x7f0a0915 -> :sswitch_2
        0x7f0a0a63 -> :sswitch_1
        0x7f0a0ae5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 423
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/16 p1, 0x4a

    .line 428
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    return v0

    :pswitch_1
    const/16 p1, 0x37

    .line 425
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c(I)V

    return v0

    :pswitch_data_0
    .packed-switch 0x7f0a0320
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c()V

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->onClick(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method setFilterListener(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->l:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;

    return-void
.end method

.method public setKeypadRequestsEventsListener(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$KeypadRequestsEvents;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->m:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$KeypadRequestsEvents;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 786
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 788
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 793
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 795
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
