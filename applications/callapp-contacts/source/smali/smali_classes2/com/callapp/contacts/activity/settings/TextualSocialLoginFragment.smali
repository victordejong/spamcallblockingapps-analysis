.class public Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;,
        Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$NetworkConnectionActionListener;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$NetworkConnectionActionListener;

.field private g:Ljava/lang/Integer;

.field private h:Z

.field private i:Z

.field private j:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

.field private k:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

.field private l:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private m:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const v0, 0x7f06008a

    .line 49
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a:I

    const v0, 0x7f0601cc

    .line 50
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->b:I

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->d:Z

    .line 55
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->e:Z

    .line 60
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->i:Z

    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 181
    new-instance v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$2;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;)Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->j:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    return-object p0
.end method

.method private a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Z)V
    .locals 3

    .line 239
    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->d()V

    .line 240
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 244
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v1, v2

    .line 249
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_4

    const/4 p2, 0x0

    .line 253
    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 255
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->e(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/widget/TextView;

    move-result-object p2

    iget v2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->b:I

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 258
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->e(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 261
    :cond_1
    iget-boolean v2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->d:Z

    if-nez v2, :cond_3

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->e:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    .line 264
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->e(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/widget/TextView;

    move-result-object p2

    iget v2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a:I

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x1

    .line 265
    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 267
    new-instance p2, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    .line 289
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    goto :goto_1

    .line 262
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object p2

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 294
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;IZ)V
    .locals 0

    .line 9440
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->f:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$NetworkConnectionActionListener;

    if-eqz p0, :cond_0

    .line 9441
    invoke-interface {p0, p1, p2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$NetworkConnectionActionListener;->a(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V
    .locals 13

    const/4 v0, 0x0

    .line 6212
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->setButtonsEnabled(Z)V

    .line 6192
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 6235
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Z)V

    .line 6194
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f12052f

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    .line 7216
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->setButtonsEnabled(Z)V

    return-void

    .line 6199
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6200
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    if-nez v1, :cond_1

    const-string v1, "offer disconnect"

    .line 6201
    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Ljava/lang/String;)V

    .line 7320
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7322
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v3

    new-instance v12, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const/4 v5, 0x0

    const v4, 0x7f1202b8

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->d(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v6}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f1202b7

    .line 7323
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f1201a9

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;

    invoke-direct {v9, p0, p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    new-instance v10, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$5;

    invoke-direct {v10, p0, p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$5;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    new-instance v11, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$6;

    invoke-direct {v11, p0, p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$6;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 7322
    invoke-virtual {v3, v1, v12}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 8216
    :cond_1
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->setButtonsEnabled(Z)V

    return-void

    :cond_2
    const-string v0, "clicked connect"

    .line 6206
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Ljava/lang/String;)V

    .line 9084
    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getProgressDialog()Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->l:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 9085
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->l:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 8373
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8375
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/app/Activity;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    .line 8435
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method public static a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/app/Activity;Z)V
    .locals 4

    if-nez p2, :cond_0

    .line 447
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p2

    const v0, 0x7f1204b4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4111
    invoke-virtual {p2, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    instance-of p2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    if-eqz p2, :cond_0

    .line 449
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    invoke-virtual {p2, p1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Ljava/lang/CharSequence;
    .locals 4

    .line 299
    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->d(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->d(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 304
    :cond_0
    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getLoginLabelText()Ljava/lang/String;

    move-result-object p0

    .line 306
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    new-instance p0, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {p0, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V
    .locals 1

    const/4 v0, 0x0

    .line 10235
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Z)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->i:Z

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Z)V

    return-void
.end method

.method private d()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->l:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->l:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const/4 v0, 0x1

    .line 1216
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->setButtonsEnabled(Z)V

    return-void
.end method

.method private declared-synchronized getProgressDialog()Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->l:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->l:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->h:Z

    const v1, 0x7f120537

    .line 112
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->l:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->l:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setButtonsEnabled(Z)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    .line 222
    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupSocialButtons(Landroid/view/View;)V
    .locals 12

    const v0, 0x7f0a03d5

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 122
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0a5f

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 125
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0456

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 128
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0aba

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 131
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c:Ljava/util/ArrayList;

    .line 135
    new-instance v10, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v2

    const v0, 0x7f0a03d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a03d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;)V

    iput-object v10, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->k:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a0abb

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 139
    new-instance v10, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v2

    const v0, 0x7f0a0abd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    move-object v0, v10

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;)V

    iput-object v10, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->m:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v9, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v2

    const v10, 0x7f0a0457

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a0459

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const v0, 0x7f120356

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    move-object v0, v9

    move-object v4, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;)V

    iput-object v9, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->j:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v7, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c:Ljava/util/ArrayList;

    new-instance v9, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v2

    const v0, 0x7f0a0a60

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a0a62

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    .line 151
    invoke-static {v3}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    const v6, 0x7f060026

    invoke-static {v5, v6}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    invoke-static {v3}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v4

    instance-of v4, v4, Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 158
    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Z)V

    goto :goto_2

    .line 3235
    :cond_2
    :goto_1
    invoke-direct {p0, v3, v5}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Z)V

    .line 164
    :goto_2
    invoke-static {v3}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/CompoundButton;

    if-eqz v4, :cond_3

    .line 165
    invoke-static {v3}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    .line 166
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 168
    :cond_3
    invoke-static {v3}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;

    invoke-direct {v5, p0, v3}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->k:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    const/4 v1, 0x0

    .line 4235
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Z)V

    .line 470
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->m:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    .line 5235
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Z)V

    return-void
.end method

.method protected final a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Ljava/lang/String;)V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 229
    instance-of v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->d(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Registration"

    invoke-virtual {v0, v1, p2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->d:Z

    .line 475
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    .line 476
    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v2

    .line 477
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->e:Z

    .line 485
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    .line 486
    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 487
    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v2

    .line 488
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isNativeAppInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getNumConnected()I
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    .line 459
    invoke-static {v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d014f

    const/4 p3, 0x0

    .line 1076
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->setupSocialButtons(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 103
    invoke-direct {p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->d()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 2216
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->setButtonsEnabled(Z)V

    return-void
.end method

.method public setDialogTheme(I)V
    .locals 0

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->g:Ljava/lang/Integer;

    return-void
.end method

.method public setIsFromSetup(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->i:Z

    return-void
.end method

.method public setNetworkConnectionActionListener(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$NetworkConnectionActionListener;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->f:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$NetworkConnectionActionListener;

    return-void
.end method
