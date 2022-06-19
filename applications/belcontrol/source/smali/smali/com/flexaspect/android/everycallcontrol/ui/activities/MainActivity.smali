.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;
.super Lcom/kedlin/cca/ui/CCAFragmentActivity;
.source ""

# interfaces
.implements Lyb1;
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
.implements Lm91$b;
.implements Lua1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;,
        Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;
    }
.end annotation


# static fields
.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field public static N:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/Boolean;

.field public B:Z

.field public C:Landroid/content/Intent;

.field public D:Landroid/app/AlertDialog;

.field public E:Landroid/app/AlertDialog;

.field public F:Landroid/app/AlertDialog;

.field public G:Lcom/kedlin/cca/ui/startwizard/WizardView;

.field public H:Lme1;

.field public I:Lkv0;

.field public J:Landroid/content/BroadcastReceiver;

.field public a:Z

.field public b:Z

.field public c:Landroid/widget/TextView;

.field public d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

.field public f:Landroid/app/Dialog;

.field public g:Z

.field public h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public j:Landroid/os/Bundle;

.field public k:Liv0;

.field public l:Landroidx/drawerlayout/widget/DrawerLayout;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public o:Landroid/os/Handler;

.field public p:Landroidx/fragment/app/Fragment;

.field public q:Z

.field public r:Z

.field public s:Landroid/app/Dialog;

.field public t:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public u:Lcom/mopub/mobileads/MoPubView;

.field public v:Lcom/mopub/mobileads/MoPubInterstitial;

.field public w:Z

.field public x:Z

.field public y:Lnd$h;

