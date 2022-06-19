.class public Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/callapp/contacts/activity/interfaces/ShowKeypadListener;
.implements Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;
.implements Lcom/callapp/contacts/event/listener/DestroyListener;
.implements Lcom/callapp/contacts/event/listener/ResumeListener;
.implements Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;
.implements Lcom/callapp/contacts/manager/phone/CallDetailsListener;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:[I

.field private I:Landroid/widget/TextView;

.field private J:Landroid/view/View;

.field private final K:I

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Landroid/view/animation/Animation;

.field private T:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/AudioRouteSelectorDialogListener;

.field private U:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;

.field private V:Z

.field private W:Landroid/animation/ValueAnimator;

.field private X:Z

.field private Y:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;

.field private Z:Z

.field public a:Landroid/widget/TextView;

.field private final aa:Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;

.field private final ab:Ljava/lang/Runnable;

.field private final ac:Ljava/lang/Runnable;

.field private final ad:Ljava/lang/Runnable;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:J

.field private q:Landroid/view/animation/AlphaAnimation;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/ImageView;

.field private u:Landroidx/cardview/widget/CardView;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;-><init>()V

    const/16 v0, 0x3e8

    .line 127
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->K:I

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->N:Z

    .line 141
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;->OPEN:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->Y:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;

    .line 142
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->Z:Z

    .line 151
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->aa:Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;

    .line 173
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ab:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$3;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ac:Ljava/lang/Runnable;

    .line 191
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ad:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->X:Z

    return p0
.end method

.method static synthetic B(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->t:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic C(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic D(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->x:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic E(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic F(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->z:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/FrameLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    .line 1006
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 1007
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1008
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$CMLSxufXu9akUrhoVPHw3Fa0HZ4;

    invoke-direct {v4, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$CMLSxufXu9akUrhoVPHw3Fa0HZ4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Landroid/view/View;)V

    sget-object p1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$tIDuoH0x2bRJ8OgItdLp6LzyNfw;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$tIDuoH0x2bRJ8OgItdLp6LzyNfw;

    new-array v0, v0, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    sget-object v5, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->MICROPHONE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v5, v0, v2

    invoke-virtual {v1, v3, v4, p1, v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void

    .line 1014
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b()V

    .line 1015
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1016
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->o:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x7f0600f2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1017
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$13;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$13;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Landroid/view/View;ZZZI)V
    .locals 7

    .line 1113
    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1116
    :cond_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    .line 1117
    invoke-static {p1, p3}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;Z)V

    .line 1118
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;ZLandroid/view/View;ZI)V

    invoke-virtual {p2, v6}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Landroid/view/View;ZZI)V
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setRecorderIcon(Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;ZJLcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 90
    invoke-direct/range {p0 .. p6}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;ZJLcom/callapp/contacts/model/call/CallData;)V

    return-void
.end method

.method private a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;JZLcom/callapp/contacts/model/call/CallData;)V
    .locals 6

    .line 782
    iput-wide p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->p:J

    .line 783
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a04ee

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f:Landroid/view/View;

    const v1, 0x7f060089

    .line 785
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 786
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a0364

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->g:Landroid/widget/TextView;

    .line 787
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a0366

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->j:Landroid/widget/TextView;

    .line 788
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v2, 0x7f0a0365

    invoke-interface {v0, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->h:Landroid/widget/TextView;

    .line 789
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->I:Landroid/widget/TextView;

    .line 790
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 791
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setCallTextMargin(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 796
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->k:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 798
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v3, 0x7f0a0368

    invoke-interface {v2, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->k:Landroid/widget/LinearLayout;

    .line 800
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->k:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0367

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 801
    invoke-static {p2}, Lcom/callapp/contacts/manager/sim/SimManager;->b(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)I

    move-result p2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 802
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->k:Landroid/widget/LinearLayout;

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 805
    :cond_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->k:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 806
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->k:Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 810
    :cond_3
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p6}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/call/CallState;->isPreCall()Z

    move-result p2

    if-nez p2, :cond_7

    .line 811
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 813
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v2, 0x7f0a073a

    invoke-interface {p2, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 814
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    const v2, 0x7f060026

    .line 815
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f060088

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 816
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0736

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->m:Landroid/widget/RelativeLayout;

    .line 817
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0727

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v2, 0x7f120584

    .line 818
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0601ec

    .line 819
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 820
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0744

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->n:Landroid/widget/ImageView;

    .line 821
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    const v2, 0x7f0a05cd

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->o:Landroid/widget/ImageView;

    .line 822
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 823
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->i()V

    .line 824
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 826
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isRecording()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 827
    sget-object p2, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    goto :goto_1

    .line 829
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b(Z)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->PRE_RECORD:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    goto :goto_1

    :cond_5
    sget-object p2, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->IDLE:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    :goto_1
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setRecorderIcon(Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;)V

    .line 833
    :cond_6
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    goto :goto_2

    .line 837
    :cond_7
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 838
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 843
    :cond_8
    :goto_2
    sget-object p2, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    invoke-virtual {p6}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p5

    invoke-virtual {p5}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result p5

    aget p2, p2, p5

    const-string p5, ""

    if-eq p2, v1, :cond_b

    const/4 p6, 0x2

    if-eq p2, p6, :cond_b

    const/4 p6, 0x3

    if-eq p2, p6, :cond_a

    const/4 p6, 0x4

    if-eq p2, p6, :cond_a

    const/16 p1, 0x9

    if-eq p2, p1, :cond_9

    goto :goto_3

    .line 845
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->j:Landroid/widget/TextView;

    invoke-static {p1, p5}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 846
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->h:Landroid/widget/TextView;

    const p2, 0x7f120222

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_c

    .line 851
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    iget-object p5, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ad:Ljava/lang/Runnable;

    invoke-virtual {p2, p5}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 852
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->j:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callapp/framework/phone/PhoneNumberUtils;->a(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 853
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_3

    .line 858
    :cond_b
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->L:Z

    if-nez p1, :cond_c

    .line 859
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->h:Landroid/widget/TextView;

    invoke-static {p1, p5}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 860
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->j:Landroid/widget/TextView;

    invoke-static {p1, p5}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 861
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ad:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 862
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ad:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    .line 863
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->L:Z

    .line 869
    :cond_c
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ab:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    .line 870
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 871
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->g:Landroid/widget/TextView;

    const-wide/16 p5, 0x0

    cmp-long p2, p3, p5

    if-lez p2, :cond_d

    const/4 v0, 0x1

    :cond_d
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;ZJLcom/callapp/contacts/model/call/CallData;)V
    .locals 7

    .line 758
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->getRootView()V

    .line 759
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 760
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 767
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b()V

    if-eqz p3, :cond_2

    :goto_0
    move-wide v3, p4

    goto :goto_1

    :cond_2
    const-wide/16 p4, -0x1

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p6

    .line 771
    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;JZLcom/callapp/contacts/model/call/CallData;)V

    :cond_3
    return-void
.end method

.method private a(Z)V
    .locals 6

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->J:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    new-instance v2, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->J:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->J:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, p1, v5, v3, v4}, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;-><init>(ZZII)V

    const/4 v3, 0x0

    .line 2091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 303
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->J:Landroid/view/View;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 304
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->G:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$11;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;ZZ)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a([I)V
    .locals 14

    .line 1065
    invoke-static {p1}, Lcom/callapp/contacts/util/ArrayUtils;->a([I)[Z

    move-result-object v0

    .line 1066
    sget-object v1, Lcom/callapp/contacts/model/Constants;->CALL_ON_HOLD:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v6

    .line 1067
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1068
    const-class p1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    const-string v0, "wrong size off call state array"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 1071
    :cond_0
    sget-object v1, Lcom/callapp/contacts/model/Constants;->CALL_ACTIVE:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v6, :cond_1

    goto/16 :goto_1

    .line 1077
    :cond_1
    sget-object v1, Lcom/callapp/contacts/model/Constants;->CALL_BEFORE_MERGE:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1079
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldConferenceScreenAppear()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1080
    iget-object v8, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->x:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1081
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f0803e1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1082
    iget-object v9, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->z:Landroid/widget/ImageView;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1083
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->y:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x1

    .line 1085
    aget p1, p1, v0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 1086
    iget-object v8, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->y:Landroid/widget/ImageView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    goto :goto_0

    .line 1088
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->y:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1090
    :goto_0
    iget-object v8, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->x:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1091
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f0803e1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1092
    iget-object v9, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->z:Landroid/widget/ImageView;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    goto :goto_3

    .line 1095
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->x:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1096
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const v7, 0x7f0803e1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1097
    iget-object v9, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->z:Landroid/widget/ImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1098
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->y:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    goto :goto_3

    .line 1073
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->x:Landroid/widget/ImageView;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1074
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/4 v5, 0x1

    if-eqz v6, :cond_6

    const p1, 0x7f0803e2

    const v7, 0x7f0803e2

    goto :goto_2

    :cond_6
    const p1, 0x7f0803e1

    const v7, 0x7f0803e1

    :goto_2
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1075
    iget-object v9, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->z:Landroid/widget/ImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1076
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->y:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1100
    :goto_3
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->t:Landroid/widget/ImageView;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getMute()Z

    move-result v10

    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getMute()Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f0803e0

    const v11, 0x7f0803e0

    goto :goto_4

    :cond_7
    const p1, 0x7f0803df

    const v11, 0x7f0803df

    :goto_4
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->V:Z

    return p1
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1009
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;Z)V
    .locals 5

    .line 1139
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->Y:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;

    .line 1140
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->W:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1145
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;->OPEN:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;

    if-ne p1, v1, :cond_1

    .line 1147
    sget p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN:I

    goto :goto_0

    .line 1150
    :cond_1
    sget p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED:I

    :goto_0
    if-eq v0, p1, :cond_4

    if-le p1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 5165
    :goto_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    sget v3, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->d:F

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$15;

    invoke-direct {v4, p0, v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$15;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;IZ)V

    invoke-static {v2, v0, p1, v3, v4}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;IIFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1153
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->W:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_3

    const-wide/16 v0, 0x0

    .line 1155
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1157
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->W:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b(Z)V

    return-void
.end method

.method private b(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 705
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isCallWaiting()Z

    move-result p1

    if-nez p1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b()V

    const/4 p1, 0x0

    .line 707
    invoke-direct {p0, p1, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(ZZ)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1213
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->X:Z

    .line 1214
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->u:Landroidx/cardview/widget/CardView;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 1215
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setDialogVisibility(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1217
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->X:Z

    .line 1218
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setDialogVisibility(Z)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->N:Z

    return p0
.end method

.method public static c()V
    .locals 2

    .line 1041
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getActiveOrBackgroundCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->ACTIVITY:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 2

    .line 325
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 326
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 327
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->g()V

    return-void

    .line 329
    :cond_0
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 330
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 333
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->finish()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setCallBarCloseAnimation(Z)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Z
    .locals 1

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->N:Z

    return v0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 314
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Z)V

    const/4 v0, 0x1

    .line 315
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setDialogVisibility(Z)V

    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->p:J

    return-wide v0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/view/View;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->F:Landroid/view/View;

    return-object p0
.end method

.method private f()V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a019d

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v2, 0x7f0a07f6

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0805c4

    .line 498
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0600e6

    .line 499
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;I)V

    .line 500
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 501
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;I)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->J:Landroid/view/View;

    const v1, 0x7f06003d

    if-eqz v0, :cond_1

    const v2, 0x7f0a0309

    .line 504
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 506
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v2, 0x7f0a053d

    invoke-interface {v0, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 511
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 513
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b()V

    .line 514
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->H:[I

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a([I)V

    .line 515
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    const v1, 0x7f060026

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->s:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 519
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f060111

    goto :goto_0

    :cond_4
    const v1, 0x7f060112

    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->A:Landroid/widget/ImageView;

    return-object p0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 581
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->O:Z

    const/4 v0, 0x1

    .line 582
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Z)V

    return-void
.end method

.method private getRootView()V
    .locals 13

    .line 890
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;)Landroidx/core/e/b;

    move-result-object v0

    .line 891
    iget-object v1, v0, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    .line 892
    iget-object v0, v0, Landroidx/core/e/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3442
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a04fb

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f0a055e

    .line 3444
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->u:Landroidx/cardview/widget/CardView;

    .line 3445
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a04a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->v:Landroid/view/View;

    .line 3446
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a04e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->t:Landroid/widget/ImageView;

    .line 3447
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a04de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    .line 3448
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a04d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->x:Landroid/widget/ImageView;

    .line 3449
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a04e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->y:Landroid/widget/ImageView;

    .line 3450
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a04eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->z:Landroid/widget/ImageView;

    .line 3451
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a049e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->B:Landroid/widget/ImageView;

    .line 3452
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->C:Landroid/widget/ImageView;

    .line 3453
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a060f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->D:Landroid/widget/ImageView;

    .line 3454
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 3455
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 3456
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3457
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3458
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3459
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3460
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3461
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3462
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3463
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3464
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3465
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3466
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->t:Landroid/widget/ImageView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getMute()Z

    move-result v5

    const v6, 0x7f0803df

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 3467
    iget-object v8, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f0803e1

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 3468
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->x:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0803d9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    goto/16 :goto_0

    .line 3470
    :cond_1
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->t:Landroid/widget/ImageView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0803df

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 3471
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0803e1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 3472
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->x:Landroid/widget/ImageView;

    const v11, 0x7f0803d9

    invoke-direct/range {v6 .. v11}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 3475
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a02ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a:Landroid/widget/TextView;

    const v1, 0x7f1207db

    .line 3476
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3477
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a02ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b:Landroid/widget/TextView;

    const v1, 0x7f1204ea

    .line 3478
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3479
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b:Landroid/widget/TextView;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3480
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3481
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    const v1, 0x7f0a02ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->c:Landroid/widget/TextView;

    const v1, 0x7f1202b9

    .line 3482
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3483
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3487
    :cond_2
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3488
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->H:[I

    if-eqz v0, :cond_3

    .line 3489
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->onCallDetailsChanged([I)V

    .line 4309
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a030a

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->J:Landroid/view/View;

    .line 4310
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a019b

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->s:Landroid/view/View;

    .line 4311
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a0163

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->G:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 4313
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$IoZcUo_s5NpRLe80owr_ag-RAqA;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$IoZcUo_s5NpRLe80owr_ag-RAqA;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4319
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a07f6

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0805c4

    .line 4320
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 4323
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->J:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 4324
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$yz39sZiK95KowAbNhXt5hnnMwQM;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$yz39sZiK95KowAbNhXt5hnnMwQM;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4340
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a038e

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->E:Landroid/widget/TextView;

    .line 4341
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a038f

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 4342
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->E:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 4343
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$5;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4410
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a0865

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->F:Landroid/view/View;

    .line 4411
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a0864

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->A:Landroid/widget/ImageView;

    .line 4413
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->F:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 4414
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3294
    :cond_7
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->O:Z

    if-eqz v0, :cond_8

    .line 3295
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->g()V

    .line 3297
    :cond_8
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f()V

    :cond_9
    return-void
.end method

.method private h()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$9;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$9;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->Z:Z

    return p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 877
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->q:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    .line 878
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 879
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->q:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 880
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->q:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 881
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->q:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    return-void
.end method

.method private isKeypadOpen()Z
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Ljava/lang/Runnable;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ad:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static synthetic j()V
    .locals 0

    return-void
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->U:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;

    return-object p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->V:Z

    return p0
.end method

.method public static synthetic lambda$CMLSxufXu9akUrhoVPHw3Fa0HZ4(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$IoZcUo_s5NpRLe80owr_ag-RAqA(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$iM3TvnRKKHIzeQzeOW41YoSZntA(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;Z)V

    return-void
.end method

.method public static synthetic lambda$s0VPx2g_O05pyw4V0QMsTTGhOF4(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f()V

    return-void
.end method

.method public static synthetic lambda$tIDuoH0x2bRJ8OgItdLp6LzyNfw()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->j()V

    return-void
.end method

.method public static synthetic lambda$yz39sZiK95KowAbNhXt5hnnMwQM(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Z)V

    return-void
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->E:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/view/View;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->J:Landroid/view/View;

    return-object p0
.end method

.method static synthetic p(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/AudioRouteSelectorDialogListener;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->T:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/AudioRouteSelectorDialogListener;

    return-object p0
.end method

.method static synthetic q(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic r(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Ljava/lang/Runnable;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ac:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic s(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->getRootView()V

    return-void
.end method

.method private setCallBarCloseAnimation(Z)V
    .locals 1

    .line 730
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->S:Landroid/view/animation/Animation;

    if-nez p1, :cond_1

    .line 734
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010018

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->S:Landroid/view/animation/Animation;

    .line 735
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$12;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$12;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 750
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->S:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    .line 731
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private setCallTextMargin(I)V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->I:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 587
    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 588
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->I:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setDialogVisibility(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1224
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->u:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1225
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->v:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1227
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->v:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1228
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->u:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    return-void
.end method

.method private setRecorderIcon(Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;)V
    .locals 4

    .line 899
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 900
    sget-object v0, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 901
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->o:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    .line 902
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->m:Landroid/widget/RelativeLayout;

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    .line 903
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->n:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 904
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->q:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 905
    :cond_0
    sget-object v0, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->PRE_RECORD:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 906
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->o:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    .line 907
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->m:Landroid/widget/RelativeLayout;

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    .line 908
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->n:Landroid/widget/ImageView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 909
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->q:Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_1

    .line 910
    invoke-virtual {p1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 912
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 914
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->o:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    .line 915
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->m:Landroid/widget/RelativeLayout;

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    .line 916
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->q:Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_3

    .line 917
    invoke-virtual {p1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 919
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-void
.end method

.method static synthetic t(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/view/View;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic u(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V
    .locals 2

    .line 5885
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ab:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    const-wide/16 v0, -0x1

    .line 5886
    iput-wide v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->p:J

    return-void
.end method

.method static synthetic v(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->S:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic w(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic x(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->D:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic y(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->B:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic z(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->C:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 391
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x5dc

    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 393
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 395
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    .line 396
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a()Z

    return-void

    .line 399
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->finish()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 7

    .line 1033
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b()Z

    move-result v5

    iput-boolean v5, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->Q:Z

    .line 1034
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    const v0, 0x7f0803e1

    if-eqz v5, :cond_0

    const v1, 0x7f0803e2

    const v6, 0x7f0803e2

    goto :goto_0

    :cond_0
    const v6, 0x7f0803e1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1035
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->Q:Z

    if-eqz v1, :cond_1

    .line 1036
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(ILandroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;Z)V
    .locals 2

    .line 1137
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->isInCallMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->Y:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;

    if-eq v0, p1, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$iM3TvnRKKHIzeQzeOW41YoSZntA;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$iM3TvnRKKHIzeQzeOW41YoSZntA;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;Z)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->isKeypadOpen()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1240
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->g()V

    return-void

    .line 1243
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->O:Z

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 7

    .line 530
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0803e3

    const v3, 0x7f0803e4

    const v4, 0x7f0803da

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 531
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    const v2, 0x7f0803e4

    goto :goto_1

    .line 546
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->isUsingBT()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    const v2, 0x7f0803da

    goto :goto_1

    .line 549
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 558
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$8;

    invoke-direct {v3, p0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$8;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;ZI)V

    invoke-interface {v0, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()Z
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a0163

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1059
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_1
    return v1
.end method

.method public final e()V
    .locals 12

    .line 1104
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->t:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0803df

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1105
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->x:Landroid/widget/ImageView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1106
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->w:Landroid/widget/ImageView;

    const v5, 0x7f0803e1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1107
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->z:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    .line 1108
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->y:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    return-void
.end method

.method public isInCallMode()Z
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMerge()Z
    .locals 1

    .line 1257
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->R:Z

    return v0
.end method

.method public isOnHold()Z
    .locals 1

    .line 1253
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->Q:Z

    return v0
.end method

.method public onAudioMode(I)V
    .locals 0

    .line 1046
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b()V

    return-void
.end method

.method public onCallDetailsChanged([I)V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->H:[I

    return-void

    .line 930
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->H:[I

    .line 931
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 932
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a([I)V

    :cond_1
    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 4

    .line 593
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 594
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getConferenceManager()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldConferenceScreenAppear()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isCallDataInsideConference(Lcom/callapp/contacts/model/call/CallData;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 601
    :cond_1
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 638
    :pswitch_0
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->L:Z

    goto :goto_1

    .line 635
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b(Lcom/callapp/contacts/model/call/CallData;)V

    return-void

    .line 630
    :pswitch_2
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->Z:Z

    .line 2687
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ad:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 2688
    invoke-direct {p0, v1, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(ZZ)V

    .line 2689
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->L:Z

    const/4 p1, 0x0

    .line 2690
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->H:[I

    .line 2691
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->U:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;

    return-void

    .line 626
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Z)V

    .line 627
    invoke-direct {p0, v2, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(ZZ)V

    return-void

    .line 619
    :pswitch_4
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 621
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/model/call/CallData;)V

    return-void

    .line 605
    :pswitch_5
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->Z:Z

    .line 606
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->L:Z

    if-eqz v0, :cond_3

    return-void

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->J:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 611
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->g()V

    .line 615
    :cond_4
    :pswitch_6
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->L:Z

    .line 616
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/model/call/CallData;)V

    :cond_5
    :goto_1
    return-void

    .line 642
    :cond_6
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    goto :goto_2

    .line 657
    :cond_7
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b(Lcom/callapp/contacts/model/call/CallData;)V

    :goto_2
    return-void

    .line 649
    :cond_8
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->h()V

    .line 651
    sget-object v0, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 654
    :cond_9
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b(Lcom/callapp/contacts/model/call/CallData;)V

    return-void

    .line 645
    :cond_a
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->h()V

    .line 646
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/model/call/CallData;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 939
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 942
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    .line 943
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p2

    if-nez p2, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e()V

    .line 945
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    return-void

    .line 947
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    return-void

    .line 950
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->r:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 957
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 958
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Bottom Action Bar"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 990
    :sswitch_0
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 991
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->U:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;

    if-eqz v0, :cond_0

    .line 992
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;->a()V

    return-void

    .line 994
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;)V

    return-void

    .line 980
    :sswitch_1
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->c()V

    .line 981
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Swap"

    invoke-virtual {p1, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 960
    :sswitch_2
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getMute()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->P:Z

    .line 961
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->P:Z

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Z)V

    .line 962
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->P:Z

    if-nez p1, :cond_1

    .line 963
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f0803df

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(ILandroid/content/Context;)V

    .line 965
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Mute"

    invoke-virtual {p1, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 976
    :sswitch_3
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getActiveOrBackgroundCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->ACTIVITY:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->R:Z

    .line 977
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Merge"

    invoke-virtual {p1, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 968
    :sswitch_4
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/content/Context;)V

    .line 969
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Hold"

    invoke-virtual {p1, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 972
    :sswitch_5
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;)V

    .line 973
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Add call"

    invoke-virtual {p1, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 984
    :sswitch_6
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/DefaultDialer;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SET_AS_DEFAULT_PHONE:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 5091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 987
    :sswitch_7
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b(Z)V

    return-void

    .line 1001
    :sswitch_8
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;->OPEN:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;Z)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00bd -> :sswitch_8
        0x7f0a02ed -> :sswitch_7
        0x7f0a02ee -> :sswitch_6
        0x7f0a049e -> :sswitch_8
        0x7f0a04d7 -> :sswitch_5
        0x7f0a04de -> :sswitch_4
        0x7f0a04e5 -> :sswitch_3
        0x7f0a04e6 -> :sswitch_2
        0x7f0a04eb -> :sswitch_1
        0x7f0a04fb -> :sswitch_8
        0x7f0a060f -> :sswitch_8
        0x7f0a0739 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 14

    .line 223
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 224
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addResumeListener(Lcom/callapp/contacts/event/listener/ResumeListener;)V

    .line 225
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addDestroyListener(Lcom/callapp/contacts/event/listener/DestroyListener;)V

    .line 226
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->a(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V

    .line 227
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->aa:Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 230
    sget-object v1, Lcom/callapp/contacts/manager/phone/CallDetailsListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 231
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ShowKeypadListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 232
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f0a019c

    .line 234
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    .line 236
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->M:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONFERENCE_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 238
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLongestCallDuration()J

    move-result-wide v4

    new-instance v6, Lcom/callapp/contacts/model/call/CallData;

    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->ON_CONFERENCE:Lcom/callapp/contacts/model/call/CallState;

    invoke-direct {v6, p1}, Lcom/callapp/contacts/model/call/CallData;-><init>(Lcom/callapp/contacts/model/call/CallState;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;ZJLcom/callapp/contacts/model/call/CallData;)V

    return-void

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    .line 241
    new-instance v13, Lcom/callapp/contacts/model/call/CallData;

    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    invoke-direct {v13, p1}, Lcom/callapp/contacts/model/call/CallData;-><init>(Lcom/callapp/contacts/model/call/CallState;)V

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;ZJLcom/callapp/contacts/model/call/CallData;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 244
    invoke-direct {p0, p1, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(ZZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->aa:Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 268
    sget-object v1, Lcom/callapp/contacts/manager/phone/CallDetailsListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 269
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ShowKeypadListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 270
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 272
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V

    .line 273
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 274
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ac:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 275
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->ab:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e:Landroid/view/View;

    .line 278
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->A:Landroid/widget/ImageView;

    .line 279
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f:Landroid/view/View;

    .line 280
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->g:Landroid/widget/TextView;

    .line 281
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->h:Landroid/widget/TextView;

    .line 282
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->j:Landroid/widget/TextView;

    .line 283
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->k:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onMute(Z)V
    .locals 6

    .line 1052
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->t:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f0803e0

    const v5, 0x7f0803e0

    goto :goto_0

    :cond_0
    const v0, 0x7f0803df

    const v5, 0x7f0803df

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 254
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b()V

    .line 257
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->F:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e()V

    :cond_1
    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 1249
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$s0VPx2g_O05pyw4V0QMsTTGhOF4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/-$$Lambda$CallBarPresenter$s0VPx2g_O05pyw4V0QMsTTGhOF4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAudioRouteSelectorDialogListener(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/AudioRouteSelectorDialogListener;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->T:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/AudioRouteSelectorDialogListener;

    return-void
.end method

.method public setForcePreCall(Z)V
    .locals 0

    .line 1029
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->M:Z

    return-void
.end method

.method public setHangButton(Z)V
    .locals 2

    .line 359
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$6;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$6;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRecorderTestListener(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->U:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;

    return-void
.end method
