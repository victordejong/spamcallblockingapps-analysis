.class public Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;
.super Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener;
.implements Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;
.implements Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;
.implements Lcom/sinch/verification/core/initiation/response/InitiationListener;
.implements Lcom/sinch/verification/core/verification/response/VerificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnKeyListener;",
        "Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener;",
        "Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;",
        "Lcom/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents;",
        "Lcom/sinch/verification/core/initiation/response/InitiationListener<",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
        ">;",
        "Lcom/sinch/verification/core/verification/response/VerificationListener;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroid/os/CountDownTimer;

.field private C:Landroid/os/CountDownTimer;

.field private final D:I

.field private E:I

.field private F:Landroid/widget/RelativeLayout;

.field private G:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

.field private H:Z

.field private I:Ljava/util/Date;

.field private J:Landroid/widget/RelativeLayout;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/ProgressBar;

.field private M:Landroid/widget/CheckBox;

.field private N:Z

.field private O:Lcom/callapp/framework/phone/Phone;

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Landroid/text/TextWatcher;

.field private final a:Landroid/content/Intent;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/hbb20/CountryCodePicker;

.field private j:Landroid/text/TextWatcher;

.field private k:I

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;-><init>()V

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->k:I

    .line 133
    iput v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->A:I

    const/4 v1, 0x2

    .line 136
    iput v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->D:I

    .line 137
    iput v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->E:I

    .line 142
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->H:Z

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->I:Ljava/util/Date;

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->N:Z

    .line 849
    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->S:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic A(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->K:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic B(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->L:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic C(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c(Z)V

    return-void
.end method

.method static synthetic D(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->E:I

    return p0
.end method

.method static synthetic E(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)I
    .locals 2

    .line 94
    iget v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->E:I

    return v0
.end method

.method static synthetic F(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e()V

    return-void
.end method

.method static synthetic G(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic H(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic I(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->H:Z

    return p0
.end method

.method static synthetic J(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->H:Z

    return v0
.end method

.method static synthetic K(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->G:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    return-object p0
.end method

.method static synthetic L(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 7

    .line 16203
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Flash Call Screen"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16204
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->P:Z

    .line 16205
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16206
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16207
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16208
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16209
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->getEnteredPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const v1, 0x7f0a06b3

    .line 16210
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 16211
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0415

    .line 16212
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    .line 16214
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16215
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    const v4, 0x7f0800b5

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;IIZ)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->G:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    :cond_0
    return-void
.end method

.method static synthetic M(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/util/Date;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->I:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->I:Ljava/util/Date;

    return-object p1
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 592
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a:Landroid/content/Intent;

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->VK:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->getNumRep()I

    move-result v0

    const-string v1, "EXTRA_NETWORK_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a:Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 594
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->finish()V

    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;)V
    .locals 9

    .line 1445
    sget-object v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$31;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x8

    const v1, 0x7f06010a

    const v2, 0x7f08052f

    const v3, 0x7f1205c7

    const-string v4, "Registration"

    const/4 v5, 0x0

    const/16 v6, 0x11

    .line 1449
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1471
    :pswitch_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v8, "ViewSinchUnsuccessPopup"

    invoke-virtual {p1, v4, v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1473
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->Q:Z

    if-eqz p1, :cond_0

    .line 1474
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p1, v2, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 1475
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1476
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1477
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1478
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1479
    iput-boolean v7, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->R:Z

    .line 1480
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->R:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1481
    invoke-direct {p0, v7}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Z)V

    return-void

    .line 1483
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->finish()V

    goto :goto_0

    .line 1454
    :pswitch_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v3, 0x7f1205c8

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1455
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->Q:Z

    if-eqz p1, :cond_1

    .line 1456
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p1, v2, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 1457
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1458
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1459
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1460
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1461
    iput-boolean v7, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->R:Z

    .line 1462
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->R:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1463
    invoke-direct {p0, v7}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Z)V

    return-void

    .line 1465
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->finish()V

    return-void

    .line 1448
    :pswitch_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "ViewSMSUnsuccessPopup"

    invoke-virtual {p1, v4, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1451
    invoke-direct {p0, v5}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Z)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f12040f

    .line 587
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setText(Ljava/lang/String;)V

    const v0, 0x7f120411

    .line 588
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setText(Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lcom/callapp/contacts/util/LocaleUtils;->isRussianUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 590
    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setVisibility(I)V

    .line 591
    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/-$$Lambda$PhoneLoginActivity$_bK-LlSDLPugmwxUTMVmCNkrZ9s;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/-$$Lambda$PhoneLoginActivity$_bK-LlSDLPugmwxUTMVmCNkrZ9s;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    invoke-virtual {p2, v1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setEnabled(Z)V

    .line 599
    :cond_0
    new-instance p2, Lcom/callapp/contacts/activity/setup/phoneLogin/-$$Lambda$PhoneLoginActivity$9_aHM7xeBytkzMxtou-4t0exCPc;

    invoke-direct {p2, p0, p4}, Lcom/callapp/contacts/activity/setup/phoneLogin/-$$Lambda$PhoneLoginActivity$9_aHM7xeBytkzMxtou-4t0exCPc;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setEnabled(Z)V

    .line 609
    new-instance p1, Lcom/callapp/contacts/activity/setup/phoneLogin/-$$Lambda$PhoneLoginActivity$QzEBOPozGblD4g1Jv0SQPzpUFiE;

    invoke-direct {p1, p0, p4}, Lcom/callapp/contacts/activity/setup/phoneLogin/-$$Lambda$PhoneLoginActivity$QzEBOPozGblD4g1Jv0SQPzpUFiE;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    invoke-virtual {p3, v1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setEnabled(Z)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 610
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "Registration"

    const-string v1, "Clicked login button: Google"

    invoke-virtual {p2, v0, v1, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a:Landroid/content/Intent;

    sget-object p2, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->USER_GOOGLE:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {p2}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->getNumRep()I

    move-result p2

    const-string v0, "EXTRA_NETWORK_TYPE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a:Landroid/content/Intent;

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 614
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->finish()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->j:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 526
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 527
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/view/View;I)V

    if-eqz p1, :cond_1

    .line 530
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->j:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->w:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;)V
    .locals 2

    .line 13501
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$9;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$9;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-direct {v0, p1, v1}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;-><init>(Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash;)V

    const/4 p1, 0x0

    .line 13508
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;->setCancelable(Z)V

    .line 13509
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->d(Z)V

    return-void
.end method

.method private b(Lcom/callapp/framework/phone/Phone;)V
    .locals 1

    .line 456
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    .line 457
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 459
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 460
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 461
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->d:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1500
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->P:Z

    .line 1501
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1502
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1503
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1504
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1505
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->M:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1506
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->L:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1507
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 600
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "Registration"

    const-string v1, "Clicked login button: Facebook"

    invoke-virtual {p2, v0, v1, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a:Landroid/content/Intent;

    sget-object p2, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->FACEBOOK:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {p2}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->getNumRep()I

    move-result p2

    const-string v0, "EXTRA_NETWORK_TYPE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a:Landroid/content/Intent;

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 604
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->finish()V

    return-void
.end method

.method private b(Z)V
    .locals 7

    const/4 v0, 0x0

    .line 630
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->P:Z

    .line 631
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->B:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 632
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->C:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    .line 635
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 640
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    iget-boolean v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->Q:Z

    const v4, 0x7f06010a

    const v5, 0x7f0600f2

    const v6, 0x7f08052f

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->R:Z

    if-nez v2, :cond_5

    .line 644
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 647
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 648
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    goto :goto_2

    :cond_4
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    :goto_2
    invoke-static {v2, v6, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    goto :goto_4

    .line 650
    :cond_5
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 653
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 654
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    goto :goto_3

    :cond_6
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    :goto_3
    invoke-static {v2, v6, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 658
    :goto_4
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 659
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/view/View;I)V

    .line 660
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 661
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 662
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 663
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_7

    .line 666
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e()V

    :cond_7
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 1

    .line 466
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->getEnteredPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e()V

    return-void

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->d()V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 11

    .line 725
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "ViewEnterSMSCodeScreen"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 726
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->P:Z

    .line 727
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 728
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 729
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 730
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->l:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 731
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12975
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12977
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    const v2, 0x7f060244

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f080524

    invoke-static {v1, v7, v4, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 12978
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v1, v7, v4, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 12979
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->o:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v1, v7, v4, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 12980
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v1, v7, v4, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 12981
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v1, v7, v4, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 12982
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v1, v7, v4, v5}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 734
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->B:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->C:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    .line 738
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->M:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 742
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->getEnteredPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 743
    iget-object v4, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->x:Ljava/lang/String;

    invoke-static {p0, v1, v4}, Lcom/callapp/contacts/util/SmsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 744
    sget-object v4, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;->SMS_SENT_FAIL:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;

    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType;)V

    :cond_2
    const v4, 0x7f0a06b2

    .line 747
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 748
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    new-instance v5, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$13;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$13;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    iget-object v4, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 758
    iget-object v4, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    const v5, 0x7f0800da

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v5, v2, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 761
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v2

    const-string v4, "sinchBlockedCountries"

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getCountryCode()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    .line 764
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 766
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    .line 767
    invoke-static {v6, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v1, 0x0

    if-nez v0, :cond_6

    .line 775
    iget-boolean v4, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->Q:Z

    if-nez v4, :cond_6

    if-eqz p1, :cond_5

    .line 776
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v4

    const-string v5, "timerCallMe"

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2

    :cond_5
    move-wide v4, v1

    .line 777
    :goto_2
    invoke-direct {p0, v4, v5}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->setCallMeTimer(J)V

    :cond_6
    if-eqz p1, :cond_7

    .line 780
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    const-string v1, "timerSendSms"

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v1

    :cond_7
    move-wide v6, v1

    .line 13095
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13097
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string p1, "mm:ss"

    invoke-direct {v10, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 13098
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1205d9

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1203a8

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13099
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->d(Z)V

    .line 13100
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t:Landroid/widget/TextView;

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Z)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13128
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->B:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_8

    .line 13129
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 13132
    :cond_8
    new-instance p1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$21;

    const-wide/16 v8, 0x3e8

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$21;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;JJLjava/text/SimpleDateFormat;)V

    .line 13143
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$21;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->B:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->Q:Z

    return p0
.end method

.method private d()V
    .locals 9

    .line 484
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "ViewInvalidNumberPopup"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;

    const v1, 0x7f120524

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f120874

    .line 487
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$8;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$8;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->setCancelable(Z)V

    .line 496
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private d(Z)V
    .locals 2

    .line 1181
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, 0x7f06010c

    goto :goto_0

    :cond_0
    const v1, 0x7f06010d

    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1182
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1183
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->R:Z

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .locals 6

    .line 540
    invoke-static {p0}, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;->a(Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener;)V

    .line 542
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.SEND_SMS"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12040b

    .line 543
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Ljava/lang/String;)V

    .line 544
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$10;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$10;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f06010a

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 552
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 553
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 554
    iget v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->k:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    .line 557
    iput v3, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->k:I

    .line 558
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->Q:Z

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->finish()V

    return-void

    .line 561
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f()V

    return-void

    .line 564
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$11;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$11;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    new-instance v4, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$12;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$12;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    new-array v1, v1, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    sget-object v5, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->SMS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v5, v1, v3

    invoke-virtual {v0, p0, v2, v4, v1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method

.method private e(Z)V
    .locals 2

    .line 1187
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, 0x7f06010c

    goto :goto_0

    :cond_0
    const v1, 0x7f06010d

    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1188
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1189
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f1207fb

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->h:Lcom/hbb20/CountryCodePicker;

    return-object p0
.end method

.method private getEnteredPhone()Lcom/callapp/framework/phone/Phone;
    .locals 4

    .line 535
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 12344
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getCountryCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "54"

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12345
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getLineType()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v1

    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-eq v1, v2, :cond_1

    .line 12346
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 12347
    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 12348
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 12350
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "+549"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 12351
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getLineType()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v2

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c()V

    return-void
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 3

    .line 13513
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/view/View;)V

    .line 13514
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f0600f2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f08052f

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 13515
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 13516
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 14475
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->getEnteredPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 14476
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14477
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/framework/phone/Phone;)V

    return-void

    .line 14479
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->d()V

    return-void
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/callapp/framework/phone/Phone;
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->getEnteredPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->k:I

    return p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)I
    .locals 1

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->k:I

    return v0
.end method

.method public static synthetic lambda$9_aHM7xeBytkzMxtou-4t0exCPc(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$QzEBOPozGblD4g1Jv0SQPzpUFiE(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$_bK-LlSDLPugmwxUTMVmCNkrZ9s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f()V

    return-void
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Z)V

    return-void
.end method

.method static synthetic p(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic q(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->o:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p:Landroid/widget/EditText;

    return-object p0
.end method

.method private setCallMeTimer(J)V
    .locals 9

    .line 1147
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v0, "mm:ss"

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120136

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1203a8

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e(Z)V

    .line 1152
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u:Landroid/widget/TextView;

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$22;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$22;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->C:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1166
    :cond_0
    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$23;

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$23;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;JJLjava/text/SimpleDateFormat;)V

    .line 1177
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$23;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->C:Landroid/os/CountDownTimer;

    return-void
.end method

.method private setFocus(Landroid/widget/EditText;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 807
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 808
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 809
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method static synthetic t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic v(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic w(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 7

    .line 14715
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    const v5, 0x7f080524

    invoke-static {v0, v5, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 14716
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v5, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 14717
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->o:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v5, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 14718
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v5, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 14719
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v5, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 14720
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v5, v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 15017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->y:Ljava/lang/String;

    .line 15018
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Registration"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->y:Ljava/lang/String;

    iget-object v4, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15019
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v3, "Entered correct SMS code"

    invoke-virtual {v0, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f12003b

    .line 15021
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Ljava/lang/String;)V

    .line 15022
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->L:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 15023
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->M:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 15024
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->M:Landroid/widget/CheckBox;

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$16;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$16;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 15030
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$17;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$17;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 15045
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "codeCounter "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->A:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Entered wrong SMS code"

    invoke-virtual {v0, v1, v6, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15047
    iget v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->A:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 15049
    iput v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->A:I

    .line 15050
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Z)V

    .line 15963
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15964
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15966
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    const v1, 0x7f06001b

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v5, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 15967
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v5, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 15968
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->o:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v5, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 15969
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v5, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 15970
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v5, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 15971
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p0, v5, v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic x(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->M:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic z(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->z:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1086
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$19;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$19;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/callapp/framework/phone/Phone;)V
    .locals 6

    .line 1277
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Sinch performing verification"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1279
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->H:Z

    .line 1281
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "sinchAppKey"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1282
    new-instance v2, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;

    invoke-direct {v2, p0, v1, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$26;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    .line 1295
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string p1, "android.permission.READ_CALL_LOG"

    invoke-static {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string p1, "android.permission.READ_PHONE_STATE"

    invoke-static {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1339
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1296
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object p1

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/Runnable;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v4, 0x0

    sget-object v5, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->CALL_LOG:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v5, v3, v4

    sget-object v4, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->PHONE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v4, v3, v0

    invoke-virtual {p1, p0, v2, v1, v3}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method

.method public final a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 2

    .line 1221
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$24;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 987
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-void

    .line 990
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->x:Ljava/lang/String;

    .line 1059
    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->z:Ljava/lang/String;

    .line 1061
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$18;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$18;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1267
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$25;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$25;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d003d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1e40

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "com.google.android.gms.credentials.Credential"

    .line 214
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 218
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string p3, "Registration"

    const-string v0, "SetPlayServicesAutoFill "

    invoke-virtual {p2, p3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Lcom/callapp/framework/phone/Phone;)V

    .line 221
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 253
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->H:Z

    if-nez v0, :cond_1

    .line 254
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->P:Z

    const-string v1, "Registration"

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "ClickBackFromEnterSMSCode"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Z)V

    return-void

    .line 259
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onBackPressed()V

    .line 261
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "Login cancelled using Phone Number"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 169
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->R:Z

    .line 171
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Phone Login Screen_N"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->e(Ljava/lang/String;)Z

    .line 172
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    const-string v0, "loginCallMeFirst"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->Q:Z

    .line 174
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Registration"

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EXTRA_NEED_TO_SHOW_SOCIAL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->N:Z

    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "EXTRA_SUGGESTED_PHONE_NUMBER"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/framework/phone/Phone;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->O:Lcom/callapp/framework/phone/Phone;

    if-eqz p1, :cond_1

    .line 179
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v3, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->O:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AddedAutoFillPhoneNumber "

    invoke-virtual {p1, v0, v4, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->O:Lcom/callapp/framework/phone/Phone;

    if-nez p1, :cond_7

    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 184
    new-instance p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;

    invoke-direct {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;-><init>()V

    .line 2006
    iput-boolean v1, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->b:Z

    .line 3004
    iput-boolean v2, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->a:Z

    .line 186
    new-instance v3, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;

    invoke-direct {v3}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;-><init>()V

    .line 3006
    iput-boolean v2, v3, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;->a:Z

    .line 3008
    iput-boolean v2, v3, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;->b:Z

    const/4 v4, 0x3

    .line 3010
    iput v4, v3, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;->c:I

    .line 187
    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$a;->a()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v3

    .line 3012
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    iput-object v3, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->d:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    .line 3020
    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->c:[Ljava/lang/String;

    if-nez v3, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    .line 3021
    iput-object v3, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->c:[Ljava/lang/String;

    .line 3022
    :cond_2
    iget-boolean v3, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->a:Z

    if-nez v3, :cond_4

    iget-boolean v3, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->b:Z

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->c:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 3023
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "At least one authentication method must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3024
    :cond_4
    :goto_1
    new-instance v3, Lcom/google/android/gms/auth/api/credentials/HintRequest;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/auth/api/credentials/HintRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/HintRequest$a;Lcom/google/android/gms/auth/api/credentials/j;)V

    .line 4002
    new-instance p1, Lcom/google/android/gms/auth/api/credentials/b;

    sget-object v5, Lcom/google/android/gms/auth/api/credentials/c;->e:Lcom/google/android/gms/auth/api/credentials/c;

    invoke-direct {p1, p0, v5}, Lcom/google/android/gms/auth/api/credentials/b;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/a$a;)V

    .line 5000
    iget-object v5, p1, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    .line 6000
    iget-object v6, p1, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 4009
    check-cast v6, Lcom/google/android/gms/auth/api/a$a;

    .line 7000
    iget-object p1, p1, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 4009
    check-cast p1, Lcom/google/android/gms/auth/api/a$a;

    .line 7007
    iget-object p1, p1, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    const-string v7, "context must not be null"

    .line 8001
    invoke-static {v5, v7}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "request must not be null"

    .line 8002
    invoke-static {v3, v7}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_5

    goto :goto_2

    .line 9006
    :cond_5
    iget-object v4, v6, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    .line 8009
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 8010
    invoke-static {}, Lcom/google/android/gms/internal/auth-api/b;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 8011
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8013
    :goto_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.gms.auth.api.credentials.PICKER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "claimedCallingPackage"

    .line 8014
    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "logSessionId"

    .line 8015
    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.google.android.gms.credentials.HintRequest"

    .line 8016
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    const/16 p1, 0x7d0

    const/high16 v3, 0x8000000

    .line 8019
    invoke-static {v5, p1, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 193
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "GetPlayServicesAutoFill "

    invoke-virtual {v3, v0, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    const/16 v7, 0x1e40

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 197
    const-class v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    const p1, 0x7f0a036e

    .line 9276
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    const p1, 0x7f0a036f

    .line 9277
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->d:Landroid/widget/ImageView;

    const p1, 0x7f0a02b5

    .line 9278
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f12024e

    .line 9279
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9280
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->d:Landroid/widget/ImageView;

    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$1;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9289
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e:Landroid/widget/TextView;

    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$2;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0203

    .line 9299
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hbb20/CountryCodePicker;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->h:Lcom/hbb20/CountryCodePicker;

    const p1, 0x7f0a059b

    .line 9300
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    const p1, 0x7f0a059a

    .line 9301
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    const p1, 0x7f0a055f

    .line 9302
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b:Landroid/widget/RelativeLayout;

    .line 9303
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f1207fd

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9304
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f1207fa

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0851

    .line 9306
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 9307
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->N:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0a03db

    .line 9308
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/login/SocialLoginButton;

    const v3, 0x7f0a0ac0

    .line 9309
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/widget/login/SocialLoginButton;

    const v4, 0x7f0a045e

    .line 9310
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/widget/login/SocialLoginButton;

    const-string v5, "PhoneLoginScreen"

    .line 9311
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Ljava/lang/String;)V

    .line 9312
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    :cond_8
    const/16 v0, 0x8

    .line 9314
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9316
    :goto_5
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0600f2

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v3, 0x7f08052f

    invoke-static {p1, v3, v0}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 9317
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f06010a

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 9319
    invoke-static {}, Lcom/callapp/framework/phone/Phone;->getCountryRegionProvider()Lcom/callapp/framework/phone/CountryRegionProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/framework/phone/CountryRegionProvider;->a()Ljava/lang/String;

    move-result-object p1

    .line 9320
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->h:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0, p1}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingNameCode(Ljava/lang/String;)V

    .line 9321
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->h:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1, v1}, Lcom/hbb20/CountryCodePicker;->setCcpDialogShowPhoneCode(Z)V

    .line 9322
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->h:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->e()V

    .line 9323
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->h:Lcom/hbb20/CountryCodePicker;

    .line 9628
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10600
    iget-object p1, p1, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    iget-object p1, p1, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 9628
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9323
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->w:Ljava/lang/String;

    const p1, 0x7f0a0399

    .line 9324
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1202ed

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a021d

    .line 9325
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1205cb

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9327
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Z)V

    .line 9329
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->O:Lcom/callapp/framework/phone/Phone;

    if-eqz p1, :cond_9

    .line 9330
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Lcom/callapp/framework/phone/Phone;)V

    .line 9333
    :cond_9
    new-instance p1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->j:Landroid/text/TextWatcher;

    .line 9405
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9407
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->h:Lcom/hbb20/CountryCodePicker;

    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$4;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {p1, v0}, Lcom/hbb20/CountryCodePicker;->setOnCountryChangeListener(Lcom/hbb20/CountryCodePicker$f;)V

    .line 9412
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->h:Lcom/hbb20/CountryCodePicker;

    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$5;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {p1, v0}, Lcom/hbb20/CountryCodePicker;->setDialogEventsListener(Lcom/hbb20/CountryCodePicker$c;)V

    .line 9430
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$6;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9441
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g:Landroid/widget/TextView;

    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$7;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$7;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0564

    .line 10675
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->l:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a024d

    .line 10676
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1202eb

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0523

    .line 10677
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    const p1, 0x7f0a0524

    .line 10678
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n:Landroid/widget/EditText;

    const p1, 0x7f0a0525

    .line 10679
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->o:Landroid/widget/EditText;

    const p1, 0x7f0a0526

    .line 10680
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p:Landroid/widget/EditText;

    const p1, 0x7f0a0527

    .line 10681
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q:Landroid/widget/EditText;

    const p1, 0x7f0a0528

    .line 10682
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r:Landroid/widget/EditText;

    const p1, 0x7f0a0493

    .line 10683
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    const p1, 0x7f0a065d

    .line 10684
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t:Landroid/widget/TextView;

    const p1, 0x7f0a065c

    .line 10685
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u:Landroid/widget/TextView;

    const p1, 0x7f0a050f

    .line 10687
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f1203c7

    .line 10688
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10695
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->S:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10697
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10698
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10699
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->o:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10700
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10701
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10702
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10705
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 10706
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 10707
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->o:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 10708
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 10709
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 10710
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 10711
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p1, 0x7f0a0560

    .line 11197
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->F:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0417

    .line 11198
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120341

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0416

    .line 11199
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120340

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0561

    .line 11493
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->J:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0593

    .line 11494
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->K:Landroid/widget/TextView;

    const p1, 0x7f0a0592

    .line 11495
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->L:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0591

    .line 11496
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->M:Landroid/widget/CheckBox;

    .line 205
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 230
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onDestroy()V

    .line 231
    invoke-static {}, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;->d()V

    .line 232
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Phone Login Screen_N"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->B:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->C:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->G:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b()V

    :cond_2
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 786
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 788
    :pswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r:Landroid/widget/EditText;

    const v0, 0x7f0800da

    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    :pswitch_1
    if-eqz p2, :cond_0

    .line 795
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->setFocus(Landroid/widget/EditText;)V

    .line 796
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    const/16 p2, 0xc8

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0523
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializationFailed(Ljava/lang/Throwable;)V
    .locals 3

    const/4 p1, 0x0

    .line 1372
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->H:Z

    .line 1374
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1375
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Sinch initiation failed"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$28;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$28;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onInitiated(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;)V
    .locals 2

    .line 13367
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "Sinch initiation success"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 814
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_8

    .line 815
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f0a0493

    if-eq p1, p3, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x43

    if-ne p2, p1, :cond_8

    .line 818
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 p2, 0x6

    const/4 p3, 0x1

    const-string v1, ""

    if-ne p1, p2, :cond_1

    .line 819
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 820
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 821
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 822
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 823
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 824
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 825
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->o:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 826
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    .line 827
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 828
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-ne p1, p3, :cond_6

    .line 829
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->m:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 832
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 833
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    .line 834
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    .line 835
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-interface {p2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 834
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_7
    return p3

    :cond_8
    return v0
.end method

.method public onVerificationEvent(Lcom/sinch/verification/core/verification/VerificationEvent;)V
    .locals 2

    .line 1362
    const-class v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onVerificationEvent: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onVerificationFailed(Ljava/lang/Throwable;)V
    .locals 3

    const/4 p1, 0x0

    .line 1408
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->H:Z

    .line 1410
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1411
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Sinch verified failed"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    new-instance p1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$29;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$29;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    .line 1431
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$29;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1433
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$30;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$30;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVerified()V
    .locals 4

    const/4 v0, 0x0

    .line 1387
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->H:Z

    .line 1389
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Sinch verified successfully"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Flash Call Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->G:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b()V

    .line 1395
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1396
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->getEnteredPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 1398
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RESULT_USER_PHONE_NUMBER"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RESULT_USER_CALLAPP_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    sget-object v1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->SINCH:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v1}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RESULT_USER_CALLAPP_TOKEN_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 1402
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 1403
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->finish()V

    return-void
.end method

.method public shouldAssertPermissions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
