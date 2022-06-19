.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""

# interfaces
.implements Lcom/kedlin/cca/ui/CallScreenLayout$j;
.implements Landroid/hardware/SensorEventListener;
.implements Le61;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field public static final s:Ljava/lang/String;


# instance fields
.field public c:Lg61;

.field public d:Lg61;

.field public f:Lcom/kedlin/cca/ui/CallScreenLayout;

.field public g:Landroid/app/AlertDialog;

.field public h:Landroid/app/Dialog;

.field public j:Landroid/app/Dialog;

.field public k:Landroid/app/Dialog;

.field public l:Lqc1;

.field public m:Lf61;

.field public n:Landroid/media/AudioManager;

.field public o:Landroid/hardware/SensorManager;

.field public p:Landroid/hardware/Sensor;

.field public q:Landroid/os/PowerManager;

.field public r:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    return-void
.end method

.method public static synthetic A(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic B(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)Lf61;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    return-object p0
.end method

.method public static C()I
    .locals 1

    invoke-static {}, Lj71;->d()Lj71;

    move-result-object v0

    invoke-virtual {v0}, Lj71;->c()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    return v0
.end method

.method public static D(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    const-string p1, "InCallActivity.show_dialpad"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    sget-object p0, Lcom/kedlin/cca/core/CallService;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private synthetic F(Lg61;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object p1, p1, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p2, p1}, Lf61;->c(Landroid/telecom/Call;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object p2, p2, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p1, p2}, Lf61;->a(Landroid/telecom/Call;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic H(Lg61;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object p1, p1, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p2, p1}, Lf61;->c(Landroid/telecom/Call;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object p2, p2, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p1, p2}, Lf61;->a(Landroid/telecom/Call;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic J(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    iget-object v0, p1, Lg61;->b:Lg61$c;

    sget-object v1, Lg61$c;->h:Lg61$c;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object p1, p1, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {v0, p1}, Lf61;->k(Landroid/telecom/Call;)V

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v0, v0, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p1, v0}, Lf61;->a(Landroid/telecom/Call;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic L(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    iget-object v0, v0, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p1, v0}, Lf61;->c(Landroid/telecom/Call;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object p1, p1, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {v0, p1}, Lf61;->a(Landroid/telecom/Call;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic N()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->e0(Lg61;)V

    return-void
.end method

.method private synthetic P(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lf61;->o(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic R(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lf61;->o(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic T(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lf61;->o(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic V(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lf61;->o(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic X(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V
    .locals 1

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    iget-object v0, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public static synthetic z(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)Lcom/kedlin/cca/ui/CallScreenLayout;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    return-object p0
.end method


# virtual methods
.method public E()Z
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->n:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public synthetic G(Lg61;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->F(Lg61;Landroid/view/View;)V

    return-void
.end method

.method public synthetic I(Lg61;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->H(Lg61;Landroid/view/View;)V

    return-void
.end method

.method public synthetic K(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->J(Landroid/view/View;)V

    return-void
.end method

.method public synthetic M(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->L(Landroid/view/View;)V

    return-void
.end method

.method public synthetic O()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->N()V

    return-void
.end method

.method public synthetic Q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->P(Landroid/view/View;)V

    return-void
.end method

.method public synthetic S(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->R(Landroid/view/View;)V

    return-void
.end method

.method public synthetic U(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->T(Landroid/view/View;)V

    return-void
.end method

.method public synthetic W(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->V(Landroid/view/View;)V

    return-void
.end method

.method public Y(Ljava/lang/String;Li91;)V
    .locals 2

    new-instance v0, Lx81;

    invoke-direct {v0}, Lx81;-><init>()V

    invoke-virtual {v0, p2}, Lx81;->P(Li91;)V

    const-class v1, Lq71$e;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, v0, Lx81;->j:Ljava/util/EnumSet;

    sget-object v1, Lq71$g;->c:Lq71$g;

    iput-object v1, v0, Lx81;->l:Lq71$g;

    iput-object p2, v0, Lx81;->g:Li91;

    iput-object p1, v0, Lx81;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lx81;->z()Z

    return-void
.end method

.method public Z(Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p4, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->Y(Ljava/lang/String;Li91;)V

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$5;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$5;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const-string p1, "report"

    invoke-static {p1, p0, v0, v1}, Lcom/kedlin/cca/core/service/BackgroundWorker;->g(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    return-void
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public final a0()V
    .locals 2

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    iget-object v0, v0, Lg61;->b:Lg61$c;

    sget-object v1, Lg61$c;->b:Lg61$c;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x88000

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x288000

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public final b0()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    const v2, 0x7f0a00e9

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a00e6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lj71;->d()Lj71;

    move-result-object v3

    invoke-virtual {v3}, Lj71;->c()Landroid/telecom/CallAudioState;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    iget-object v5, v5, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v6, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne v5, v6, :cond_0

    const v5, 0x7f040040

    const v6, 0x7f040049

    const v7, 0x7f040041

    const v8, 0x7f040042

    const v9, 0x7f040047

    const v10, 0x7f040048

    const v11, 0x7f040043

    const v12, 0x7f040044

    const v13, 0x7f040045

    const v14, 0x7f040046

    goto :goto_0

    :cond_0
    const v5, 0x7f040039

    const v6, 0x7f04004c

    const v7, 0x7f04003a

    const v8, 0x7f04003b

    const v9, 0x7f04004a

    const v10, 0x7f04004b

    const v11, 0x7f04003c

    const v12, 0x7f04003d

    const v13, 0x7f04003e

    const v14, 0x7f04003f

    :goto_0
    const/4 v15, 0x0

    invoke-static {v4, v5, v15}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    const/4 v5, 0x1

    invoke-static {v4, v6, v5}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0a00df

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0a00de

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    const v15, 0x7f0a00e1

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move/from16 v16, v7

    const v7, 0x7f0a00e0

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    move/from16 v17, v8

    const v8, 0x7f0a00e5

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move/from16 v18, v9

    const v9, 0x7f0a00e4

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    move/from16 v19, v10

    const v10, 0x7f0a00e3

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move/from16 v20, v11

    const v11, 0x7f0a00e2

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v11

    move/from16 v21, v12

    const/4 v12, 0x2

    and-int/2addr v11, v12

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v2

    const/4 v12, 0x2

    if-ne v2, v12, :cond_1

    move/from16 v2, v17

    goto :goto_1

    :cond_1
    move/from16 v2, v16

    :goto_1
    invoke-static {v4, v2, v11}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    new-instance v2, Lyq0;

    invoke-direct {v2, v0}, Lyq0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v2

    const/4 v5, 0x4

    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v11

    if-ne v11, v5, :cond_3

    move/from16 v11, v21

    goto :goto_3

    :cond_3
    move/from16 v11, v20

    :goto_3
    invoke-static {v4, v11, v2}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    new-instance v2, Lwq0;

    invoke-direct {v2, v0}, Lwq0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x8

    goto :goto_4

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v5

    and-int/2addr v5, v2

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v7

    if-ne v7, v2, :cond_5

    move/from16 v7, v19

    goto :goto_5

    :cond_5
    move/from16 v7, v18

    :goto_5
    invoke-static {v4, v7, v5}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    new-instance v5, Lzq0;

    invoke-direct {v5, v0}, Lzq0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    invoke-virtual {v9, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v9, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v2

    const/4 v5, 0x1

    and-int/2addr v2, v5

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v3

    if-ne v3, v5, :cond_7

    move v13, v14

    :cond_7
    invoke-static {v4, v13, v2}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    new-instance v2, Lsq0;

    invoke-direct {v2, v0}, Lsq0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_8
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_9
    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->n:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->n:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->n:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public final c0(Lg61;)V
    .locals 6

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k:Landroid/app/Dialog;

    if-nez v2, :cond_2

    const v5, 0x7f0a0144

    goto :goto_1

    :cond_2
    const v5, 0x7f0a0145

    :goto_1
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;

    invoke-direct {v5, p0, v3, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/TelecomManager;Lg61;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k:Landroid/app/Dialog;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$d;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void
.end method

.method public d0(Lg61;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lf61;->j()Lux0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lux0;->x()V

    :cond_1
    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v0, p1, Lg61;->b:Lg61$c;

    sget-object v1, Lg61$c;->h:Lg61$c;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object p1, p1, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {v0, p1}, Lf61;->x(Landroid/telecom/Call;)V

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->e0(Lg61;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e0(Lg61;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$e;->a:[I

    iget-object v1, p1, Lg61;->b:Lg61$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c0(Lg61;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->s0(Lg61;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->r0(Lg61;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->D0()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->u0(Lg61;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    iget-object v0, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const/16 v0, 0x7d0

    iget p1, p1, Lg61;->n:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v1, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->t0(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltq0;

    invoke-direct {v1, p0}, Ltq0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg61;->c:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lf61;->u(Landroid/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->C()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->C()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Lf61;->o(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->b0()V

    :goto_2
    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v0, v0, Lg61;->b:Lg61$c;

    sget-object v1, Lg61$c;->f:Lg61$c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v0, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lf61;->h()Lf61;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v1, v1, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {v0, v1}, Lf61;->c(Landroid/telecom/Call;)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    invoke-virtual {v0, v1}, Lf61;->i(Lg61;)Lg61;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d0(Lg61;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v1, v1, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {v0, v1}, Lf61;->w(Landroid/telecom/Call;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public m()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v1, v1, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_b

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    const v3, 0x7f0a0129

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    const v4, 0x7f0a012b

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    const v5, 0x7f0a012a

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    const v6, 0x7f0a012c

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    const v7, 0x7f0a0130

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    const v8, 0x7f0a012f

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    const v9, 0x7f0a0131

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    const v10, 0x7f0a0135

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v13, 0x7f04042c

    const v14, 0x7f04042f

    const v15, 0x7f04042e

    iget-object v11, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    iget-object v11, v11, Lcom/kedlin/cca/ui/CallScreenLayout;->E0:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    sget-object v12, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    if-ne v11, v12, :cond_0

    const v11, 0x7f040431

    const v12, 0x7f040434

    const v13, 0x7f040430

    const v14, 0x7f040433

    const v15, 0x7f040432

    goto :goto_0

    :cond_0
    const v11, 0x7f04042d

    const v12, 0x7f040435

    :goto_0
    const/4 v2, 0x0

    invoke-static {v10, v11, v2}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    const/4 v1, 0x1

    invoke-static {v10, v12, v1}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v10, v14, v2}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v8, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v8, v8, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    const/4 v11, 0x2

    if-le v8, v11, :cond_6

    const v2, 0x7f110179

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v1, v1, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg61;

    iget-object v5, v2, Lg61;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v8, v8, Lg61;->a:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v2, Lg61;->h:Ljava/lang/String;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, v2, Lg61;->g:Li91;

    invoke-virtual {v5}, Li91;->l()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Luq0;

    invoke-direct {v5, v0, v2}, Luq0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;Lg61;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Lg61;->h:Ljava/lang/String;

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, v2, Lg61;->g:Li91;

    invoke-virtual {v5}, Li91;->l()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lvq0;

    invoke-direct {v5, v0, v2}, Lvq0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;Lg61;)V

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f110181

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    iget-object v14, v12, Lg61;->h:Ljava/lang/String;

    if-eqz v14, :cond_7

    goto :goto_4

    :cond_7
    iget-object v12, v12, Lg61;->g:Li91;

    invoke-virtual {v12}, Li91;->l()Ljava/lang/String;

    move-result-object v14

    :goto_4
    aput-object v14, v11, v2

    invoke-virtual {v1, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    iget-object v1, v1, Lg61;->b:Lg61$c;

    sget-object v8, Lg61$c;->h:Lg61$c;

    if-ne v1, v8, :cond_8

    const v1, 0x7f11017a

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v10, v13, v2}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v1

    goto :goto_5

    :cond_8
    const v1, 0x7f11017f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v10, v15, v2}, Loe1;->o(Landroid/content/res/Resources$Theme;IZ)I

    move-result v1

    :goto_5
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v1, Lrq0;

    invoke-direct {v1, v0}, Lrq0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f11017c

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lqq0;

    invoke-direct {v1, v0}, Lqq0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_a
    return-void

    :cond_b
    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iget-object v2, v2, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {v1, v2}, Lf61;->a(Landroid/telecom/Call;)V

    return-void
.end method

.method public n(C)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg61;->c:Landroid/telecom/Call;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lf61;->l(Landroid/telecom/Call;Ljava/lang/Character;)V

    :cond_0
    return-void
.end method

.method public o(Lg61;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_4

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$e;->a:[I

    iget-object v1, p1, Lg61;->b:Lg61$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    :goto_0
    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v0, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    invoke-virtual {v0, p1}, Lf61;->i(Lg61;)Lg61;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d0(Lg61;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object p1, p1, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    goto :goto_0

    :cond_4
    :goto_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lxq0;

    invoke-direct {v0, p0}, Lxq0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->b(Landroidx/fragment/app/FragmentActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->t()V

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    sget-object p1, Lr71$a;->w:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lv21;->c:Lv21;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr71$a;->o(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lv21;->valueOf(Ljava/lang/String;)Lv21;

    move-result-object p1

    invoke-virtual {p1}, Lv21;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    invoke-virtual {p1}, Lf61;->g()Landroid/telecom/Call;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    invoke-virtual {v0, p1, p0}, Lf61;->v(Landroid/telecom/Call;Le61;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v0, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg61;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object p1, p1, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->n:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->a0()V

    const-string p1, "sensor"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->o:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->p:Landroid/hardware/Sensor;

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->q:Landroid/os/PowerManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/ui/CallScreenLayout;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0, p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->setActivity(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0, p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->setCallScreenLayoutListener(Lcom/kedlin/cca/ui/CallScreenLayout$j;)V

    invoke-static {}, Lj71;->d()Lj71;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0, v1}, Lj71;->a(Lj71$a;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f110190

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060038

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextAlignment(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f110191

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x21

    invoke-virtual {v4, v3, v5, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f110555

    new-instance v4, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$a;

    invoke-direct {v4, p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f1101b0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_5
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030239

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k:Landroid/app/Dialog;

    const v3, 0x7f0d00a6

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    const v5, 0x7f0d0034

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    const v0, 0x7f0d00a7

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Window;->setGravity(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$b;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance p1, Lqc1;

    invoke-direct {p1, p0}, Lqc1;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->l:Lqc1;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_6

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->o:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->p:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_6
    return-void

    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    if-eqz v0, :cond_4

    invoke-static {}, Lj71;->d()Lj71;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0, v1}, Lj71;->g(Lj71$a;)V

    :cond_4
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->o:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_6
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->q0()V

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->o:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_9
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v0, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    sget-object v0, Lcom/kedlin/cca/core/CallService;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    invoke-virtual {p1}, Lf61;->g()Landroid/telecom/Call;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    invoke-virtual {v0, p1, p0}, Lf61;->v(Landroid/telecom/Call;Le61;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->m:Lf61;

    iget-object v0, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg61;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->e0(Lg61;)V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->o:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->g()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->o:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->p:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/kedlin/cca/ui/CallScreenLayout;->setActivity(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->d:Lg61;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg61;->b()V

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    const/4 v2, 0x1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->q:Landroid/os/PowerManager;

    if-eqz p1, :cond_4

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->q:Landroid/os/PowerManager;

    sget-object v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    :cond_1
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    iget-object p1, p1, Lcom/kedlin/cca/ui/CallScreenLayout;->B0:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$m;->d:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$m;->c:Lcom/kedlin/cca/ui/CallScreenLayout$m;

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->C()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->l:Lqc1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lqc1;->c()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->z()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->f:Lcom/kedlin/cca/ui/CallScreenLayout;

    sget-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->g:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/CallScreenLayout;->setAnimationState(Lcom/kedlin/cca/ui/CallScreenLayout$i;)V

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->l:Lqc1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lqc1;->b()V

    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public on_report_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 0

    const p1, 0x7f110168

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k()V

    return-void
.end method

.method public on_report_success()V
    .locals 2

    const v0, 0x7f110169

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->k()V

    return-void
.end method
