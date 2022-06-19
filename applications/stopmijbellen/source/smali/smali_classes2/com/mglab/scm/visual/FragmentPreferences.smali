.class public Lcom/mglab/scm/visual/FragmentPreferences;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mglab/scm/visual/FragmentPreferences$a;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Lbutterknife/Unbinder;

.field public appOnOffSwitch:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public b:Landroid/content/Context;

.field public blockMethodSpinner:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public buttonBuyPro:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public c:Ll8/w;

.field public cardView:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public d:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public darkThemeSwitch:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public defaultPhoneAppDescriptionHeaderTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public defaultPhoneAppDescriptionTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public defaultPhoneAppLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public dndLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public e:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public flagImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public foregroundServiceIconLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public foregroundServiceLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public languageDescriptionTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public loadFeedbackNamesDescriptionTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public notificationTextColor:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public pinEntry:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public pinEntryDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public presetCreateNewButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public presetsDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public presetsLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public silenceRingerRestoreInfoTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchAdditionalPresets:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchBlockSecondCall:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchDefaultPhoneApp:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchForegroundService:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchForegroundServiceIcon:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchHideClearButton:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchLoadFeedbackNames:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchShowSIM:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchSilenceDND:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchSystemVibration:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public switchUseAlternativeContactsName:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public systemVibrationLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/mglab/scm/visual/FragmentPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    new-instance v1, Ly2/p;

    invoke-direct {v1, p0}, Ly2/p;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->d:Landroidx/activity/result/c;

    .line 4
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    new-instance v1, Ly2/l;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->e:Landroidx/activity/result/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->c:Ll8/w;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Ll8/w;->c:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ll8/w;->o(Landroid/view/View;)Ll8/w;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->presetsLL:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->presetCreateNewButton:Landroid/widget/Button;

    .line 4
    invoke-virtual {v0, v2, v3}, Ll8/w;->n(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    .line 5
    invoke-static {}, Lf8/g;->y()Z

    move-result v0

    .line 6
    invoke-static {}, Lf8/g;->x()Z

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->foregroundServiceLL:Landroid/widget/LinearLayout;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/16 v6, 0x8

    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchForegroundService:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v6, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v6}, Lf8/h;->K(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 9
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchForegroundService:Landroidx/appcompat/widget/SwitchCompat;

    if-ge v4, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 10
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->foregroundServiceIconLL:Landroid/widget/LinearLayout;

    if-ge v4, v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchForegroundServiceIcon:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v5, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v5}, Lf8/h;->L(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 12
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchForegroundServiceIcon:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v5, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchForegroundService:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 13
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchShowSIM:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v5, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v5}, Lf8/h;->T(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 14
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchBlockSecondCall:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v5, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v5}, Lf8/h;->G(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 15
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchHideClearButton:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v5, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v5}, Lf8/h;->M(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 16
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->pinEntry:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v5, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v5}, Lf8/h;->R(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 17
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->pinEntryDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/16 v5, 0x8

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchLoadFeedbackNames:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v5, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v5}, Lf8/h;->O(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lf8/g;->y()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 19
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->buttonBuyPro:Landroid/widget/Button;

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 20
    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->loadFeedbackNamesDescriptionTV:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchUseAlternativeContactsName:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v2

    const/16 v3, 0x17

    if-nez v2, :cond_7

    if-ge v4, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    .line 22
    invoke-static {v2}, Lf8/h;->W(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    .line 23
    :goto_7
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 24
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchUseAlternativeContactsName:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    if-ge v4, v3, :cond_9

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 25
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->darkThemeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 26
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->notificationTextColor:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->Q(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 27
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->appOnOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 28
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchAdditionalPresets:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->S(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 29
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchAdditionalPresets:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->appOnOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 30
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->blockMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->appOnOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 31
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->blockMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->F(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 32
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->presetsLL:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchAdditionalPresets:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    goto :goto_a

    :cond_b
    const/16 v2, 0x8

    :goto_a
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->presetCreateNewButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchAdditionalPresets:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_b

    :cond_c
    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->presetCreateNewButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchAdditionalPresets:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v2

    const/16 v5, 0xa

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchAdditionalPresets:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->c:Ll8/w;

    invoke-virtual {v2}, Ll8/w;->d()I

    move-result v2

    if-gt v2, v5, :cond_d

    const/4 v2, 0x1

    goto :goto_c

    :cond_d
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 35
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->presetsDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchAdditionalPresets:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_d

    :cond_e
    const/16 v2, 0x8

    :goto_d
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->silenceRingerRestoreInfoTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->blockMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_e

    :cond_f
    const/16 v2, 0x8

    :goto_e
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f1101c8

    .line 37
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {}, Lf8/g;->y()Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "\n"

    .line 39
    invoke-static {v0, v2}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f1101ae

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_10
    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->presetsDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->dndLL:Landroid/widget/LinearLayout;

    .line 42
    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->blockMethodSpinner:Landroid/widget/Spinner;

    .line 43
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v5

    cmp-long v2, v5, v7

    if-nez v2, :cond_11

    if-lt v4, v3, :cond_11

    const/4 v2, 0x0

    goto :goto_f

    :cond_11
    const/16 v2, 0x8

    :goto_f
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->systemVibrationLL:Landroid/widget/LinearLayout;

    .line 45
    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->blockMethodSpinner:Landroid/widget/Spinner;

    .line 46
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v2

    const/16 v5, 0x18

    cmp-long v6, v2, v7

    if-nez v6, :cond_12

    if-lt v4, v5, :cond_12

    const/4 v2, 0x0

    goto :goto_10

    :cond_12
    const/16 v2, 0x8

    :goto_10
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchSilenceDND:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->X(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 48
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchSilenceDND:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->appOnOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchSystemVibration:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->Z(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 50
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchSystemVibration:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->appOnOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppLL:Landroid/widget/LinearLayout;

    if-lt v4, v5, :cond_13

    const/16 v2, 0x1c

    if-ge v4, v2, :cond_13

    .line 52
    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->blockMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_13

    const/4 v2, 0x0

    goto :goto_11

    :cond_13
    const/16 v2, 0x8

    .line 53
    :goto_11
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppDescriptionTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppLL:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppDescriptionHeaderTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppLL:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchDefaultPhoneApp:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/g;->w(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->Y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_12

    :cond_14
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->cardView:Landroidx/cardview/widget/CardView;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const v3, 0x7f060049

    goto :goto_13

    :cond_15
    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const v3, 0x7f060048

    :goto_13
    invoke-static {v2, v3}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_14

    :sswitch_0
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_14

    :cond_16
    const/16 v1, 0xd

    goto/16 :goto_15

    :sswitch_1
    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_14

    :cond_17
    const/16 v1, 0xc

    goto/16 :goto_15

    :sswitch_2
    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_14

    :cond_18
    const/16 v1, 0xb

    goto/16 :goto_15

    :sswitch_3
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_14

    :cond_19
    const/16 v1, 0xa

    goto/16 :goto_15

    :sswitch_4
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_14

    :cond_1a
    const/16 v1, 0x9

    goto/16 :goto_15

    :sswitch_5
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_14

    :cond_1b
    const/16 v1, 0x8

    goto :goto_15

    :sswitch_6
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_14

    :cond_1c
    const/4 v1, 0x7

    goto :goto_15

    :sswitch_7
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_14

    :cond_1d
    const/4 v1, 0x6

    goto :goto_15

    :sswitch_8
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_14

    :cond_1e
    const/4 v1, 0x5

    goto :goto_15

    :sswitch_9
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_14

    :cond_1f
    const/4 v1, 0x4

    goto :goto_15

    :sswitch_a
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_14

    :cond_20
    const/4 v1, 0x3

    goto :goto_15

    :sswitch_b
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_14

    :cond_21
    const/4 v1, 0x2

    goto :goto_15

    :sswitch_c
    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_14

    :cond_22
    const/4 v1, 0x1

    goto :goto_15

    :sswitch_d
    const-string v2, "ca"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    :goto_14
    const/4 v1, -0x1

    :cond_23
    :goto_15
    const v0, 0x7f0800bb

    packed-switch v1, :pswitch_data_0

    .line 59
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110108

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f11011a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110118

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110116

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 67
    :pswitch_3
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110115

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 69
    :pswitch_4
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110113

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 71
    :pswitch_5
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110111

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 73
    :pswitch_6
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f11010f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 75
    :pswitch_7
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f11010d

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 77
    :pswitch_8
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f11010b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 79
    :pswitch_9
    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110109

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 81
    :pswitch_a
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110106

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 83
    :pswitch_b
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110104

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 85
    :pswitch_c
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110102

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 87
    :pswitch_d
    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f110100

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_16
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc5e -> :sswitch_d
        0xc7d -> :sswitch_c
        0xc81 -> :sswitch_b
        0xca7 -> :sswitch_a
        0xcae -> :sswitch_9
        0xccc -> :sswitch_8
        0xd2b -> :sswitch_7
        0xdbe -> :sswitch_6
        0xdfc -> :sswitch_5
        0xe04 -> :sswitch_4
        0xe43 -> :sswitch_3
        0xe58 -> :sswitch_2
        0xe96 -> :sswitch_1
        0xeb3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
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

.method public onAdditionalPresetsSwitchClick(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->S(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetpresets"

    .line 3
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->onResume()V

    return-void
.end method

.method public onAppOnOffClick(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetapponoff"

    .line 3
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11017c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {p1}, Lf8/g;->N(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->onResume()V

    return-void
.end method

.method public onBlockMethodSpinnerClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation build Lbutterknife/OnItemSelected;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {p1}, Lf8/h;->F(Landroid/content/Context;)I

    move-result p1

    if-ne p3, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "psetblockmethod"

    invoke-static {p1, p3, p2}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->onResume()V

    return-void
.end method

.method public onButtonBuyProClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/v;

    invoke-direct {v1}, Lk8/v;-><init>()V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onClickBlockSecondCall(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->G(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetblock2call"

    .line 3
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onClickForegroundService(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->K(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetfservice"

    .line 3
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/g;->N(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchForegroundServiceIcon:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public onClickForegroundServiceIcon(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->L(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetfserviceicon"

    .line 3
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {p1}, Lf8/g;->N(Landroid/content/Context;)V

    return-void
.end method

.method public onClickHideClearButton(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->M(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psethideclearbutton"

    .line 3
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onClickLoadFedbackName(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->O(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lf8/g;->y()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchLoadFeedbackNames:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v0, Lk8/v;

    invoke-direct {v0}, Lk8/v;-><init>()V

    invoke-virtual {p1, v0}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "psetaslfn"

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/g;->Q(Landroid/content/Context;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    .line 9
    invoke-static {p1, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onClickPinEntry(Z)V
    .locals 4
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->R(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lf8/g;->y()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->pinEntry:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v0, Lk8/v;

    invoke-direct {v0}, Lk8/v;-><init>()V

    invoke-virtual {p1, v0}, Lba/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {p1}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result p1

    .line 6
    new-instance v1, Le2/g$a;

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1101d5

    .line 7
    invoke-virtual {v1, v2}, Le2/g$a;->k(I)Le2/g$a;

    const v2, 0x7f06005b

    .line 8
    invoke-virtual {v1, v2}, Le2/g$a;->l(I)Le2/g$a;

    if-eqz p1, :cond_2

    const v3, 0x7f060091

    goto :goto_0

    :cond_2
    const v3, 0x7f06005e

    .line 9
    :goto_0
    invoke-virtual {v1, v3}, Le2/g$a;->a(I)Le2/g$a;

    const v3, 0x7f08010f

    .line 10
    invoke-virtual {v1, v3}, Le2/g$a;->e(I)Le2/g$a;

    if-eqz p1, :cond_3

    const p1, 0x7f06005b

    goto :goto_1

    :cond_3
    const p1, 0x7f060033

    .line 11
    :goto_1
    invoke-virtual {v1, p1}, Le2/g$a;->f(I)Le2/g$a;

    .line 12
    invoke-virtual {v1, v2}, Le2/g$a;->c(I)Le2/g$a;

    .line 13
    iput-boolean v0, v1, Le2/g$a;->y:Z

    .line 14
    iput-boolean v0, v1, Le2/g$a;->z:Z

    const p1, 0x7f0c0051

    .line 15
    invoke-virtual {v1, p1, v0}, Le2/g$a;->d(IZ)Le2/g$a;

    const p1, 0x7f11018f

    .line 16
    invoke-virtual {v1, p1}, Le2/g$a;->i(I)Le2/g$a;

    new-instance p1, Lz2/k;

    const/4 v2, 0x7

    invoke-direct {p1, p0, v2}, Lz2/k;-><init>(Ljava/lang/Object;I)V

    .line 17
    iput-object p1, v1, Le2/g$a;->u:Le2/g$c;

    .line 18
    new-instance p1, Lz2/q;

    const/16 v2, 0x8

    invoke-direct {p1, p0, v2}, Lz2/q;-><init>(Ljava/lang/Object;I)V

    .line 19
    iput-object p1, v1, Le2/g$a;->v:Le2/g$c;

    const p1, 0x7f11006e

    .line 20
    invoke-virtual {v1, p1}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object p1

    invoke-virtual {p1}, Le2/g$a;->j()Le2/g;

    move-result-object p1

    .line 21
    iget-object v1, p1, Le2/g;->c:Le2/g$a;

    iget-object v1, v1, Le2/g$a;->o:Landroid/view/View;

    .line 22
    sget-object v2, Le2/b;->a:Le2/b;

    invoke-virtual {p1, v2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x7f090299

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rengwuxian/materialedittext/MaterialEditText;

    const v2, 0x7f09029a

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 25
    new-instance v2, Lcom/mglab/scm/visual/FragmentPreferences$a;

    invoke-direct {v2, p1}, Lcom/mglab/scm/visual/FragmentPreferences$a;-><init>(Le2/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 26
    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences$a;

    invoke-direct {v0, p1}, Lcom/mglab/scm/visual/FragmentPreferences$a;-><init>(Le2/g;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetaspe"

    .line 28
    invoke-static {p1, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method public onClickShowSim(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->T(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetss"

    .line 3
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreateNewPresetClick()V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->c:Ll8/w;

    .line 2
    new-instance v1, Lh8/u;

    invoke-direct {v1}, Lh8/u;-><init>()V

    .line 3
    iget-object v2, v0, Ll8/w;->a:Landroid/content/Context;

    const v3, 0x7f1101c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lh8/u;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lh8/u;->d:Z

    .line 5
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget v3, v3, Lh8/u;->e:I

    add-int/2addr v3, v5

    iput v3, v1, Lh8/u;->e:I

    .line 6
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->f:Z

    iput-boolean v3, v1, Lh8/u;->f:Z

    .line 7
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->g:Z

    iput-boolean v3, v1, Lh8/u;->g:Z

    .line 8
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->h:Z

    iput-boolean v3, v1, Lh8/u;->h:Z

    .line 9
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->i:Z

    iput-boolean v3, v1, Lh8/u;->i:Z

    .line 10
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->j:Z

    iput-boolean v3, v1, Lh8/u;->j:Z

    .line 11
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->m:Z

    iput-boolean v3, v1, Lh8/u;->m:Z

    .line 12
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->k:Z

    iput-boolean v3, v1, Lh8/u;->k:Z

    .line 13
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->l:Z

    iput-boolean v3, v1, Lh8/u;->l:Z

    .line 14
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->n:Z

    iput-boolean v3, v1, Lh8/u;->n:Z

    .line 15
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->o:Z

    iput-boolean v3, v1, Lh8/u;->o:Z

    .line 16
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget-boolean v3, v3, Lh8/u;->p:Z

    iput-boolean v3, v1, Lh8/u;->p:Z

    .line 17
    iget-object v3, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/u;

    iget-boolean v2, v2, Lh8/u;->q:Z

    iput-boolean v2, v1, Lh8/u;->q:Z

    .line 18
    iput-boolean v5, v1, Lh8/u;->r:Z

    .line 19
    iput-boolean v5, v1, Lh8/u;->s:Z

    .line 20
    iput-boolean v5, v1, Lh8/u;->t:Z

    .line 21
    iput-boolean v5, v1, Lh8/u;->u:Z

    .line 22
    iput-boolean v5, v1, Lh8/u;->v:Z

    .line 23
    iput-boolean v5, v1, Lh8/u;->w:Z

    .line 24
    iput-boolean v5, v1, Lh8/u;->x:Z

    .line 25
    iput-boolean v5, v1, Lh8/u;->y:Z

    const-string v2, "00:00"

    .line 26
    iput-object v2, v1, Lh8/u;->z:Ljava/lang/String;

    const-string v2, "23:59"

    .line 27
    iput-object v2, v1, Lh8/u;->A:Ljava/lang/String;

    .line 28
    invoke-virtual {v1}, Lb9/a;->a()Z

    .line 29
    iget-object v2, v0, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v0}, Ll8/w;->g()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c005e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentPreferences;->a:Lbutterknife/Unbinder;

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/b;->k(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public onDNDClick(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->X(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "notification"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 5
    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1e61

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 8
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchSilenceDND:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->onResume()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetusednd"

    .line 11
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDarkThemeClick(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "psetdarktheme"

    .line 3
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v0, Lk8/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk8/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onDefaultPhoneAppClick(Z)V
    .locals 4
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->Y(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "psetusedefphoneapp"

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 3
    iget-object v3, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v3}, Lf8/g;->w(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    .line 5
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object p1

    if-lt v0, v2, :cond_3

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1b5f

    .line 10
    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->onResume()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->m(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onExportClick()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v1, "scm-"

    .line 2
    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lf8/g;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lf8/g;->o(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.OPENABLE"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "text/*"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->d:Landroidx/activity/result/c;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v0, v2}, Landroidx/activity/result/c;->a(Ljava/lang/Object;Lc0/c;)V

    return-void
.end method

.method public onImportClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/*"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->e:Landroidx/activity/result/c;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v0, v2}, Landroidx/activity/result/c;->a(Ljava/lang/Object;Lc0/c;)V

    return-void
.end method

.method public onLanguageClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/x;

    invoke-direct {v1}, Lk8/x;-><init>()V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEventFragmentPreferences(Lk8/h;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->a()V

    return-void
.end method

.method public onMessageEventPreferences(Lk8/r;)V
    .locals 2
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget p1, p1, Lk8/r;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ll8/w;

    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Ll8/w;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->c:Ll8/w;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetusedefphoneapp"

    .line 4
    invoke-static {p1, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->c:Ll8/w;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Ll8/w;->l(IZ)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->c:Ll8/w;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Ll8/w;->l(IZ)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->onResume()V

    return-void
.end method

.method public onMessageEventProStatusChanged(Lk8/s;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->a()V

    return-void
.end method

.method public onMessageEventSimIconColorChanged(Lk8/u;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->a()V

    return-void
.end method

.method public onNotificationTextColorClick(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lf8/h;->Q(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v0, Lk8/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk8/d;-><init>(I)V

    invoke-virtual {p1, v0}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0}, Lf8/g;->N(Landroid/content/Context;)V

    const/4 p1, 0x0

    const-string v1, "psetnotifusecustomtextcolor"

    .line 5
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->a()V

    return-void
.end method

.method public onSilenceRingerReadMoreClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/w;

    const-string v2, "silent"

    invoke-direct {v1, v2}, Lk8/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onSim1LongClick()Z
    .locals 3
    .annotation runtime Lbutterknife/OnLongClick;
    .end annotation

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lk8/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    return v2
.end method

.method public onSim2LongClick()Z
    .locals 3
    .annotation runtime Lbutterknife/OnLongClick;
    .end annotation

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lk8/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSystemVibrationClick(Z)V
    .locals 3
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->Z(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "FPref"

    const-string v0, "No permission to write settings. Requesting"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x1ba5

    .line 8
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->switchSystemVibration:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->onResume()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetusesystemvibration"

    .line 12
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUseAlternativeContactsNameClick(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->W(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v1, "psetusealtcontactsname"

    .line 3
    invoke-static {v0, v1, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-static {p1}, Lf8/g;->D(Landroid/content/Context;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object v0

    const v1, 0x7f110026

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object v0

    check-cast v0, Lf/j;

    invoke-virtual {v0}, Lf/j;->s()Lf/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lf/a;->p(I)V

    .line 5
    :cond_0
    new-instance v0, Ll8/w;

    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ll8/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences;->c:Ll8/w;

    .line 6
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentPreferences;->a()V

    .line 7
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/t;

    invoke-direct {p2}, Lk8/t;-><init>()V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method
