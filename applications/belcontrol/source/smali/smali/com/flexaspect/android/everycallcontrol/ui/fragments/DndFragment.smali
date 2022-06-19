.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;
.super Lqb1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$i;,
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;,
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String;

.field public static final r:[Ljava/lang/String;


# instance fields
.field public g:[Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public j:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public k:Landroid/view/ViewGroup;

.field public l:Ljava/util/Calendar;

.field public m:Ljava/text/DateFormat;

.field public n:Landroid/widget/Toast;

.field public o:I

.field public p:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->q:Ljava/lang/String;

    const-string v1, "MO"

    const-string v2, "TU"

    const-string v3, "WE"

    const-string v4, "TH"

    const-string v5, "FR"

    const-string v6, "SA"

    const-string v7, "SU"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->r:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lqb1;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->h:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->l:Ljava/util/Calendar;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->m:Ljava/text/DateFormat;

    const/4 v1, -0x1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->o:I

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->p:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->l:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/text/DateFormat;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->m:Ljava/text/DateFormat;

    return-object p0
.end method

.method public static synthetic C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->n:Landroid/widget/Toast;

    return-object p0
.end method

.method public static synthetic D()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->r:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic E(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;I)[J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->G(I)[J

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)I
    .locals 0

    iget p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->o:I

    return p0
.end method

.method public static synthetic z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;I)I
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->o:I

    return p1
.end method


# virtual methods
.method public final F()V
    .locals 7

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->r:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    const v5, 0x7f0a0205

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v5, v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v4, v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->e:Lcom/kedlin/cca/ui/CCAManyStatesButton;

    invoke-virtual {v4}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->c()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v5, v6, v4}, Lu71;->z(IIIZ)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final G(I)[J
    .locals 4

    add-int/lit8 p1, p1, 0x7

    rem-int/lit8 p1, p1, 0x7

    const/4 v0, 0x2

    new-array v0, v0, [J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->r:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    const v1, 0x7f0a0205

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->e:Lcom/kedlin/cca/ui/CCAManyStatesButton;

    invoke-virtual {v1}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->c()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0

    :cond_3
    return-object v2
.end method

.method public final H(I)Landroid/view/View;
    .locals 10

    invoke-static {p1}, Lu71;->j(I)Lu71$b;

    move-result-object v0

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->k:Landroid/view/ViewGroup;

    const v3, 0x7f0d00b7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    invoke-direct {v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;-><init>()V

    sget-object v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->r:[Ljava/lang/String;

    aget-object v5, v3, p1

    iput-object v5, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->a:Ljava/lang/String;

    const v5, 0x7f0a064b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->b:Landroid/widget/TextView;

    const v5, 0x7f0a064a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->c:Landroid/widget/TextView;

    new-instance v5, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v7, 0x5a0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, 0xf

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Landroid/content/Context;)V

    iput-object v5, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    sget-object v6, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->q:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    iget v6, v0, Lu71$b;->a:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setSelectedMinValue(Ljava/lang/Number;)V

    iget-object v5, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    iget v6, v0, Lu71$b;->b:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setSelectedMaxValue(Ljava/lang/Number;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0xb8

    invoke-static {v6}, Loe1;->c(I)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x18

    invoke-static {v6}, Loe1;->c(I)I

    move-result v6

    invoke-virtual {v5, v4, v4, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setNotifyWhileDragging(Z)V

    iget-object v4, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    new-instance v6, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;

    invoke-direct {v6, p0, p1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;ILcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;)V

    invoke-virtual {v4, v6, v5}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setOnRangeSeekBarChangeListener(Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;Z)V

    const v4, 0x7f0a00ce

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/kedlin/cca/ui/CCAManyStatesButton;

    iput-object v4, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->e:Lcom/kedlin/cca/ui/CCAManyStatesButton;

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->g:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    iget-boolean v0, v0, Lu71$b;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v0, v4, :cond_0

    sget-object v0, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->b:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->c:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    :goto_0
    move-object v4, v0

    :cond_1
    iget-object v0, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->e:Lcom/kedlin/cca/ui/CCAManyStatesButton;

    invoke-virtual {v0, v4}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->setDayState(Lcom/kedlin/cca/ui/CCAManyStatesButton$b;)V

    iget-object v0, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    iget-object v4, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->e:Lcom/kedlin/cca/ui/CCAManyStatesButton;

    invoke-virtual {v4}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->c()Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->b:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    invoke-virtual {v4}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->c:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    invoke-virtual {v4}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x7f0a0205

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->e:Lcom/kedlin/cca/ui/CCAManyStatesButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object p1, v3, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a009e

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->d:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v1
.end method

.method public I(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0a0565

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a026a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0392

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->H(Landroid/view/View;)V

    :cond_0
    return v1

    :cond_1
    const v0, 0x7f0a02f5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lqb1;->k()V

    return v1

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public J(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    new-instance p1, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$i;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$i;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0e0006

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public g(Lsb1$c;)V
    .locals 2

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$g;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Clicked MORE"

    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->J(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lsb1$c;->a:Lsb1$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public l(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V
    .locals 11

    invoke-super {p0, p1}, Lqb1;->l(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    invoke-virtual {p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v8

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const v9, 0x7f11039a

    const v10, 0x7f0a05c7

    const v3, 0x7f11039b

    const v4, 0x7f0a055c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/kedlin/cca/ui/HelpOverlayView$h;->d:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, v8

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->j(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/kedlin/cca/ui/HelpOverlayView$h;->c:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    const/16 v6, -0x28

    const/16 v7, 0x8

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->j(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    const-string v1, "dnd.html"

    invoke-virtual {v8, v1}, Lcom/kedlin/cca/ui/HelpOverlayView;->l(Ljava/lang/String;)V

    invoke-static {}, Lu71;->m()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f110399

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/kedlin/cca/ui/HelpOverlayView$h;->b:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    move-object v4, v0

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->j(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a064b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f11039d

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->o(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a064a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f11039c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/kedlin/cca/ui/HelpOverlayView;->o(Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;II)V

    const-string v0, "dnd_days.html"

    invoke-virtual {v8, v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->l(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setVisibility(I)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->I(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object p2, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const p3, 0x7f0e0006

    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object p3, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p3

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->m:Ljava/text/DateFormat;

    const p3, 0x7f0d00b9

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$e;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->F()V

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kedlin/cca/ui/CallControlWidget;->c(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lqb1;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-static {}, Lu71;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lka1;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->p:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lm91;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V

    :cond_2
    invoke-super {p0}, Lqb1;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lqb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f03000f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->g:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lu71;->r()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const v0, 0x7f110324

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lu71;->p()Z

    move-result v0

    const-string v2, ", "

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f110325

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lu71;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f11021e

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->h:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x7f110326

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->h:Ljava/lang/String;

    :cond_3
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x2c

    if-ne p2, v2, :cond_4

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->h:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->h:Ljava/lang/String;

    :cond_4
    const p2, 0x7f0a06c0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->k:Landroid/view/ViewGroup;

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p2, 0x7f0a0067

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$a;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a05c7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CompoundButton;

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$b;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x7f0a05c9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$c;

    invoke-direct {v3, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x7f0a05ca

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$d;

    invoke-direct {v3, p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;Landroid/widget/CompoundButton;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->n:Landroid/widget/Toast;

    const/16 v1, 0x51

    invoke-virtual {p1, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a055c

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x10

    invoke-static {v1}, Loe1;->c(I)I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x7

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->g:[Ljava/lang/String;

    array-length v1, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_6

    invoke-virtual {p0, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->H(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, p1, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->k:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    invoke-static {}, Lu71;->m()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->k:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->k:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_4
    invoke-static {}, Lu71;->q()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_5

    :cond_8
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_5
    invoke-static {}, Lu71;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->p:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-static {p1}, Lka1;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->p:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    const v0, 0x7f1102c2

    invoke-virtual {p1, v0}, Lsb1;->o(I)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method
