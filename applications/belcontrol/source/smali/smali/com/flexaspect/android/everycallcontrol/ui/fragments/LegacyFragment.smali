.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;
.super Lqb1;
.source ""

# interfaces
.implements Lm91$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;,
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;
    }
.end annotation


# static fields
.field public static h:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;


# instance fields
.field public g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lfa1;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;->o:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;->values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v1, v1, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    sput-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->h:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;->values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->h:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    add-int/lit8 v7, v4, 0x1

    aput-object v5, v6, v4

    move v4, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lqb1;-><init>()V

    return-void
.end method

.method public static synthetic A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic D(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic E(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lqb1;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;

    return-object p0
.end method

.method public static synthetic K(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic L(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic M(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic N(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic O(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic P(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic Q(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic R(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic x()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->h:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$e;

    return-object v0
.end method

.method public static synthetic y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public g(Lsb1$c;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$d;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->A:Ljava/lang/String;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->C:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;

    :goto_0
    invoke-virtual {p1, p0, v1, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :goto_1
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

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$c;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00df

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0396

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;

    invoke-direct {p3, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a;)V

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p2, 0x7f0a06b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$b;

    invoke-direct {p3, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onPause()V
    .locals 0

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    invoke-super {p0}, Lqb1;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    sget-object v0, Lm91$c;->d:Lm91$c;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V

    sget-object v1, Lm91$c;->j:Lm91$c;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    sget-object v0, Lr71$a;->f:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->l1()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->G0()V

    :cond_0
    invoke-super {p0}, Lqb1;->onStart()V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 2

    sget-object v0, Lsb1$c;->k:Lsb1$c;

    sget-object v1, Lsb1$c;->m:Lsb1$c;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {p1, v0, v1}, Lsb1;->k(Ljava/util/EnumSet;I)Lsb1;

    return-void
.end method
