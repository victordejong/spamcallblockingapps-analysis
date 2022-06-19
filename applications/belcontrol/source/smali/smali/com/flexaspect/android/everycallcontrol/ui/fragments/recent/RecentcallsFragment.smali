.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;
.super Lrb1;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lm91$b;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$j;,
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;
    }
.end annotation


# static fields
.field public static final L:Ljava/lang/String;

.field public static final M:Ljava/lang/String;


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/view/View;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/ImageView;

.field public F:Landroid/widget/ListView;

.field public G:I

.field public H:I

.field public I:Landroid/widget/PopupMenu;

.field public J:Ljava/util/concurrent/ScheduledExecutorService;

.field public K:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public s:Lcom/kedlin/cca/ui/CCANavBarFilter;

.field public t:Landroid/widget/ListAdapter;

.field public u:La61;

.field public v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_FILTER_OPTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_SELECTED_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lrb1;-><init>()V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->x:Z

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->y:Z

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->z:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->G:I

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->H:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    return-void
.end method

.method public static synthetic F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->y:Z

    return p1
.end method

.method public static synthetic I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->H:I

    return p1
.end method

.method public static synthetic J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->P()V

    return-void
.end method

.method private synthetic W(ILl81;Landroid/content/DialogInterface;I)V
    .locals 2

    const p3, 0x7f110722

    if-ne p1, p3, :cond_0

    sget-object p1, Lq71$g;->c:Lq71$g;

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->K(Lq71$g;Ll81;)V

    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->U(Ll81;)V

    return-void

    :cond_0
    const p3, 0x7f110725

    if-ne p1, p3, :cond_1

    sget-object p1, Lq71$g;->b:Lq71$g;

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->K(Lq71$g;Ll81;)V

    return-void

    :cond_1
    const p3, 0x7f1103fc

    if-ne p1, p3, :cond_4

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, ""

    if-nez p2, :cond_2

    move-object v0, p4

    goto :goto_0

    :cond_2
    iget-object v0, p2, Ll81;->m:Li91;

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p4, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p4, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    invoke-virtual {p4, p0, v0, p3}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :cond_4
    const p3, 0x7f110721

    if-ne p1, p3, :cond_5

    sget-object p1, Lq71$g;->c:Lq71$g;

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->K(Lq71$g;Ll81;)V

    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->U(Ll81;)V

    :cond_5
    return-void
.end method

