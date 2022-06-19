.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;
.source ""

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity<",
        "Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;",
        ">;",
        "Lcom/mopub/mobileads/MoPubView$BannerAdListener;"
    }
.end annotation


# static fields
.field public static final O:Ljava/lang/String;

.field public static P:Ljava/util/Timer;

.field public static Q:Landroid/app/AlertDialog;


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/LinearLayout;

.field public E:Landroid/widget/LinearLayout;

.field public F:Landroid/widget/LinearLayout;

.field public G:Landroid/widget/EditText;

.field public H:Landroid/widget/Spinner;

.field public I:Landroid/widget/CheckBox;

.field public J:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public K:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public L:Z

.field public M:Lnf;

.field public N:Landroid/content/BroadcastReceiver;

.field public g:Landroid/widget/RelativeLayout;

.field public h:D

.field public j:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ljt0;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lx81;

.field public o:Lq81;

.field public p:J

.field public q:Landroid/os/Handler;

.field public r:Ljava/lang/Runnable;

.field public s:Lcom/mopub/mobileads/MoPubView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->O:Ljava/lang/String;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->P:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;-><init>()V

    const-wide v0, 0x3fef0a3d70a3d70aL    # 0.97

    iput-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->h:D

    const-class v0, Ljt0;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k:Ljava/util/EnumSet;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->p:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->q:Landroid/os/Handler;

    new-instance v0, Lvs0;

    invoke-direct {v0, p0}, Lvs0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->r:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->s:Lcom/mopub/mobileads/MoPubView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->L:Z

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$a;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->N:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private synthetic A0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic C0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic E0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic G0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic I()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Q:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private synthetic I0(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->p:J

    return-void
.end method

.method public static synthetic J()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->P:Ljava/util/Timer;

    return-object v0
.end method

.method private synthetic K0(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const v0, 0x7f0a01ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic M0(Ljava/lang/Integer;Lmq0;Li91;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Ln91$a;->y:Ln91$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p2, Lmq0;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->o:Lq81;

    const-string v1, ""

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->n:Lx81;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->v:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->m:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Li91;->m()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->G:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->m:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->m:Ljava/lang/String;

    invoke-virtual {p3}, Li91;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p3}, Li91;->t()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->m:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->w:Landroid/widget/TextView;

    if-nez p1, :cond_6

    invoke-virtual {p3}, Li91;->m()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, Li91;->t()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Li91;->k()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f110485

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p3}, Li91;->t()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const v1, 0x7f110484

    :goto_5
    new-array p1, v3, [Ljava/lang/Object;

    iget-object p3, p2, Lmq0;->c:Ljava/lang/String;

    aput-object p3, p1, v2

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lr71$a;->d:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lr71$a;->g:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p2, Lmq0;->d:I

    invoke-static {p1}, Lo81;->L(I)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->n:Lx81;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->o:Lq81;

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget p3, p2, Lmq0;->a:I

    if-lez p3, :cond_c

    sget-object p3, Lcom/kedlin/cca/core/CCAService;->n:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_c

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->O:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/kedlin/cca/core/CCAService;->w:Ljava/lang/String;

    sget-object v0, Ln91$a;->p:Ln91$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p2, p2, Lmq0;->d:I

    if-eqz p2, :cond_b

    sget-object p3, Lcom/kedlin/cca/core/CCAService;->x:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->onNewIntent(Landroid/content/Intent;)V

    :cond_c
    :goto_6
    return-void
.end method

.method private synthetic O0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic Q(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->N()V

    return-void
.end method

.method public static synthetic Q0(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->P:Ljava/util/Timer;

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public static synthetic R0(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->P:Ljava/util/Timer;

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method private synthetic S(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->W0()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->i1()V

    return-void
.end method

.method private synthetic S0(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k:Ljava/util/EnumSet;

    sget-object p2, Ljt0;->h:Ljt0;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k:Ljava/util/EnumSet;

    sget-object v0, Ljt0;->j:Ljt0;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->I:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p2, v0

    :cond_0
    invoke-virtual {p2, p0}, Ljt0;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    return-void
.end method

.method private synthetic U(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->O()V

    return-void
.end method

.method private synthetic W(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->M()V

    return-void
.end method

.method private synthetic Y(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->X0()V

    return-void
.end method

.method private synthetic a0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->V0()V

    return-void
.end method

.method private synthetic c0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->a1()V

    return-void
.end method

.method private synthetic e0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0389

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->L()V

    return-void
.end method

.method private synthetic g0()V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->j1()V

    return-void
.end method

.method private synthetic i0(Lx81;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->n:Lx81;

    return-void
.end method

.method private synthetic k0(Lit0;)V
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$c;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g1()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->c1(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->d1()V

    :goto_0
    return-void
.end method

.method private synthetic m0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->e1()V

    :cond_0
    return-void
.end method

.method private synthetic o0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->K()V

    :cond_0
    return-void
.end method

.method private synthetic q0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic s0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->y:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f110484

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic u0(Landroid/util/Pair;)V
    .locals 1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Li91;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->U0(Li91;I)V

    return-void
.end method

.method private synthetic w0(Lq81;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->o:Lq81;

    return-void
.end method

.method private synthetic y0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const v0, 0x7f0d0020

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->d:I

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->b:Ljava/lang/Class;

    return-void
.end method

.method public synthetic B0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->A0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic D0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->C0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic F0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->E0(Ljava/lang/String;)V

    return-void
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->p:Lve;

    new-instance v1, Lbt0;

    invoke-direct {v1, p0}, Lbt0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->o:Lve;

    new-instance v1, Lcs0;

    invoke-direct {v1, p0}, Lcs0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->m:Lve;

    new-instance v1, Lht0;

    invoke-direct {v1, p0}, Lht0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->n:Lve;

    new-instance v1, Les0;

    invoke-direct {v1, p0}, Les0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->z:Lve;

    new-instance v1, Los0;

    invoke-direct {v1, p0}, Los0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->t:Lve;

    new-instance v1, Lms0;

    invoke-direct {v1, p0}, Lms0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->v:Lve;

    new-instance v1, Lks0;

    invoke-direct {v1, p0}, Lks0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->w:Lve;

    new-instance v1, Lxs0;

    invoke-direct {v1, p0}, Lxs0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->A:Lve;

    new-instance v1, Lts0;

    invoke-direct {v1, p0}, Lts0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->B:Lve;

    new-instance v1, Lps0;

    invoke-direct {v1, p0}, Lps0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->q:Lve;

    new-instance v1, Lss0;

    invoke-direct {v1, p0}, Lss0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->s:Lve;

    new-instance v1, Lis0;

    invoke-direct {v1, p0}, Lis0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->r:Lve;

    new-instance v1, Lhs0;

    invoke-direct {v1, p0}, Lhs0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->x:Lve;

    new-instance v1, Lls0;

    invoke-direct {v1, p0}, Lls0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->y:Lve;

    new-instance v1, Lds0;

    invoke-direct {v1, p0}, Lds0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->C:Lve;

    new-instance v1, Lfs0;

    invoke-direct {v1, p0}, Lfs0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public synthetic H0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->G0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic J0(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->I0(Ljava/lang/Long;)V

    return-void
.end method

.method public final K()V
    .locals 10

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljt0;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->I:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->G(Z)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->I:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->H(Z)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->I:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->I(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->o:Lq81;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v3, v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->h:Li91;

    invoke-virtual {v3}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->l:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lie1;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    move-object v3, v2

    check-cast v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->H:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, p0

    invoke-virtual/range {v3 .. v9}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->A(ILjava/lang/String;ZLcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->n:Lx81;

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->B(Lx81;Ljava/lang/String;Ljt0;)V

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    invoke-virtual {v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->z()V

    goto :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v2, v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->h:Li91;

    invoke-virtual {v2}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lie1;->h(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    invoke-virtual {v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->C()V

    :cond_0
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Ljt0;->b()I

    move-result v1

    const-string v3, "Value"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lw91$a;->V:Lw91$a;

    invoke-static {p0, v1, v2}, Lw91;->c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final L()V
    .locals 5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->n:Lx81;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lx81;->l:Lq71$g;

    sget-object v3, Lq71$g;->c:Lq71$g;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->o:Lq81;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lq81;->k:Lq71$g;

    sget-object v4, Lq71$g;->c:Lq71$g;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->L:Z

    if-nez v3, :cond_2

    iput-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->L:Z

    sget-object v3, Ljt0;->h:Ljt0;

    invoke-virtual {v3, p0}, Ljt0;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    sget-object v3, Ljt0;->k:Ljt0;

    invoke-virtual {v3, p0}, Ljt0;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    const v4, 0x7f080268

    invoke-virtual {v3, v4}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->E(I)V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->z:Landroid/widget/TextView;

    const v3, 0x7f110732

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->x:Landroid/widget/TextView;

    const v3, 0x7f110567

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->L:Z

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k:Ljava/util/EnumSet;

    sget-object v4, Ljt0;->k:Ljt0;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    sget-object v3, Ljt0;->j:Ljt0;

    invoke-virtual {v3, p0}, Ljt0;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    const v3, 0x7f080269

    invoke-virtual {v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->E(I)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->z:Landroid/widget/TextView;

    const v3, 0x7f1100e6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->x:Landroid/widget/TextView;

    const v3, 0x7f1100ad

    :goto_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->f1()V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->L:Z

    if-nez v0, :cond_4

    const v0, 0x7f1105d5

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic L0(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->K0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public M()V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->K()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final N()V
    .locals 1

    sget-object v0, Ljt0;->f:Ljt0;

    invoke-virtual {v0, p0}, Ljt0;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->M()V

    return-void
.end method

.method public synthetic N0(Ljava/lang/Integer;Lmq0;Li91;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->M0(Ljava/lang/Integer;Lmq0;Li91;)V

    return-void
.end method

.method public final O()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->n()V

    const v0, 0x7f1105de

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final P()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a03f9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0646

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a05c1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->C:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0685

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Y0()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0687

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0695

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0680

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a066e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a050b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0387

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->F:Landroid/widget/LinearLayout;

    const v0, 0x7f0a038a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->E:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0388

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->D:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a06a0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0690

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->H:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0373

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->I:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0289

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->G:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->D:Landroid/widget/LinearLayout;

    new-instance v1, Lqs0;

    invoke-direct {v1, p0}, Lqs0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->I:Landroid/widget/CheckBox;

    new-instance v1, Lat0;

    invoke-direct {v1, p0}, Lat0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a050c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lys0;

    invoke-direct {v1, p0}, Lys0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a034c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lus0;

    invoke-direct {v1, p0}, Lus0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldt0;

    invoke-direct {v1, p0}, Ldt0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a066c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Let0;

    invoke-direct {v1, p0}, Let0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->E:Landroid/widget/LinearLayout;

    new-instance v1, Lns0;

    invoke-direct {v1, p0}, Lns0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->F:Landroid/widget/LinearLayout;

    new-instance v1, Lgs0;

    invoke-direct {v1, p0}, Lgs0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic P0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->O0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic R(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Q(Landroid/view/View;)V

    return-void
.end method

.method public synthetic T(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->S(Landroid/view/View;)V

    return-void
.end method

.method public synthetic T0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->S0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public final U0(Li91;I)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Li91;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Li91;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$3;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$3;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "lookup"

    invoke-static {p1, p0, v0, v1}, Lcom/kedlin/cca/core/service/BackgroundWorker;->g(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic V(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->U(Landroid/view/View;)V

    return-void
.end method

.method public final V0()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a03f7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0271

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a03fa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a03f6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public W0()V
    .locals 6

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr71;->o(Z)Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0d016f

    const v3, 0x7f0a06a0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->j:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1101c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const-class v1, Li71;

    invoke-static {v0, v1}, Lka1;->d(Landroid/util/SparseArray;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li71;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->j:Landroid/widget/ArrayAdapter;

    iget-object v4, v4, Li71;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->H:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->j:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->H:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public synthetic X(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->W(Landroid/view/View;)V

    return-void
.end method

.method public final X0()V
    .locals 2

    sget-object v0, Ljt0;->k:Ljt0;

    invoke-virtual {v0, p0}, Ljt0;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->G:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f1106e2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->M()V

    return-void
.end method

.method public final Y0()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->h:D

    mul-double v0, v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a01ee

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic Z(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Y(Landroid/view/View;)V

    return-void
.end method

.method public final Z0()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a03f7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a04c8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a03fa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0388

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a038a

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final a1()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a03f7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0271

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a03fa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a03f6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic b0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->a0(Landroid/view/View;)V

    return-void
.end method

.method public final b1()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->L:Z

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a02bf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lzs0;

    invoke-direct {v0, p0}, Lzs0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final c1(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Z0()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0683

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f11048c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public synthetic d0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->c0(Landroid/view/View;)V

    return-void
.end method

.method public final d1()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->A:Landroid/widget/TextView;

    const v1, 0x7f11059f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Z0()V

    return-void
.end method

.method public final e1()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    const v1, 0x7f080268

    invoke-virtual {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->E(I)V

    return-void
.end method

.method public synthetic f0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->e0(Landroid/view/View;)V

    return-void
.end method

.method public final f1()V
    .locals 6

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k:Ljava/util/EnumSet;

    sget-object v1, Ljt0;->h:Ljt0;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v0, :cond_0

    const v2, 0x7f1106d6

    goto :goto_0

    :cond_0
    const v2, 0x7f1106e0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1106d5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    if-eqz v0, :cond_1

    const v0, 0x7f1106d8

    goto :goto_1

    :cond_1
    const v0, 0x7f1106d9

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1106d7

    sget-object v2, Ljs0;->a:Ljs0;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1106d4

    sget-object v2, Lct0;->a:Lct0;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Q:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :try_start_0
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->P:Ljava/util/Timer;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$b;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Q:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :goto_2
    return-void
.end method

.method public final g1()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->A:Landroid/widget/TextView;

    const v1, 0x7f110736

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Z0()V

    return-void
.end method

.method public synthetic h0()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g0()V

    return-void
.end method

.method public final h1()V
    .locals 2

    const v0, 0x7f0a0409

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->s:Lcom/mopub/mobileads/MoPubView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onStart(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->s:Lcom/mopub/mobileads/MoPubView;

    const-string v1, "2c96e4b2102a47169e23da5ddf44a3cb"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->s:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->s:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    return-void
.end method

.method public i1()V
    .locals 6

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->n:Lx81;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v3, v2, Lx81;->l:Lq71$g;

    sget-object v4, Lq71$g;->c:Lq71$g;

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, v2, Lx81;->l:Lq71$g;

    sget-object v3, Lq71$g;->b:Lq71$g;

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->o:Lq81;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    iget-object v3, v2, Lq81;->k:Lq71$g;

    sget-object v4, Lq71$g;->c:Lq71$g;

    if-ne v3, v4, :cond_2

    return-void

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, v2, Lq81;->k:Lq71$g;

    sget-object v3, Lq71$g;->b:Lq71$g;

    if-ne v2, v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/kedlin/cca/core/CCAService;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-ne v0, v2, :cond_4

    return-void

    :cond_4
    if-eqz v0, :cond_5

    sget-object v2, Lq71$g;->c:Lq71$g;

    invoke-static {v2}, Lr71;->f(Lq71$g;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    if-nez v0, :cond_9

    sget-object v2, Lq71$g;->b:Lq71$g;

    invoke-static {v2}, Lr71;->f(Lq71$g;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v0, :cond_7

    const v3, 0x7f110723

    goto :goto_0

    :cond_7
    const v3, 0x7f110726

    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v0, :cond_8

    const v0, 0x7f11072a

    goto :goto_1

    :cond_8
    const v0, 0x7f11072e

    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f110531

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f110760

    new-instance v3, Lrs0;

    invoke-direct {v3, p0}, Lrs0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_9
    return-void
.end method

.method public synthetic j0(Lx81;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->i0(Lx81;)V

    return-void
.end method

.method public final j1()V
    .locals 11

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->p:J

    sub-long v0, v4, v2

    const-wide/32 v9, 0xea60

    cmp-long v6, v0, v9

    if-gez v6, :cond_0

    const v0, 0x7f1103cc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/32 v6, 0xea60

    const/high16 v8, 0x40000

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic l0(Lit0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k0(Lit0;)V

    return-void
.end method

.method public synthetic n0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->m0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->b(Landroidx/fragment/app/FragmentActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->s:Lcom/mopub/mobileads/MoPubView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->s:Lcom/mopub/mobileads/MoPubView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->h:D

    mul-double v0, v0, v2

    double-to-int p1, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f1200f7

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->d:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/view/Window;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->P()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->W0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {}, Lfa1;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lfa1;->r()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->h1()V

    goto :goto_0

    :cond_0
    const p1, 0x7f0a0409

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->P:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Q:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->Q:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->s:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    invoke-static {p0}, Lcom/mopub/common/MoPub;->onDestroy(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->y(Landroid/content/Intent;Landroid/widget/TextView;)V

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->q(Landroid/content/Intent;)Li71;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->L:Z

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->I:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    const v0, 0x7f110424

    goto :goto_2

    :cond_2
    const v0, 0x7f110425

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->s()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->b1()V

    :cond_3
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    invoke-virtual {v2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->r(Landroid/content/Intent;)Ln91$a;

    move-result-object p1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->g:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0389

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v0, :cond_4

    sget-object v0, Ln91$a;->p:Ln91$a;

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;

    iget-boolean p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallViewModel;->D:Z

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->L:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->M:Lnf;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lnf;->e(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->onResume()V

    invoke-static {p0}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->M:Lnf;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Ll31;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->M:Lnf;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lnf;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->j1()V

    return-void
.end method

.method public on_lookup_success(Li91;Lmq0;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lws0;

    invoke-direct {v1, p0, p3, p2, p1}, Lws0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;Ljava/lang/Integer;Lmq0;Li91;)V

    const-wide/16 p1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic p0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->o0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic r0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic t0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->s0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic v0(Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->u0(Landroid/util/Pair;)V

    return-void
.end method

.method public synthetic x0(Lq81;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->w0(Lq81;)V

    return-void
.end method

.method public synthetic z0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->y0(Ljava/lang/Boolean;)V

    return-void
.end method
