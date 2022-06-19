.class public abstract Lcom/callapp/contacts/manager/popup/DialogPopup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/Popup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;,
        Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;,
        Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;
    }
.end annotation


# static fields
.field public static final MAX_ALLOWED_DIALOG_WIDTH_PX:I


# instance fields
.field private bottomBarCheckBox:Lcom/callapp/contacts/widget/CallAppCheckBox;

.field private bottomBarCheckBoxText:Landroid/widget/TextView;

.field private cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private cancelable:Z

.field private dialogCustomListener:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

.field private dialogFragment:Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

.field private dismissListener:Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;

.field private final requestCode:Ljava/lang/Integer;

.field private resultCode:I

.field private showBottomCb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x43c40000    # 392.0f

    .line 48
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/callapp/contacts/manager/popup/DialogPopup;->MAX_ALLOWED_DIALOG_WIDTH_PX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->cancelable:Z

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->resultCode:I

    .line 58
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->showBottomCb:Z

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->requestCode:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->cancelable:Z

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->resultCode:I

    .line 58
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->showBottomCb:Z

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->requestCode:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogCustomListener:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/manager/popup/DialogPopup;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->cancelable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/BaseDialogFragment;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogFragment:Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismissListener:Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/manager/popup/DialogPopup;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method static synthetic access$500(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->addDialogWindowLockScreenFlagsIfNeeded(Landroid/app/Activity;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$600(Lcom/callapp/contacts/manager/popup/DialogPopup;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->bottomBarCheckBoxText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/callapp/contacts/manager/popup/DialogPopup;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->bottomBarCheckBoxText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/widget/CallAppCheckBox;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->bottomBarCheckBox:Lcom/callapp/contacts/widget/CallAppCheckBox;

    return-object p0
.end method

.method static synthetic access$702(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/widget/CallAppCheckBox;)Lcom/callapp/contacts/widget/CallAppCheckBox;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->bottomBarCheckBox:Lcom/callapp/contacts/widget/CallAppCheckBox;

    return-object p1
.end method

.method static synthetic access$800(Lcom/callapp/contacts/manager/popup/DialogPopup;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->showBottomCb:Z

    return p0
.end method

.method private static addDialogWindowLockScreenFlagsIfNeeded(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 6

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 204
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 209
    aget v4, v1, v2

    .line 210
    invoke-static {p0, v4}, Lcom/callapp/contacts/manager/popup/DialogPopup;->isWindowFlagOn(II)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x80000
        0x400000
    .end array-data
.end method

.method private getBottomBarCheckBoxText()Landroid/widget/TextView;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->bottomBarCheckBoxText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getBottomCB()Lcom/callapp/contacts/widget/CallAppCheckBox;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->bottomBarCheckBox:Lcom/callapp/contacts/widget/CallAppCheckBox;

    return-object v0
.end method

.method private getDialogCustomListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogCustomListener:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    return-object v0
.end method

.method private static isWindowFlagOn(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static setDialogSizeAndBackground(Landroid/app/Dialog;Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V
    .locals 2

    .line 225
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 226
    sget-object v0, Lcom/callapp/contacts/manager/popup/DialogPopup$8;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/16 v1, 0x11

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_3

    .line 244
    invoke-static {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setWindowWidthToMaxIfNeeded(Landroid/view/Window;)V

    .line 245
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getDialogRoundedCenterBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-virtual {p0, v1}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_3

    .line 238
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getDialogRoundedBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x35

    .line 239
    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    return-void

    :cond_2
    if-eqz p0, :cond_3

    .line 231
    invoke-static {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setWindowWidthToMaxIfNeeded(Landroid/view/Window;)V

    .line 232
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getDialogInsetBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {p0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static setWindowWidthToMaxIfNeeded(Landroid/view/Window;)V
    .locals 3

    .line 254
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getScreenOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v0

    .line 256
    sget v1, Lcom/callapp/contacts/manager/popup/DialogPopup;->MAX_ALLOWED_DIALOG_WIDTH_PX:I

    const/4 v2, -0x2

    if-gt v0, v1, :cond_0

    const/4 v0, -0x1

    .line 257
    invoke-virtual {p0, v0, v2}, Landroid/view/Window;->setLayout(II)V

    return-void

    .line 260
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method


# virtual methods
.method createDialogFragment(Landroid/app/Activity;Z)Lcom/callapp/contacts/manager/popup/BaseDialogFragment;
    .locals 1

    .line 78
    new-instance v0, Lcom/callapp/contacts/manager/popup/DialogPopup$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/popup/DialogPopup$1;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 90
    new-instance v0, Lcom/callapp/contacts/manager/popup/DialogPopup$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/popup/DialogPopup$2;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismissListener:Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;

    .line 101
    new-instance v0, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogFragment:Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->setActivityName(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogFragment:Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    new-instance v0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/manager/popup/DialogPopup$3;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup;Z)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->setCreateDialogInterface(Lcom/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface;)V

    .line 135
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogFragment:Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    new-instance p2, Lcom/callapp/contacts/manager/popup/DialogPopup$4;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/manager/popup/DialogPopup$4;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->setOnCreateViewListener(Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;)V

    .line 163
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogFragment:Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    return-object p1
.end method

.method public dismiss()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogFragment:Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 318
    const-class v1, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected dismissOnBtnClicked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogFragment:Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method protected getCheckBoxText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogFragment:Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 325
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->legacyDialogs:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method protected getShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 2

    .line 346
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getDialogCustomListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    new-instance v1, Lcom/callapp/contacts/manager/popup/DialogPopup$6;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup$6;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBottomBarCheckBoxChecked()Z
    .locals 2

    .line 197
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getBottomCB()Lcom/callapp/contacts/widget/CallAppCheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDialogBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDialogCancelled(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 3

    .line 298
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->requestCode:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/base/BaseActivity;

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseActivity;

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->requestCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->resultCode:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/base/BaseActivity;->onPopupResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public abstract ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->cancelable:Z

    return-void
.end method

.method public setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->dialogCustomListener:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    return-void
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 0

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->resultCode:I

    return-void
.end method

.method protected setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 381
    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;I)Landroid/view/View;
    .locals 0

    .line 419
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p5, :cond_0

    .line 421
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object p1
.end method

.method protected setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;Z)Landroid/view/View;
    .locals 0

    .line 385
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, ""

    .line 387
    :goto_0
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1

    .line 389
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_1
    const p3, 0x7f060088

    .line 391
    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p3, 0x0

    .line 392
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    new-instance p3, Lcom/callapp/contacts/manager/popup/DialogPopup$7;

    invoke-direct {p3, p0, p2}, Lcom/callapp/contacts/manager/popup/DialogPopup$7;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 404
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p1
.end method

.method protected setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0601ec

    .line 361
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;II)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method protected setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;II)Landroid/widget/TextView;
    .locals 2

    .line 365
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 367
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-static {p4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 372
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p3
.end method

.method protected shouldCanceledOnTouchOutside()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showBottomBarCheckBox(Z)V
    .locals 4

    .line 171
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getBottomCB()Lcom/callapp/contacts/widget/CallAppCheckBox;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 173
    :goto_0
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setVisibility(I)V

    .line 174
    new-instance v3, Lcom/callapp/contacts/manager/popup/DialogPopup$5;

    invoke-direct {v3, p0, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup$5;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/widget/CallAppCheckBox;)V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getBottomBarCheckBoxText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 182
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :cond_2
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup;->showBottomCb:Z

    return-void
.end method