.method private synthetic Y(Ll81;Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    iget-wide v0, p1, Ll81;->d:J

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {p1, p0, p3, p2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private synthetic a0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->x:Z

    invoke-static {}, Lfa1$e;->e()V

    sget-object v0, Lq71$e;->b:Lq71$e;

    invoke-static {v0}, Lr71;->D(Lq71$e;)V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kedlin/cca/core/CCAService;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Z0()V

    invoke-virtual {p0}, Lrb1;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrb1;->r()V

    :cond_0
    return-void
.end method

.method public static synthetic c0()V
    .locals 2

    sget-object v0, Lr71$a;->O:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr71$a;->m(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private synthetic d0(Ljava/lang/Object;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 2

    instance-of p3, p1, Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll81;

    invoke-virtual {p0, p3, v1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->g0(Landroid/view/View;Ll81;Z)V

    :cond_0
    instance-of p3, p1, Landroid/view/MenuItem;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/view/MenuItem;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll81;

    invoke-virtual {p0, p1, p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->h0(Landroid/view/MenuItem;Ll81;Z)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    invoke-super {p0}, Lrb1;->B()V

    sget-object v0, Lta1;->H:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->V()V

    return-void
.end method

.method public C()V
    .locals 0

    invoke-super {p0}, Lrb1;->C()V

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    return-void
.end method

.method public D(Lsb1;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lrb1;->D(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->f()Lcom/kedlin/cca/ui/CCANavBarFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    const v1, 0x7f110356

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {v0, v1, v2}, Lcom/kedlin/cca/ui/CCANavBarFilter;->b(ILjava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    const v1, 0x7f11035a

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {v0, v1, v2}, Lcom/kedlin/cca/ui/CCANavBarFilter;->b(ILjava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    const v1, 0x7f110358

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {v0, v1, v2}, Lcom/kedlin/cca/ui/CCANavBarFilter;->b(ILjava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object v0, Lr71$a;->f:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    const v1, 0x7f0e000b

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    sget-object v0, Lsb1$c;->a:Lsb1$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lsb1$c;->k:Lsb1$c;

    sget-object v2, Lsb1$c;->m:Lsb1$c;

    sget-object v3, Lsb1$c;->a:Lsb1$c;

    invoke-static {v0, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lsb1;->k(Ljava/util/EnumSet;I)Lsb1;

    return-void
.end method

.method public final K(Lq71$g;Ll81;)V
    .locals 4

    new-instance v0, Lx81;

    invoke-direct {v0}, Lx81;-><init>()V

    iget-object v1, p2, Ll81;->m:Li91;

    invoke-virtual {v0, v1}, Lx81;->Q(Li91;)V

    sget-object v1, Lq71$e;->b:Lq71$e;

    sget-object v2, Lq71$e;->c:Lq71$e;

    sget-object v3, Lq71$e;->d:Lq71$e;

    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, v0, Lx81;->j:Ljava/util/EnumSet;

    iput-object p1, v0, Lx81;->l:Lq71$g;

    iget-object v1, p2, Ll81;->m:Li91;

    iput-object v1, v0, Lx81;->g:Li91;

    iget-object v1, p2, Ll81;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lx81;->f:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Lx81;->z()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cant add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Ll81;->m:Li91;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final L(Ll81;)V
    .locals 0

    iget-object p1, p1, Ll81;->m:Li91;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Loe1;->u(Ljava/lang/String;)V

    return-void
.end method

.method public final M(Ll81;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->N(Ll81;Z)Z

    move-result p1

    return p1
.end method

.method public final N(Ll81;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p1, Ll81;->m:Li91;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Li91;->s()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Ll81;->m:Li91;

    invoke-virtual {p1}, Li91;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    const p2, 0x7f1104f5

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public O()V
    .locals 8

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    const v1, 0x7f0d00a2

    invoke-static {v0, v1}, Loe1;->x(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    const/4 v2, 0x1

    const v4, 0x7f1100a0

    const v5, 0x7f0a0249

    const/4 v6, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f1105f8

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v4, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne v0, v1, :cond_2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f1105fa

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v4, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f1105f9

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v4, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1100a1

    new-instance v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$g;

    invoke-direct {v4, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$g;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110285

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final P()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    invoke-virtual {v0}, Ll81;->I()Z

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne v0, v1, :cond_1

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    invoke-virtual {v0}, Ll81;->O()Z

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=3"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne v0, v1, :cond_2

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    invoke-virtual {v0}, Ll81;->K()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public Q(IIIILjava/lang/String;Lr71$a;Ll81;)V
    .locals 5

    new-instance v0, La01;

    invoke-direct {v0, p0, p1, p7}, La01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;ILl81;)V

    const/4 v1, 0x0

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, -0x1

    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    const p2, 0x7f1102c3

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v2, p0, Lrb1;->p:Landroid/app/Activity;

    const v3, 0x7f0d00a2

    invoke-static {v2, v3}, Loe1;->x(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0249

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p5, "dialog_cb"

    if-eqz p6, :cond_1

    invoke-virtual {v2, p5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    new-instance v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$f;

    invoke-direct {v4, p0, p6}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Lr71$a;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v2, p5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p5

    const/4 p6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p5

    const/16 p6, 0x8

    :goto_0
    invoke-virtual {p5, p6}, Landroid/view/View;->setVisibility(I)V

    iget-object p5, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {p5}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p5

    if-lez p4, :cond_2

    invoke-virtual {p5, p4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_2
    if-lez p1, :cond_3

    invoke-virtual {p5, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    if-lez p2, :cond_4

    invoke-virtual {p5, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    if-lez p3, :cond_5

    new-instance p1, Lzz0;

    invoke-direct {p1, p0, p7}, Lzz0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Ll81;)V

    invoke-virtual {p5, p3, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-virtual {p5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p7

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    move-object p1, p7

    move-object p2, v2

    invoke-virtual/range {p1 .. p6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {p7}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public R()V
    .locals 10

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget v0, v0, La61;->m:I

    invoke-virtual {p0, v0}, Lrb1;->y(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    invoke-virtual {v1, v0}, La61;->m(Landroid/view/View;)Ll81;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ll81;->p0()Lq71$e;

    move-result-object v1

    sget-object v2, Lq71$e;->b:Lq71$e;

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ll81;->k0()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Long;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v5, 0x0

    :goto_0
    new-instance v6, Ll81;

    invoke-direct {v6}, Ll81;-><init>()V

    invoke-virtual {v6, v1}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-wide v7, v6, Ll81;->f:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    iget-wide v8, v6, Ll81;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    if-lez v2, :cond_3

    sget-object v2, Lq71$e;->b:Lq71$e;

    invoke-virtual {v0, v2, v3}, Ll81;->M(Lq71$e;[Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, v0, Ll81;->j:Z

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {v0, v4}, Ll81;->L([Ljava/lang/Long;)Z

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final S()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    return-void
.end method

.method public T(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->j0(Lcom/kedlin/cca/ui/HelpOverlayView;Landroid/view/ViewGroup;Landroid/view/View;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v0

    :cond_0
    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$h;->b:[I

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "recentcalls-blocked.html"

    goto :goto_0

    :cond_2
    const-string p2, "recentcalls-missed.html"

    goto :goto_0

    :cond_3
    const-string p2, "recentcalls-all.html"

    :goto_0
    invoke-virtual {v0, p2}, Lcom/kedlin/cca/ui/HelpOverlayView;->l(Ljava/lang/String;)V

    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setVisibility(I)V

    return-void
.end method

.method public U(Ll81;)V
    .locals 5

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object v1, p1, Ll81;->m:Li91;

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    iget-wide v3, p1, Ll81;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->w(Ljava/lang/String;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;Ljava/lang/Long;)V

    return-void
.end method

.method public V()V
    .locals 6

    sget-object v0, Lq71$e;->b:Lq71$e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr71;->z(Lq71$e;Z)Z

    move-result v2

    sget-object v3, Lr71$a;->f:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v4

    sget-object v5, Lr71$a;->d:Lr71$a;

    invoke-virtual {v5}, Lr71$a;->a()Z

    move-result v5

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    if-nez v5, :cond_1

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    :goto_0
    iput-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    :cond_1
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {v2, v4}, Lcom/kedlin/cca/ui/CCANavBarFilter;->a(Ljava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v2

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    sget-object v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne v3, v4, :cond_2

    const v3, 0x7f1103d2

    goto :goto_1

    :cond_2
    const v3, 0x7f1103df

    :goto_1
    invoke-virtual {v2, v3}, Lsb1;->o(I)Lsb1;

    :cond_3
    iget-object v2, p0, Lrb1;->q:Landroid/os/Handler;

    new-instance v3, Lyz0;

    invoke-direct {v3, p0}, Lyz0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lrb1;->z()Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->q0()V

    sget-object v2, Lm91$c;->k:Lm91$c;

    sget-object v3, Lm91$c;->c:Lm91$c;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ll81;

    aput-object v5, v3, v4

    const-class v4, Lz91;

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v1

    invoke-static {v0}, Lz91;->m(Lq71$e;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lsb1;->n(Z)V

    return-void
.end method

.method public synthetic X(ILl81;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->W(ILl81;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic Z(Ll81;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->Y(Ll81;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public b(Ljava/lang/Object;Z)V
    .locals 4

    invoke-super {p0, p1, p2}, Lrb1;->b(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$h;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v1, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p2, v0, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Ll81;

    invoke-direct {p2}, Ll81;-><init>()V

    invoke-virtual {p2}, Ll81;->w0()V

    goto :goto_1

    :cond_2
    new-instance p2, Ll81;

    invoke-direct {p2}, Ll81;-><init>()V

    invoke-virtual {p2, v1}, Ll81;->y0(I)V

    goto :goto_1

    :cond_3
    new-instance p2, Ll81;

    invoke-direct {p2}, Ll81;-><init>()V

    invoke-virtual {p2}, Ll81;->x0()V

    :cond_4
    :goto_1
    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    iget-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    if-eqz p1, :cond_5

    iput v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->H:I

    :cond_5
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->q0()V

    return-void
.end method

.method public synthetic b0()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->a0()V

    return-void
.end method

.method public synthetic e0(Ljava/lang/Object;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->d0(Ljava/lang/Object;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public final f0()Z
    .locals 3

    sget-object v0, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    sget-object v1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    sget-object v2, Lr71$a;->S:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Lsb1$c;)V
    .locals 3

    invoke-super {p0, p1}, Lrb1;->g(Lsb1$c;)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$h;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->n0(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->A:Ljava/lang/String;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->C:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v0, p0, v1, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :goto_0
    return-void
.end method

.method public g0(Landroid/view/View;Ll81;Z)V
    .locals 8

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget v1, v0, La61;->m:I

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->G:I

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, La61;->m(Landroid/view/View;)Ll81;

    move-result-object p2

    :cond_0
    move-object v7, p2

    const p2, 0x7f11054c

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, v7, Ll81;->m:Li91;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li91;->m()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v7, Ll81;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v7, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a008a

    if-eq v0, v1, :cond_14

    const v1, 0x7f0a0375

    if-eq v0, v1, :cond_11

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M(Ll81;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v3, "ALLOWED_LIST_FULL"

    invoke-static {v0, v3}, Loe1;->k0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {p0, p1, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->m0(Ljava/lang/Object;Ll81;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    const p1, 0x7f110725

    const p3, 0x7f110531

    const v3, 0x7f11071e

    const v4, 0x7f110726

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    const v5, 0x7f11072e

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lr71$a;->f0:Lr71$a;

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M(Ll81;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->L(Ll81;)V

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {v7}, Ll81;->r0()Z

    move-result p2

    if-eqz p2, :cond_a

    if-nez p3, :cond_6

    invoke-virtual {p0, p1, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->m0(Ljava/lang/Object;Ll81;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7}, Ll81;->d0()J

    move-result-wide p2

    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-lez v0, :cond_7

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y:Ljava/lang/String;

    invoke-virtual {v7}, Ll81;->d0()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    iget-object p2, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    goto/16 :goto_6

    :cond_7
    iget-object p2, v7, Ll81;->m:Li91;

    invoke-static {p2}, La81;->d(Li91;)[La81;

    move-result-object p2

    if-eqz p2, :cond_9

    array-length p3, p2

    if-ge p3, v2, :cond_8

    goto :goto_1

    :cond_8
    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y:Ljava/lang/String;

    aget-object p2, p2, v1

    iget-wide v0, p2, La81;->a:J

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_9
    :goto_1
    const-string p1, "Contact not found"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p0, v7, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->N(Ll81;Z)Z

    move-result p2

    if-nez p2, :cond_b

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->t:Ljava/lang/String;

    iget-wide v0, v7, Ll81;->d:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->s:Ljava/lang/String;

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-virtual {p2, p0, p3, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const p3, 0x7f0a049c

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const p3, 0x7f0a049b

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M(Ll81;)Z

    move-result p2

    if-nez p2, :cond_c

    return-void

    :cond_c
    if-nez p3, :cond_d

    invoke-virtual {p0, p1, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->m0(Ljava/lang/Object;Ll81;)Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    :cond_d
    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    if-eqz p1, :cond_15

    iget-object p2, v7, Ll81;->m:Li91;

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Li91;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lie1;->h(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M(Ll81;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v3, "BLOCKED_LIST_FULL"

    invoke-static {v0, v3}, Loe1;->l0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    if-nez p3, :cond_10

    invoke-virtual {p0, p1, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->m0(Ljava/lang/Object;Ll81;)Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    :cond_10
    const p1, 0x7f110722

    const p3, 0x7f110531

    const v3, 0x7f110720

    const v4, 0x7f110723

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    const v5, 0x7f11072a

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lr71$a;->d0:Lr71$a;

    :goto_2
    move-object v0, p0

    move v1, p1

    move v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->Q(IIIILjava/lang/String;Lr71$a;Ll81;)V

    goto :goto_7

    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p3, La61;->m:I

    const p3, 0x7f0a0498

    :goto_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_4
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->n0(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    iget-object p2, v7, Ll81;->o:Ljava/util/EnumSet;

    sget-object p3, Lq71$e;->c:Lq71$e;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    iget-object p2, v7, Ll81;->o:Ljava/util/EnumSet;

    sget-object p3, Lq71$e;->d:Lq71$e;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    goto :goto_5

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    invoke-virtual {p3, p1}, La61;->n(Landroid/view/View;)I

    move-result v0

    iput v0, p3, La61;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_4

    :cond_13
    :goto_5
    invoke-virtual {v7}, Ll81;->A0()V

    invoke-virtual {p0, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->L(Ll81;)V

    return-void

    :cond_14
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->m:Ljava/lang/String;

    const-string p3, "RECENT_CALLS_BANNER"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lrb1;->p:Landroid/app/Activity;

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    :goto_6
    invoke-virtual {p2, p0, p3, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :cond_15
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0498
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h0(Landroid/view/MenuItem;Ll81;Z)Z
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v7, p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    sparse-switch v1, :sswitch_data_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_14

    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v4, 0x1

    goto/16 :goto_6

    :sswitch_0
    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->A:Ljava/lang/String;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v8, Lrb1;->p:Landroid/app/Activity;

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v1, v8, v2, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return v9

    :sswitch_1
    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->A:Ljava/lang/String;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v8, Lrb1;->p:Landroid/app/Activity;

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v1, v8, v2, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return v9

    :sswitch_2
    invoke-virtual {v8, v9}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->p0(Z)V

    return v9

    :sswitch_3
    invoke-virtual {v8, v9}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->o0(Z)V

    return v9

    :sswitch_4
    iget-object v0, v8, Lrb1;->p:Landroid/app/Activity;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v9

    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->k0()V

    return v9

    :sswitch_6
    invoke-virtual {v8, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M(Ll81;)Z

    move-result v0

    if-nez v0, :cond_0

    return v9

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual/range {p0 .. p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->m0(Ljava/lang/Object;Ll81;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v9

    :cond_1
    invoke-virtual {v8, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->U(Ll81;)V

    return v9

    :sswitch_7
    iget-object v0, v8, Lrb1;->p:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v0, 0x7f0a0249

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1100a3

    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110131

    new-instance v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$e;

    invoke-direct {v4, v8}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110285

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v0

    invoke-virtual/range {v10 .. v15}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v9

    :sswitch_8
    sget-object v0, Lsb1$c;->b:Lsb1$c;

    invoke-virtual {v8, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->g(Lsb1$c;)V

    return v9

    :sswitch_9
    invoke-virtual {v8, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M(Ll81;)Z

    move-result v0

    if-nez v0, :cond_2

    return v4

    :cond_2
    invoke-virtual {v8, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->L(Ll81;)V

    return v9

    :sswitch_a
    sget-object v0, Lsb1$c;->k:Lsb1$c;

    invoke-virtual {v8, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->g(Lsb1$c;)V

    return v9

    :sswitch_b
    invoke-virtual {v8, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M(Ll81;)Z

    move-result v1

    if-nez v1, :cond_3

    return v9

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual/range {p0 .. p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->m0(Ljava/lang/Object;Ll81;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v9

    :cond_4
    if-nez v7, :cond_5

    move-object v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, v7, Ll81;->m:Li91;

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, v8, Lrb1;->p:Landroid/app/Activity;

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    invoke-virtual {v1, v8, v2, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return v9

    :sswitch_c
    invoke-virtual {v8, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->p0(Z)V

    return v9

    :sswitch_d
    invoke-virtual {v8, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->o0(Z)V

    return v9

    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lrb1;->r()V

    return v9

    :sswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->O()V

    return v9

    :sswitch_10
    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->t:Ljava/lang/String;

    iget-wide v2, v7, Ll81;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->s:Ljava/lang/String;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$i;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v8, Lrb1;->p:Landroid/app/Activity;

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-virtual {v1, v8, v2, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return v9

    :sswitch_11
    invoke-virtual {v8, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M(Ll81;)Z

    move-result v0

    if-nez v0, :cond_7

    return v4

    :cond_7
    iget-object v0, v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget v0, v0, La61;->m:I

    invoke-virtual {v8, v0}, Lrb1;->y(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez p3, :cond_8

    invoke-virtual {v8, v0, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->m0(Ljava/lang/Object;Ll81;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, v8, Lrb1;->p:Landroid/app/Activity;

    if-eqz v0, :cond_9

    iget-object v1, v7, Ll81;->m:Li91;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lie1;->h(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    return v9

    :cond_a
    :goto_2
    return v4

    :sswitch_12
    sget-object v0, Lsb1$c;->m:Lsb1$c;

    invoke-virtual {v8, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->g(Lsb1$c;)V

    return v9

    :sswitch_13
    invoke-virtual {v8, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M(Ll81;)Z

    move-result v0

    if-nez v0, :cond_b

    return v9

    :cond_b
    iget-object v0, v8, Lrb1;->p:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v1, "BLOCKED_LIST_FULL"

    invoke-static {v0, v1}, Loe1;->l0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return v9

    :cond_c
    iget-object v0, v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget v0, v0, La61;->m:I

    invoke-virtual {v8, v0}, Lrb1;->y(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    if-nez p3, :cond_d

    invoke-virtual {v8, v0, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->m0(Ljava/lang/Object;Ll81;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    :cond_d
    sget-object v0, Lq71$g;->c:Lq71$g;

    invoke-virtual {v8, v0, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->K(Lq71$g;Ll81;)V

    invoke-virtual {v8, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->U(Ll81;)V

    :cond_e
    :goto_3
    return v9

    :sswitch_14
    invoke-virtual {v8, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M(Ll81;)Z

    move-result v0

    if-nez v0, :cond_f

    return v9

    :cond_f
    iget-object v0, v8, Lrb1;->p:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v1, "ALLOWED_LIST_FULL"

    invoke-static {v0, v1}, Loe1;->k0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return v9

    :cond_10
    iget-object v0, v8, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget v0, v0, La61;->m:I

    invoke-virtual {v8, v0}, Lrb1;->y(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    if-nez p3, :cond_11

    invoke-virtual {v8, v0, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->m0(Ljava/lang/Object;Ll81;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5

    :cond_11
    if-nez v7, :cond_12

    goto :goto_4

    :cond_12
    iget-object v0, v7, Ll81;->m:Li91;

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    const v1, 0x7f110725

    const v3, 0x7f110531

    const v5, 0x7f11071e

    const v6, 0x7f110726

    iget-object v0, v8, Lrb1;->p:Landroid/app/Activity;

    const v10, 0x7f11072e

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v2, v11, v4

    invoke-virtual {v0, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lr71$a;->f0:Lr71$a;

    move-object/from16 v0, p0

    move v2, v3

    move v3, v5

    move v4, v6

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->Q(IIIILjava/lang/String;Lr71$a;Ll81;)V

    :cond_13
    :goto_5
    return v9

    :sswitch_15
    iget-object v0, v8, Lrb1;->p:Landroid/app/Activity;

    iget-object v1, v7, Ll81;->m:Li91;

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Ll81;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lie1;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_14
    :goto_6
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0054 -> :sswitch_15
        0x7f0a0065 -> :sswitch_14
        0x7f0a00a4 -> :sswitch_13
        0x7f0a00a5 -> :sswitch_12
        0x7f0a00d8 -> :sswitch_11
        0x7f0a0244 -> :sswitch_10
        0x7f0a027b -> :sswitch_f
        0x7f0a02f5 -> :sswitch_e
        0x7f0a02f9 -> :sswitch_d
        0x7f0a02fa -> :sswitch_c
        0x7f0a03bc -> :sswitch_b
        0x7f0a03c1 -> :sswitch_a
        0x7f0a03e9 -> :sswitch_9
        0x7f0a04bd -> :sswitch_8
        0x7f0a0524 -> :sswitch_7
        0x7f0a0525 -> :sswitch_6
        0x7f0a053f -> :sswitch_5
        0x7f0a0565 -> :sswitch_4
        0x7f0a0581 -> :sswitch_3
        0x7f0a0582 -> :sswitch_2
        0x7f0a0654 -> :sswitch_1
        0x7f0a0655 -> :sswitch_0
    .end sparse-switch
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
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

    sget-object p2, Lm91$c;->k:Lm91$c;

    if-ne p1, p2, :cond_2

    iget-boolean p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->J:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->J:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->K:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->J:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)V

    const-wide/16 v1, 0x96

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->K:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    iget-object p2, p0, Lrb1;->p:Landroid/app/Activity;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$c;

    invoke-direct {v0, p0, p1, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Lm91$c;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i0(Lm91$c;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lq71$e;->b:Lq71$e;

    instance-of v1, p2, Lq71$e;

    if-eqz v1, :cond_0

    check-cast p2, Lq71$e;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    sget-object v1, Lm91$c;->a:Lm91$c;

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lsb1;->n(Z)V

    return-void

    :cond_1
    sget-object v1, Lm91$c;->c:Lm91$c;

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsb1;->n(Z)V

    :cond_2
    return-void
.end method

.method public j0(Lcom/kedlin/cca/ui/HelpOverlayView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/kedlin/cca/ui/help/overlay/recent_calls/HelpOverlayRecentCalls;->b()Lcom/kedlin/cca/ui/help/overlay/recent_calls/HelpOverlayRecentCalls;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/kedlin/cca/ui/help/overlay/recent_calls/HelpOverlayRecentCalls;->c(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Lcom/kedlin/cca/ui/HelpOverlayView;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public k0()V
    .locals 5

    sget-object v0, Lta1;->I:Lta1;

    invoke-virtual {v0, p0}, Lta1;->j(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "call-logs.csv"

    invoke-static {v0}, Lcom/kedlin/cca/core/CallControlFileProvider;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lga1;->a(Landroid/app/Activity;Ljava/io/File;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    const v2, 0x7f11032a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lrb1;->p:Landroid/app/Activity;

    const v4, 0x7f110329

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/kedlin/cca/core/CallControlFileProvider;->h(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lie1;->c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    const v1, 0x7f110328

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final l0()V
    .locals 8

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->B:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lr71;->p()I

    move-result v0

    const v2, 0x7f1105ed

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0001

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601c4

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110253

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11073f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060286

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->C:Landroid/widget/TextView;

    const v1, 0x7f110321

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->B:Landroid/view/View;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->E:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080091

    invoke-static {v1, v2}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public m0(Ljava/lang/Object;Ll81;)Z
    .locals 7

    iget-wide v0, p2, Ll81;->w:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    return v2

    :cond_0
    iget-boolean v3, p2, Ll81;->j:Z

    invoke-virtual {p2, v0, v1, v3}, Ll81;->l0(JZ)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_1

    return v2

    :cond_1
    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    iget-wide v3, v0, Ll81;->w:J

    iget-wide v5, v0, Ll81;->x:J

    invoke-virtual {v0, v3, v4, v5, v6}, Ll81;->j0(JJ)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_3

    return v2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Ll81;

    invoke-direct {v1}, Ll81;-><init>()V

    invoke-virtual {v1, p2}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll81;

    iget-object v5, v3, Ll81;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, v3, Ll81;->m:Li91;

    invoke-virtual {v3}, Li91;->m()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Ll81;->m:Li91;

    invoke-virtual {v3}, Li91;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, p2, v2

    add-int/2addr v2, v4

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1104d6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lb01;

    invoke-direct {v2, p0, p1, v0}, Lb01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v4
.end method

.method public n0(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->S()V

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$d;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$j;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$a;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a02f9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0581

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f0a02fa

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0a0582

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    sget-object v7, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne v6, v7, :cond_4

    if-eqz v0, :cond_0

    sget-object v6, Lr71$a;->Q:Lr71$a;

    invoke-virtual {v6}, Lr71$a;->a()Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lr71$a;->Q:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    if-eqz v4, :cond_3

    invoke-static {}, Lfa1;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lr71$a;->R:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    if-eqz v5, :cond_9

    invoke-static {}, Lfa1;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lr71$a;->R:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    if-eqz v4, :cond_7

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    if-eqz v5, :cond_9

    :cond_8
    :goto_1
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    const v0, 0x7f0a03c1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v1

    sget-object v3, Lsb1$c;->k:Lsb1$c;

    invoke-virtual {v1, v3}, Lsb1;->i(Lsb1$c;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a00a5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v0

    sget-object v1, Lsb1$c;->m:Lsb1$c;

    invoke-virtual {v0, v1}, Lsb1;->i(Lsb1$c;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a0498

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a0375

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a049c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_10

    const p1, 0x7f0e000a

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_4

    :cond_c
    :goto_2
    const p1, 0x7f0e0009

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget p1, p1, La61;->m:I

    invoke-virtual {p0, p1}, Lrb1;->y(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    invoke-virtual {v0, p1}, La61;->m(Landroid/view/View;)Ll81;

    move-result-object p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a0054

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ll81;->r0()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_d
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0a0244

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_e

    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06020d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_e
    :try_start_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_10

    aget-object v4, p1, v1

    const-string v5, "mPopup"

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForceShowIcon"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    iput-boolean v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->y:Z

    return-void
.end method

.method public final o0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    sget-object v1, Lr71$a;->Q:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    if-eq v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->q0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->g0(Landroid/view/View;Ll81;Z)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget v0, v0, La61;->m:I

    invoke-virtual {p0, v0}, Lrb1;->y(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    invoke-virtual {v1, v0}, La61;->m(Landroid/view/View;)Ll81;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->h0(Landroid/view/MenuItem;Ll81;Z)Z

    move-result p1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object p3, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->closeContextMenu()V

    iget-object p3, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object v0

    sget-object v1, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {v0, v1}, Lsb1;->g(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_a

    const p2, 0x7f0e000b

    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    const v0, 0x7f0a0582

    const v2, 0x7f0a02fa

    const v3, 0x7f0a0581

    const v4, 0x7f0a02f9

    const/4 v5, 0x0

    if-ne p2, p3, :cond_4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object p3, Lr71$a;->Q:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p3, Lr71$a;->Q:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    xor-int/2addr p3, v1

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {}, Lfa1;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lr71$a;->R:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-static {}, Lfa1;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    sget-object p3, Lr71$a;->R:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-nez p3, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_9

    :cond_8
    :goto_1
    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    const p2, 0x7f0a03c1

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object p3

    sget-object v0, Lsb1$c;->k:Lsb1$c;

    invoke-virtual {p3, v0}, Lsb1;->i(Lsb1$c;)Z

    move-result p3

    xor-int/2addr p3, v1

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p2, 0x7f0a00a5

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object p2

    sget-object p3, Lsb1$c;->m:Lsb1$c;

    invoke-virtual {p2, p3}, Lsb1;->i(Lsb1$c;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0498

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0e0009

    if-nez p2, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a0375

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a049c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_c

    const p2, 0x7f0e000a

    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a049b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p3, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_d
    :goto_2
    return-void

    :cond_e
    :goto_3
    invoke-virtual {p3, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget p2, p2, La61;->m:I

    invoke-virtual {p0, p2}, Lrb1;->y(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_f

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    invoke-virtual {p3, p2}, La61;->m(Landroid/view/View;)Ll81;

    move-result-object p2

    const p3, 0x7f0a0054

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p2}, Ll81;->r0()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_f
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0163

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0088

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->B:Landroid/view/View;

    const p2, 0x7f0a069b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->C:Landroid/widget/TextView;

    const p2, 0x7f0a0682

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->D:Landroid/widget/TextView;

    const p2, 0x7f0a0089

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->E:Landroid/widget/ImageView;

    const p2, 0x7f0a027f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->A:Landroid/widget/TextView;

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->F:Landroid/widget/ListView;

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->z:Z

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->y:Z

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyd;->n(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    invoke-static {v0}, Lle1;->a(Landroid/widget/Adapter;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lrb1;->onPause()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->S()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->J:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->J:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->x:Z

    if-eqz v0, :cond_1

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    invoke-virtual {v0}, Ll81;->x0()V

    :cond_1
    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->H:I

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->l0()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->V()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, Lxz0;->a:Lxz0;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget v1, v1, La61;->m:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lrb1;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iget-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->z:Z

    const/4 p3, 0x0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->z:Z

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    iget-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    if-eqz p1, :cond_1

    iput p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->H:I

    :cond_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->q0()V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lrb1;->onStart()V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    invoke-static {v0, v1}, Lle1;->g(Landroid/app/Activity;Landroid/widget/Adapter;)Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lyd;->n(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lrb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, La61;

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, La61;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->F:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lrb1;->x(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    move-result-object v0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->L:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    aget-object p2, v0, p2

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->M:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->G:I

    :cond_0
    instance-of p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->s:Lcom/kedlin/cca/ui/CCANavBarFilter;

    invoke-virtual {v0, p2}, Lcom/kedlin/cca/ui/CCANavBarFilter;->a(Ljava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    :cond_1
    sget-object v0, Lr71$a;->f:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lrb1;->v()Lsb1;

    move-result-object p1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne p2, v0, :cond_2

    const p2, 0x7f1103d2

    goto :goto_0

    :cond_2
    const p2, 0x7f1103df

    :goto_0
    invoke-virtual {p1, p2}, Lsb1;->o(I)Lsb1;

    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lrb1;->p:Landroid/app/Activity;

    const-class v0, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p2, Lcom/kedlin/cca/core/CCAService;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {p2, p1}, Lfa1;->O(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public final p0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    sget-object v1, Lr71$a;->R:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    if-eq v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->q0()V

    return-void
.end method

.method public q0()V
    .locals 10

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->y:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->z:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$h;->b:[I

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    new-instance v4, Ll81;

    invoke-direct {v4}, Ll81;-><init>()V

    invoke-virtual {v4, v2, v0, v3, v3}, Ll81;->b0(Ljava/lang/Integer;ZZZ)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    new-instance v2, Ll81;

    invoke-direct {v2}, Ll81;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v3, v0}, Ll81;->b0(Ljava/lang/Integer;ZZZ)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, La61;->a(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    new-instance v4, Ll81;

    invoke-direct {v4}, Ll81;-><init>()V

    const/4 v5, 0x0

    sget-object v6, Lr71$a;->Q:Lr71$a;

    invoke-virtual {v6}, Lr71$a;->a()Z

    move-result v6

    xor-int/2addr v6, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-object v3, Lr71$a;->R:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "*"

    :cond_4
    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Ll81;->c0(Ljava/lang/Integer;ZZZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->u:La61;

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->G:I

    iput v2, v1, La61;->m:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->G:I

    invoke-virtual {v1}, Lmc;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->v:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$i;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->A:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    const-string v1, "6aaf93c7568445ce917889c31d7a1313"

    invoke-static {v0, v1}, Lle1;->e(Landroid/widget/ListView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_3
    return-void
.end method

.method public s(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V
    .locals 3

    invoke-super {p0, p1}, Lrb1;->s(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lle1;->d(Landroid/widget/ListAdapter;I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lrb1;->y(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->t:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lrb1;->q(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->T(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
