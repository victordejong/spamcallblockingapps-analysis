.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;
.super Lqb1;
.source ""


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public g:Lr81;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DATA_SHARE_PACKAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lqb1;-><init>()V

    return-void
.end method

.method public static synthetic x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)Lr81;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->g:Lr81;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0d018e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->h:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->y()V

    return-object p1

    :cond_1
    new-instance p3, Lr81;

    invoke-direct {p3}, Lr81;-><init>()V

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->g:Lr81;

    invoke-virtual {p3, p2}, Lr81;->Q(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->y()V

    :cond_2
    const p2, 0x7f0a063b

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->g:Lr81;

    invoke-virtual {p3}, Lr81;->R()Lr81$a;

    move-result-object p3

    sget-object v1, Lr81$a;->b:Lr81$a;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a;

    invoke-direct {p3, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->g:Lr81;

    iget-object p2, p2, Lr81;->f:Ljava/lang/String;

    invoke-static {p2}, Lsh0;->h(Ljava/lang/String;)Lsh0;

    move-result-object p2

    if-eqz p2, :cond_4

    const p3, 0x7f0a0637

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0638

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lqb1;->c:Landroid/app/Activity;

    const v4, 0x7f110703

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lsh0;->j()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$b;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)V

    invoke-virtual {p3, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lqb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->g:Lr81;

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lr81;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method

.method public final y()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$c;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