.field public z:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".BANNER_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->K:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-class v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;

    aput-object v8, v0, v1

    const/4 v1, 0x7

    const-class v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    aput-object v8, v0, v1

    const/16 v1, 0x8

    const-class v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    aput-object v8, v0, v1

    const/16 v1, 0x9

    const-class v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;

    aput-object v8, v0, v1

    const/16 v1, 0xa

    const-class v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

    aput-object v8, v0, v1

    const/16 v1, 0xb

    const-class v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallGroupsFragment;

    aput-object v8, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->L:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Class;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    aput-object v1, v0, v2

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;

    aput-object v1, v0, v3

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    aput-object v1, v0, v4

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    aput-object v1, v0, v5

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->N:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->a:Z

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->g:Z

    sget-object v1, Liv0;->d:Liv0;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->p:Landroidx/fragment/app/Fragment;

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->q:Z

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->r:Z

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->w:Z

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->x:Z

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;

    invoke-direct {v2, p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;)V

    iput-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->z:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->A:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->B:Z

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->C:Landroid/content/Intent;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->E:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->F:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    new-instance v0, Lme1;

    invoke-direct {v0}, Lme1;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->H:Lme1;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->I:Lkv0;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->J:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic A(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Liv0;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    return-object p0
.end method

.method public static synthetic B(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->B:Z

    return p1
.end method

.method private synthetic B0()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10f8

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object v0, Lr71$a;->j:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    return-void
.end method

.method public static synthetic C(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->h:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic D(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Y0(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic D0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lbx0;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    const v1, 0x7f0a02a9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcx0;->b:Lcx0;

    invoke-direct {p1, p0, v0, v1}, Lbx0;-><init>(Landroid/content/Context;Landroid/view/View;Lcx0;)V

    invoke-virtual {p1}, Lbx0;->I()V

    return-void
.end method

.method public static synthetic E(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->o:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic F(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Liv0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->b1(Liv0;)V

    return-void
.end method

.method private synthetic F0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lbx0;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    const v1, 0x7f0a02a9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcx0;->c:Lcx0;

    invoke-direct {p1, p0, v0, v1}, Lbx0;-><init>(Landroid/content/Context;Landroid/view/View;Lcx0;)V

    invoke-virtual {p1}, Lbx0;->I()V

    return-void
.end method

.method public static synthetic G(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->e1(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic H(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->W()V

    return-void
.end method

.method private synthetic H0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lbx0;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    const v1, 0x7f0a02a9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcx0;->d:Lcx0;

    invoke-direct {p1, p0, v0, v1}, Lbx0;-><init>(Landroid/content/Context;Landroid/view/View;Lcx0;)V

    invoke-virtual {p1}, Lbx0;->I()V

    return-void
.end method

.method public static synthetic I(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->g:Z

    return p0
.end method

.method public static synthetic J(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->g:Z

    return p1
.end method

.method private synthetic J0(ZLandroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->V0()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lr71;->C()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Q(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public static synthetic K()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->L:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic L(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic L0()V
    .locals 2

    sget-object v0, Lr71$a;->d1:Lr71$a;

    invoke-static {}, Lfa1;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr71$a;->m(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic M0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lqw0;

    invoke-direct {p1}, Lqw0;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    const-string v1, "premium_dlg"

    invoke-virtual {p1, v0, v1}, Lqw0;->show(Lnd;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic O0()V
    .locals 3

    const v0, 0x7f0a02c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v2, Lr71$a;->f:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x30

    :goto_0
    add-int/lit8 v2, v2, 0x32

    invoke-static {v2}, Loe1;->c(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic Q0(ZLandroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lr71$a;->d:Lr71$a;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p2, Lcom/kedlin/cca/core/CCAService;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lfa1;->P(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->finish()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    return-void
.end method

.method public static R(Landroid/content/Context;)V
    .locals 9

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Dialog not inflated"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x7f0a06b3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$b;

    invoke-direct {v1, v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$b;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f110295

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f1101b0

    invoke-virtual {p0, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f110294

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {v0}, Loe1;->c(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v0}, Loe1;->c(I)I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private synthetic S0(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lie1;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "market://details?id=com.flexaspect.android.everycallcontrol"

    invoke-static {p0, p1}, Lie1;->i(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1102f9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    return-void
.end method

.method public static X0()Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->N:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    :goto_0
    return-object v0
.end method

.method private synthetic Y(Lvt0;)V
    .locals 4

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$c;->d:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "DIRECT"

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-class p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CCHDevicePromoFragment;

    goto/16 :goto_1

    :cond_1
    invoke-static {p1}, Loe1;->y(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.callcontrolhome"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "https://www.callcontrol.com/terms-and-privacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p0}, Lie1;->j(Landroid/app/Activity;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_4
    const-class p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreAboutFragment;

    goto :goto_1

    :pswitch_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->m:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;

    goto :goto_1

    :pswitch_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->m:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    invoke-virtual {p0, p0, v0, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    goto :goto_2

    :pswitch_7
    const-class p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;

    goto :goto_1

    :pswitch_8
    const-class p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

    goto :goto_1

    :pswitch_9
    const-string p1, "com.moez.QKSMS"

    invoke-static {p1}, Lsh0;->h(Ljava/lang/String;)Lsh0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lsh0;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lsh0;->o()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsh0;->s(Z)V

    goto :goto_2

    :cond_2
    const-class p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    goto :goto_1

    :pswitch_a
    invoke-static {p0}, Lu91;->i(Landroid/app/Activity;)V

    goto :goto_2

    :pswitch_b
    const-class p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;

    goto :goto_1

    :pswitch_c
    const-class p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    :goto_1
    invoke-virtual {p0, p0, p1, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :goto_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)V

    sget-object p1, Lr71$a;->n0:Lr71$a;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr71$a;->m(Ljava/lang/Integer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static Y0(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$16;

    invoke-direct {v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$16;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string p0, "feedback"

    invoke-static {p0, v0, v1, v3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->g(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    const p0, 0x7f1104fa

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic a0(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->x:Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->g1()V

    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    const-string v1, "3ae9bba6b8244d9ab634d3e048bc582a"

    invoke-direct {v0, p1, v1}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    return-void
.end method

.method private synthetic c0()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->o:Landroid/os/Handler;

    new-instance v1, Lxr0;

    invoke-direct {v1, p0}, Lxr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic e0()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->o:Landroid/os/Handler;

    new-instance v1, Lhr0;

    invoke-direct {v1, p0}, Lhr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic g0(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p1, Lta1;->L:Lta1;

    invoke-virtual {p1, p0}, Lta1;->i(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic i0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic j0()V
    .locals 3

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1102b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lyr0;->a:Lyr0;

    const v2, 0x7f110555

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->c1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->b:Z

    return-void
.end method

.method private synthetic l0()V
    .locals 8

    sget-object v0, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->q:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    :cond_0
    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->q:Z

    invoke-static {}, Lr71;->p()I

    move-result v0

    sget-object v1, Lr71$a;->S:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-static {}, Laa1;->n()V

    sget-object v1, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    iget-boolean v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->q:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    sget-object v0, Lkt0;->c:Lkt0;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lr71$a;->R0:Lr71$a;

    invoke-virtual {v4}, Lr71$a;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    sget-object v0, Lkt0;->a:Lkt0;

    :goto_0
    invoke-static {p0, v0}, Loe1;->T(Landroid/content/Context;Lkt0;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    sget-object v0, Lkt0;->b:Lkt0;

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->q:Z

    if-nez v1, :cond_4

    if-gtz v0, :cond_4

    sget-object v0, Lkt0;->f:Lkt0;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {}, Lbc1;->a()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->W0()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->onResume()V

    return-void
.end method

.method private synthetic n0(Landroid/content/DialogInterface;)V
    .locals 1

    sget-object p1, Lta1;->L:Lta1;

    invoke-virtual {p1, p0}, Lta1;->i(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    :cond_0
    return-void
.end method

.method private synthetic p0(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p1, Lta1;->L:Lta1;

    invoke-virtual {p1, p0}, Lta1;->i(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    :cond_0
    return-void
.end method

.method private synthetic r0(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p1, Lta1;->L:Lta1;

    invoke-virtual {p1, p0}, Lta1;->i(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    :cond_0
    return-void
.end method

.method private synthetic t0(Landroid/content/DialogInterface;)V
    .locals 1

    sget-object p1, Lta1;->L:Lta1;

    invoke-virtual {p1, p0}, Lta1;->i(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    :cond_0
    return-void
.end method

.method private synthetic v0(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object p1

    invoke-static {p0, p1}, Loe1;->w0(Landroid/app/Activity;Lq71$a;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->f:Landroid/app/Dialog;

    return-void
.end method

.method private synthetic x0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lbx0;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    const v1, 0x7f0a02a9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcx0;->a:Lcx0;

    invoke-direct {p1, p0, v0, v1}, Lbx0;-><init>(Landroid/content/Context;Landroid/view/View;Lcx0;)V

    invoke-virtual {p1}, Lbx0;->I()V

    return-void
.end method

.method private synthetic z0()V
    .locals 3

    invoke-static {}, Lfa1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lfa1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lfa1;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lfa1;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lfa1;->M(Landroid/app/Activity;)Z

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lfa1;->e()Z

    move-result v0

    const v1, 0x7f11041d

    if-eqz v0, :cond_1

    invoke-static {}, Lfa1;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lfa1;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1100ba

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1100b9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lur0;

    invoke-direct {v2, p0}, Lur0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lmr0;

    invoke-direct {v2, p0}, Lmr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lfa1;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lfa1;->t()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lfa1;->A(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lbs0;

    invoke-direct {v0, p0}, Lbs0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-static {p0, v0}, Loe1;->a0(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lfa1;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1100b8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1100b7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ldr0;

    invoke-direct {v2, p0}, Ldr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lsr0;

    invoke-direct {v2, p0}, Lsr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->F:Landroid/app/AlertDialog;

    goto :goto_1

    :cond_3
    sget-object v0, Lta1;->L:Lta1;

    invoke-virtual {v0, p0}, Lta1;->i(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic A0()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->z0()V

    return-void
.end method

.method public synthetic C0()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->B0()V

    return-void
.end method

.method public synthetic E0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic G0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->F0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic I0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->H0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic K0(ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->J0(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public M()V
    .locals 3

    invoke-static {p0}, Lb91;->d(Landroid/content/Context;)V

    sget-object v0, Lr71$a;->F0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lta1;->H:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr71$a;->G0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$3;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "check_adv_id"

    invoke-static {v2, p0, v0, v1}, Lcom/kedlin/cca/core/service/BackgroundWorker;->h(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    return-void
.end method

.method public final N()V
    .locals 4

    invoke-static {}, Lfa1;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lfa1;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lr71$a;->X:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_1
    sget-object v0, Lr71$a;->X:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {v2}, Loe1;->W(Z)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/kedlin/cca/core/CallService;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    sget-object v1, Lr71$a;->v:Lr71$a;

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic N0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M0(Landroid/view/View;)V

    return-void
.end method

.method public final O()V
    .locals 7

    invoke-static {}, Lfa1;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lfa1;->t()Z

    move-result v0

    sget-object v1, Lr71$a;->W:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lr71$a;->Z:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_1
    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    invoke-static {}, Lfa1$e;->j()I

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p0}, Lb91;->d(Landroid/content/Context;)V

    invoke-static {}, Lb91;->q()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x1

    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v1, Lr71$a;->Z:Lr71$a;

    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lr71$a;->o(Ljava/lang/String;)V

    sget-object v1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v1, v5}, Lr71$a;->k(Ljava/lang/Boolean;)V

    if-nez v0, :cond_4

    invoke-virtual {v4}, Lq71$a;->d()Lq71$a;

    move-result-object v1

    sget-object v5, Lq71$a;->g:Lq71$a;

    if-eq v1, v5, :cond_3

    invoke-virtual {v4}, Lq71$a;->d()Lq71$a;

    move-result-object v1

    sget-object v6, Lq71$a;->d:Lq71$a;

    if-ne v1, v6, :cond_4

    :cond_3
    invoke-static {}, Lfa1;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lfa1;->z()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v5}, Lq71$a;->e(Lq71$a;)V

    move-object v4, v5

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    sget-object v1, Lq71$a;->f:Lq71$a;

    invoke-static {v1}, Lq71$a;->e(Lq71$a;)V

    :cond_5
    :goto_0
    :try_start_0
    invoke-static {}, Lfa1$e;->i()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    invoke-static {v4}, Lq71$a;->e(Lq71$a;)V

    sget-object v1, Lr71$a;->Y:Lr71$a;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    invoke-static {}, Lfa1;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lfa1;->z()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-static {}, Lfa1;->d()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    invoke-static {p0, v4}, Loe1;->w0(Landroid/app/Activity;Lq71$a;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->f:Landroid/app/Dialog;

    :cond_9
    :goto_2
    const v1, 0x7f0a065b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    if-nez v0, :cond_b

    invoke-static {}, Lfa1;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lfa1;->z()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    sget-object v2, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const/16 v3, 0x8

    :cond_c
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    sget-object v1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v1

    invoke-virtual {v1}, Lq71$a;->d()Lq71$a;

    move-result-object v1

    sget-object v2, Lq71$a;->d:Lq71$a;

    if-ne v1, v2, :cond_f

    if-eqz v0, :cond_e

    invoke-static {}, Lfa1;->d()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lr71$a;->v:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    sget-object v0, Lq71$a;->g:Lq71$a;

    invoke-static {v0}, Lq71$a;->e(Lq71$a;)V

    :cond_f
    return-void
.end method

.method public final P()V
    .locals 3

    sget-object v0, Lr71$a;->G0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lta1;->H:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lfa1;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lr71$a;->I0:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$7;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "frw"

    invoke-static {v2, p0, v0, v1}, Lcom/kedlin/cca/core/service/BackgroundWorker;->g(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic P0()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->O0()V

    return-void
.end method

.method public final Q(Landroid/os/Bundle;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lfa1;->O(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v0, Lta1;->L:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lbc1;->a()V

    :cond_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    const v1, 0x7f0a0392

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->m:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0393

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lut0;

    new-instance v4, Las0;

    invoke-direct {v4, p0}, Las0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-direct {v3, v4}, Lut0;-><init>(Lrt0;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$f;

    invoke-direct {v3, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroidx/drawerlayout/widget/DrawerLayout$d;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->h:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->h:Landroid/util/SparseArray;

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "fragmentsState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->j:Landroid/os/Bundle;

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->j:Landroid/os/Bundle;

    if-nez p1, :cond_4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->j:Landroid/os/Bundle;

    sget-object p1, Lr71$a;->n0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->e()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    invoke-static {}, Liv0;->values()[Liv0;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_3

    invoke-static {}, Liv0;->values()[Liv0;

    move-result-object v1

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    :cond_3
    const/4 v2, 0x1

    :cond_4
    sget-object p1, Lr71$a;->f:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Liv0;->g:Liv0;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    :cond_5
    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    sget-object v1, Liv0;->g:Liv0;

    if-ne p1, v1, :cond_6

    sget-object p1, Liv0;->d:Liv0;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    :cond_6
    if-eqz v2, :cond_8

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->T(Liv0;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_7

    sget-object p1, Liv0;->f:Liv0;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->T(Liv0;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->e1(Landroidx/fragment/app/Fragment;)V

    sget-object p1, Lr71$a;->n0:Lr71$a;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lr71$a;->m(Ljava/lang/Integer;)V

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object p1

    invoke-virtual {p1}, Lnd;->e0()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    invoke-virtual {p1, v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->o(Liv0;)Liv0;

    :cond_9
    invoke-virtual {v0}, Lta1;->d()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->onResume()V

    :cond_a
    return-void
.end method

.method public synthetic R0(ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Q0(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public S()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->e()V

    return-void
.end method

.method public T(Liv0;)Landroidx/fragment/app/Fragment;
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->o(Liv0;)Liv0;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->h:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    const-string v3, "fragment ID "

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v1

    :cond_2
    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;-><init>()V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;-><init>()V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;-><init>()V

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->h:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " created"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic T0(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->S0(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public U()Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object v0
.end method

.method public U0(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    sget-object v0, Lr71$a;->H:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Le81;->i()V

    :cond_2
    sget-object v0, Lm91$c;->j:Lm91$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->H:Lme1;

    invoke-virtual {v0}, Lme1;->e()V

    const v0, 0x7f1103e5

    invoke-static {v0}, Lbc1;->e(I)V

    invoke-static {}, Lr71;->C()V

    sget-object v0, Lw91$a;->q:Lw91$a;

    invoke-static {p0, v0}, Lw91;->b(Ljava/lang/Object;Lw91$a;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Setup Language"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lw91$a;->v:Lw91$a;

    invoke-static {p0, v0, v1}, Lw91;->c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V

    invoke-static {}, Lo71;->d()V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Q(Landroid/os/Bundle;)V

    return-void
.end method

.method public V()V
    .locals 4

    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "hideAdMobBanner"

    invoke-static {p0, v1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a02c9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x30

    invoke-static {v3}, Loe1;->c(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->W()V

    :cond_2
    :goto_0
    return-void
.end method

.method public V0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->r:Z

    sget-object v0, Lta1;->L:Lta1;

    invoke-virtual {v0, p0}, Lta1;->i(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->U0(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final W()V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1}, Lnd;->Y(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    sget-object v2, Lr71$a;->f:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CCHDevicePromoFragment;

    if-nez v2, :cond_2

    instance-of v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->q()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->e()V

    :goto_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->h()Z

    move-result v0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    const/16 v0, 0x30

    invoke-static {v0}, Loe1;->c(I)I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final W0()V
    .locals 2

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->h1()V

    return-void

    :cond_0
    invoke-static {}, Lfa1;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lfa1;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/mopub/common/SdkConfiguration$Builder;

    const-string v1, "61c66035ec4a48f18443b05d570aba6e"

    invoke-direct {v0, v1}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object v0

    invoke-virtual {p0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->X(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->x:Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->g1()V

    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    const-string v1, "3ae9bba6b8244d9ab634d3e048bc582a"

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final X(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Lcom/mopub/common/SdkInitializationListener;
    .locals 1

    new-instance v0, Ltr0;

    invoke-direct {v0, p0, p1}, Ltr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    return-object v0
.end method

.method public synthetic Z(Lvt0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Y(Lvt0;)V

    return-void
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->setBages()V

    return-void
.end method

.method public final a1(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    if-eqz v0, :cond_1

    sget-object p1, Liv0;->f:Liv0;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->b1(Liv0;)V

    goto :goto_1

    :cond_1
    instance-of p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    if-eqz p1, :cond_2

    sget-object p1, Liv0;->d:Liv0;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->j:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b0(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->a0(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    return-void
.end method

.method public final b1(Liv0;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Liv0;->a:Z

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    sget-object v0, Lr71$a;->n0:Lr71$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr71$a;->m(Ljava/lang/Integer;)V

    return-void
.end method

.method public final c1()V
    .locals 4

    const v0, 0x7f0801ea

    invoke-static {p0, v0}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    sget-object v2, Lvt0;->d:Lvt0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :cond_0
    sget-object v1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Ljr0;

    invoke-direct {v3, p0}, Ljr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    sget-object v2, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const v1, 0x7f060199

    invoke-static {p0, v1}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f1103e3

    goto :goto_2

    :cond_4
    :goto_1
    const v1, 0x7f060197

    invoke-static {p0, v1}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f1103b0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic d0()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->c0()V

    return-void
.end method

.method public final d1()V
    .locals 5

    const v0, 0x7f0a026a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInEditMode()Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    const v0, 0x7f0a0692

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0a06a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x9cce

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "2.12.1"

    aput-object v3, v2, v1

    const-string v1, "v%d(%s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->c1()V

    return-void
.end method

.method public e(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->j:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final e1(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const v0, 0x7f0a02f6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v1}, Lnd;->K0(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-virtual {v0}, Lnd;->j()Ltd;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->p:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ltd;->l(Landroidx/fragment/app/Fragment;)Ltd;

    iput-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->p:Landroidx/fragment/app/Fragment;

    :cond_1
    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1, p1}, Ltd;->q(ILandroidx/fragment/app/Fragment;)Ltd;

    invoke-virtual {v0, p1}, Ltd;->g(Landroidx/fragment/app/Fragment;)Ltd;

    const v1, 0x7f010024

    const v2, 0x7f010026

    invoke-virtual {v0, v1, v2}, Ltd;->s(II)Ltd;

    invoke-virtual {v0}, Ltd;->i()I

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->p:Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->y:Lnd$h;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lnd$h;->a()V

    :cond_2
    return-void
.end method

.method public f(Lta1;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " granted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$c;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V

    sget-object p1, Lm91$c;->d:Lm91$c;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p0, p1, v2}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    sget-object p1, Lm91$c;->j:Lm91$c;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p0, p1, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    :goto_0
    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V

    invoke-static {}, Lz91;->i()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V

    invoke-static {}, Laa1;->i()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V

    iget-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->r:Z

    if-nez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {p1, v1}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0

    :cond_3
    invoke-static {}, Laa1;->i()V

    sget-object p1, Lm91$c;->d:Lm91$c;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p0, p1, v2}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    sget-object p1, Lm91$c;->j:Lm91$c;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p0, p1, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    goto :goto_0

    :goto_1
    return v0
.end method

.method public synthetic f0()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->e0()V

    return-void
.end method

.method public f1()V
    .locals 9

    invoke-static {}, Lq71$f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    const-string v1, "prompt"

    invoke-virtual {v0, v1}, Lnd;->Z(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->l()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    new-instance v2, Lz81;

    invoke-direct {v2}, Lz81;-><init>()V

    invoke-virtual {v2}, Lz81;->E()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    :cond_4
    new-instance v4, Lz81;

    invoke-direct {v4}, Lz81;-><init>()V

    invoke-virtual {v4, v2}, Lz81;->k(Landroid/database/Cursor;)Ljava/lang/Object;

    check-cast v4, Lz81;

    sget-object v5, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$c;->b:[I

    iget-object v6, v4, Lz81;->f:Lw91$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x5

    if-eq v5, v7, :cond_7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_6

    if-eq v5, v6, :cond_6

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    goto :goto_1

    :cond_5
    iget v4, v4, Lz81;->h:I

    if-lt v4, v8, :cond_a

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->j:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    :goto_0
    invoke-static {v0, v4}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->o(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;I)Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget v4, v4, Lz81;->h:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_7
    iget v4, v4, Lz81;->h:I

    if-ne v4, v6, :cond_8

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_8

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->m:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    goto :goto_0

    :cond_8
    if-eq v4, v7, :cond_9

    if-lt v4, v8, :cond_a

    :cond_9
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->h:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    goto :goto_0

    :cond_a
    :goto_1
    if-nez v0, :cond_b

    if-lt v3, v8, :cond_b

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->k:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    invoke-static {v0, v3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->o(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;I)Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    move-result-object v0

    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lfd;->show(Lnd;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    invoke-static {p0}, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->c(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final g1()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a008b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d0105

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0409

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onStart(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    const-string v1, "61c66035ec4a48f18443b05d570aba6e"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    return-void
.end method

.method public h(Lta1;)Z
    .locals 4

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$c;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f1104d0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " IS DENIED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const p1, 0x7f1104d4

    goto :goto_0

    :cond_2
    const p1, 0x7f1104cf

    :goto_0
    invoke-static {p1, p0}, Loe1;->g0(ILandroid/app/Activity;)V

    goto :goto_1

    :cond_3
    invoke-static {v1, p0}, Loe1;->g0(ILandroid/app/Activity;)V

    :goto_1
    return v2
.end method

.method public synthetic h0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->g0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public h1()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->w:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lfa1;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->W()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->o:Landroid/os/Handler;

    new-instance v1, Lzr0;

    invoke-direct {v1, p0}, Lzr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->o:Landroid/os/Handler;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$h;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$h;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->V()V

    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object p2, Lm91$c;->d:Lm91$c;

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lr71;->A()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    :cond_0
    sget-object p2, Lm91$c;->j:Lm91$c;

    if-eq p1, p2, :cond_2

    invoke-static {}, Lbc1;->a()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->c1()V

    sget-object p2, Lm91$c;->f:Lm91$c;

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->b:Z

    if-eqz p1, :cond_1

    new-instance p1, Lqr0;

    invoke-direct {p1, p0}, Lqr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->W0()V

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " notification from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance p1, Lwr0;

    invoke-direct {p1, p0}, Lwr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i1()V
    .locals 6

    sget-object v0, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr71$a;->t1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    sget-object v1, Lkt0;->d:Lkt0;

    invoke-static {p0, v1}, Loe1;->T(Landroid/content/Context;Lkt0;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v0, Lr71$a;->u1:Lr71$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr71$a;->n(Ljava/lang/Long;)V

    :cond_1
    sget-object v0, Lr71$a;->u1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->g()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr71$a;->n(Ljava/lang/Long;)V

    sget-object v0, Lkt0;->f:Lkt0;

    invoke-static {p0, v0}, Loe1;->T(Landroid/content/Context;Lkt0;)V

    :cond_2
    return-void
.end method

.method public final j1()V
    .locals 1

    sget-object v0, Lr71$a;->L0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Llm1;->a()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/core/CCAApplication;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/kedlin/cca/core/CCAApplication;->j()V

    return-void
.end method

.method public synthetic k0()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->j0()V

    return-void
.end method

.method public k1()V
    .locals 4

    invoke-static {}, Lr71;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lr71;->B()Z

    move-result v0

    new-instance v1, Lkr0;

    invoke-direct {v1, p0, v0}, Lkr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Z)V

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v0, :cond_3

    const v3, 0x7f1106ba

    goto :goto_0

    :cond_3
    const v3, 0x7f1106bb

    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v0, :cond_4

    const v0, 0x7f1106b9

    goto :goto_1

    :cond_4
    const v0, 0x7f1106bc

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1106c2

    new-instance v3, Lpr0;

    invoke-direct {v3, p0, v1}, Lpr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1106c1

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    sget-object v0, Lm91$c;->d:Lm91$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    return-void
.end method

.method public l1()V
    .locals 2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->h1()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lr71$a;->f:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public synthetic m0()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l0()V

    return-void
.end method

.method public synthetic o0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->n0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/16 v1, 0x10f8

    if-ne p1, v1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-le p1, p2, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lr71$a;->j:Lr71$a;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x10f6

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v1, :cond_5

    invoke-static {}, Lfa1;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lfa1;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->a:Z

    :cond_2
    sget-object p1, Lta1;->L:Lta1;

    invoke-virtual {p1, p0}, Lta1;->i(Landroid/app/Activity;)Z

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lta1;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->M()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    return-void

    :cond_3
    if-ne p2, v3, :cond_4

    iget-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->a:Z

    if-eqz p1, :cond_4

    invoke-static {v2}, Loe1;->W(Z)V

    :cond_4
    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->a:Z

    return-void

    :cond_5
    const/16 v1, 0x1092

    if-ne p1, v1, :cond_7

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    if-nez p2, :cond_6

    new-instance p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$i;

    invoke-direct {p1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$i;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-static {p0, p1}, Loe1;->d0(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    :goto_0
    return-void

    :cond_7
    if-ne p1, v1, :cond_8

    if-ne p2, v3, :cond_8

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :cond_8
    invoke-static {p1, p2, p3}, Lv91;->g(IILandroid/content/Intent;)V

    invoke-static {p1, p2, p3}, Lta1;->b(IILandroid/content/Intent;)V

    const/high16 v0, 0x10000

    sub-int v1, p1, v0

    :goto_1
    move v4, v1

    :cond_9
    if-lez v1, :cond_a

    sub-int/2addr v1, v0

    if-lez v1, :cond_9

    goto :goto_1

    :cond_a
    const/16 v0, 0x271b

    if-ne p1, v0, :cond_b

    move v4, p1

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    invoke-static {p1, p2, p3}, Lfa1;->s(IILandroid/content/Intent;)Z

    move-result v0

    const-string v1, "cca_message"

    if-eqz v0, :cond_c

    const-string p1, "Call Control Messages"

    invoke-static {v1, p1, v2}, Lfa1;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_c
    invoke-static {p1, p2, p3}, Lfa1;->y(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v1}, Lfa1;->i(Ljava/lang/String;)V

    return-void

    :cond_d
    const/16 p1, 0x2c

    if-ne p2, v3, :cond_f

    if-eqz p3, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eq v4, p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    :cond_f
    if-ne v4, p1, :cond_10

    return-void

    :cond_10
    :goto_2
    invoke-static {p0, v4, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->a(Landroidx/fragment/app/FragmentActivity;IILandroid/content/Intent;)V

    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->c()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->B:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->d()V

    return-void

    :cond_2
    invoke-static {}, Lr71;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const v0, 0x7f0a02f6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->m:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->e0()I

    move-result v1

    if-lez v1, :cond_6

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lnd;->d0(I)Lnd$f;

    move-result-object v2

    invoke-interface {v2}, Lnd$f;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnd;->Z(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lr71$a;->f:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    sget-object v2, Liv0;->g:Liv0;

    if-eq v1, v2, :cond_7

    iput-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->o(Liv0;)Liv0;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->T(Liv0;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->e1(Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_7
    if-eqz v0, :cond_8

    instance-of v1, v0, Lqb1;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lqb1;

    invoke-virtual {v1}, Lqb1;->s()Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    if-eqz v0, :cond_9

    instance-of v1, v0, Lrb1;

    if-eqz v1, :cond_9

    check-cast v0, Lrb1;

    invoke-virtual {v0}, Lrb1;->A()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->e0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->b1(Liv0;)V

    :cond_a
    :try_start_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->a1(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->w:Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->h1()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->b(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->N:Ljava/lang/ref/WeakReference;

    sget-object v0, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->q:Z

    sget-object v0, Lr71$a;->I0:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->K:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->g:Z

    :cond_0
    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->y:Lnd$h;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->y:Lnd$h;

    invoke-virtual {v1, v2}, Lnd;->e(Lnd$h;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->finish()V

    return-void

    :cond_2
    const v1, 0x7f0d001f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0a065b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lrr0;

    invoke-direct {v2, p0}, Lrr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v1, 0x7f0a02ed

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d1()V

    const v1, 0x7f0a00ba

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    const v1, 0x7f0a00b4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a038b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lor0;

    invoke-direct {v3, p0}, Lor0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a038d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Ler0;

    invoke-direct {v3, p0}, Ler0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a038e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lbr0;

    invoke-direct {v3, p0}, Lbr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0385

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lgr0;

    invoke-direct {v3, p0}, Lgr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v2, v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->setBottomDialog(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-virtual {v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->q()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->I:Lkv0;

    invoke-virtual {v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->setTabClickListeners(Lkv0;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Z0()V

    invoke-static {p0}, Lbc1;->c(Landroid/content/Context;)V

    const v1, 0x7f0a06d2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/ui/startwizard/WizardView;

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    new-instance v3, Lir0;

    invoke-direct {v3, p0, v0, p1}, Lir0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;ZLandroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Lcom/kedlin/cca/ui/startwizard/WizardView;->setOnAfterLastSlideHandler(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    new-instance v3, Lvr0;

    invoke-direct {v3, p0}, Lvr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v1, v3}, Lcom/kedlin/cca/ui/startwizard/WizardView;->setOnAfterPermissionSlideHandler(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    new-instance v3, Llr0;

    invoke-direct {v3, p0}, Llr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    invoke-virtual {v1, v3}, Lcom/kedlin/cca/ui/startwizard/WizardView;->setOnAfterDrawPermissionSlideHandler(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->N()V

    sget-object v1, Lta1;->L:Lta1;

    invoke-virtual {v1}, Lta1;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lr71$a;->S:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lr71;->L()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lr71;->C()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->W0()V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Q(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_7
    :goto_2
    sget-object p1, Lr71$a;->S:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lr71;->L()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lw91$a;->n:Lw91$a;

    invoke-static {p0, p1}, Lw91;->b(Ljava/lang/Object;Lw91$a;)V

    :cond_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    invoke-static {}, Lbc1;->a()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->f:Landroid/app/Dialog;

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->E:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->E:Landroid/app/AlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->F:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->F:Landroid/app/AlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->s:Landroid/app/Dialog;

    :cond_4
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    :cond_6
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/startwizard/WizardView;->setOnAfterLastSlideHandler(Ljava/lang/Runnable;)V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->x:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->A:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/mopub/common/MoPub;->onDestroy(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->forceRefresh()V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->forceRefresh()V

    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInterstitialFailed with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->forceRefresh()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p2, 0x1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->m:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->B(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->H(Landroid/view/View;)V

    :cond_2
    :goto_0
    return p2

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->onBackPressed()V

    return p2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lmd1;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmd1;

    instance-of v3, v2, Lld1;

    if-eqz v3, :cond_1

    check-cast v2, Lld1;

    invoke-virtual {v2, p0, p1}, Lld1;->k(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lld1;->j(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_3
    invoke-static {p1}, Lfa1;->v(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lq71$e;->c:Lq71$e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lq71$e;->d:Lq71$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_6

    :cond_4
    sget-object v0, Lq71$e;->c:Lq71$e;

    invoke-static {v0}, Lr71;->y(Lq71$e;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lq71$e;->d:Lq71$e;

    invoke-static {v0}, Lr71;->y(Lq71$e;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/kedlin/cca/core/CCAService;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-static {p0}, Lcom/kedlin/cca/core/CCAService;->e(Landroid/content/Context;)V

    :cond_6
    sget-object v0, Lq71$e;->b:Lq71$e;

    invoke-static {v0}, Lr71;->y(Lq71$e;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/kedlin/cca/core/CCAService;->y:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v3, v0, :cond_7

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_7

    invoke-static {p0}, Lcom/kedlin/cca/core/CCAService;->e(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/kedlin/cca/core/CCAService;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-class p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :cond_8
    sget-object v0, Lcom/kedlin/cca/core/CCAService;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->A:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    invoke-virtual {p0, p0, v1, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "callcontrol"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->C:Landroid/content/Intent;

    if-eq p1, v1, :cond_f

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->C:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v1, "purchases"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->m:Ljava/lang/String;

    const-string v3, "NATIVE_BANNER"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    invoke-virtual {p0, p0, v2, v1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :cond_a
    const-string v1, "contact"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-virtual {p0, p0, v2, v1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :cond_b
    const-string v1, "rule"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    const/4 v2, 0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->s(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;Z)Landroidx/fragment/app/Fragment;

    :cond_c
    const-string v0, "stats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lr71$a;->O0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x54000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_e
    return-void

    :cond_f
    invoke-static {p0, p1}, Lth0;->b(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    :cond_10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {v0, p0}, Lfa1;->b(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_12
    return-void
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lr71$a;->S:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->z:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;->b()V

    invoke-static {p0}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lnf;->e(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/mopub/common/MoPub;->onPause(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onPostResume()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->f1()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->A:Ljava/lang/Boolean;

    invoke-static {}, Lmd1;->g()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmd1;

    :try_start_0
    sget-object v4, Lmd1$b;->b:Lmd1$b;

    invoke-virtual {v3, v4, p0}, Lmd1;->c(Lmd1$b;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    invoke-virtual {v3}, Lmd1;->e()V

    :goto_1
    invoke-virtual {v3}, Lmd1;->a()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lmd1;->d()Lmd1$c;

    move-result-object v4

    invoke-virtual {v4}, Lmd1$c;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lmd1;->h(Ljava/util/HashMap;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lta1;->c(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    invoke-static {}, Liv0;->values()[Liv0;

    move-result-object v1

    sget-object v2, Liv0;->f:Liv0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "selectedMenuItem"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->o(Liv0;)Liv0;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object p1

    invoke-virtual {p1}, Lnd;->e0()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lr71$a;->f:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    invoke-virtual {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->o(Liv0;)Liv0;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lr71$a;->v0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->g()J

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->c1()V

    invoke-static {p0}, Lb91;->t(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mopub/common/MoPub;->onResume(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->A:Ljava/lang/Boolean;

    invoke-static {}, Lr71;->L()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lta1;->L:Lta1;

    invoke-virtual {v1}, Lta1;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->U0(Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k1()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->z:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;

    invoke-virtual {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    if-nez v1, :cond_3

    sget-object v1, Lr71$a;->S:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->W0()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lfa1;->q()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    :cond_4
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->u:Lcom/mopub/mobileads/MoPubView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    :cond_5
    invoke-static {p0}, Lcom/mopub/common/MoPub;->onDestroy(Landroid/app/Activity;)V

    :cond_6
    :goto_0
    sget-object v1, Lr71$a;->S:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lr71$a;->d1:Lr71$a;

    invoke-static {}, Lfa1;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr71$a;->m(Ljava/lang/Integer;)V

    return-void

    :cond_7
    sget-object v1, Lr71$a;->d1:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->e()I

    move-result v1

    invoke-static {}, Lfa1;->m()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_8

    sget-object v1, Lm91$c;->j:Lm91$c;

    invoke-virtual {p0, v1, v0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->o:Landroid/os/Handler;

    sget-object v1, Lar0;->a:Lar0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Z0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    sget-object v0, Lr71$a;->I:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lr71$a;->f:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_9
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->o:Landroid/os/Handler;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lfa1;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->h1()V

    :cond_a
    invoke-static {}, Lfa1;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$6;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "purchaseCheck"

    invoke-static {v3, p0, v0, v2}, Lcom/kedlin/cca/core/service/BackgroundWorker;->g(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->O()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->i1()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->j1()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.kedlin.cch.intent.INTENT_ACTION_CHECK_ADV_ID"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object v2

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Lnf;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object v0, Lta1;->L:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->W()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void

    :cond_c
    invoke-static {}, Lbc1;->a()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->k:Liv0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "selectedMenuItem"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->j:Landroid/os/Bundle;

    const-string v1, "fragmentsState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->K:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    invoke-static {p0}, Lw91;->f(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->A:Ljava/lang/Boolean;

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->D:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->E:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->E:Landroid/app/AlertDialog;

    :cond_1
    invoke-static {p0}, Lw91;->g(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->A:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/mopub/common/MoPub;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public on_check_adv_id_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting advertising id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public on_check_adv_id_success(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lr71$a;->D0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    sget-object v2, Lr71$a;->H0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lr71$a;->F0:Lr71$a;

    invoke-virtual {v3, v1}, Lr71$a;->o(Ljava/lang/String;)V

    sget-object v3, Lr71$a;->E0:Lr71$a;

    invoke-virtual {v3, v1}, Lr71$a;->o(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_0
    sget-object v1, Lr71$a;->G0:Lr71$a;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_1
    sget-object v1, Lr71$a;->F0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lr71$a;->H0:Lr71$a;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_2
    invoke-virtual {v0, p1}, Lr71$a;->o(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->P()V

    return-void
.end method

.method public on_frw_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 2

    sget-object v0, Lr71$a;->I0:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error frw : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public on_frw_success()V
    .locals 2

    sget-object v0, Lr71$a;->I0:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v0, Lr71$a;->G0:Lr71$a;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v0, Lr71$a;->H0:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v0, Lr71$a;->F0:Lr71$a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lr71$a;->o(Ljava/lang/String;)V

    sget-object v0, Lr71$a;->E0:Lr71$a;

    invoke-virtual {v0, v1}, Lr71$a;->o(Ljava/lang/String;)V

    sget-object v0, Lw91$a;->b0:Lw91$a;

    invoke-static {p0, v0}, Lw91;->b(Ljava/lang/Object;Lw91$a;)V

    return-void
.end method

.method public synthetic q0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->p0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic s0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->r0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public t(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZ)Landroidx/fragment/app/Fragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZ)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->t(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZ)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public synthetic u0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->t0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic w0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->v0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic y0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->x0(Landroid/view/View;)V

    return-void
.end method
