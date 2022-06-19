.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)Lr81;

    move-result-object p1

    invoke-virtual {p1}, Lr81;->R()Lr81$a;

    move-result-object p1

    sget-object v0, Lr81$a;->a:Lr81$a;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)Lr81;

    move-result-object v1

    iget-object v1, v1, Lr81;->f:Ljava/lang/String;

    const-string v2, "Value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    sget-object p2, Lr81$a;->d:Lr81$a;

    if-eq p1, p2, :cond_1

    sget-object p2, Lr81$a;->c:Lr81$a;

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)Lr81;

    move-result-object p1

    iget-object p1, p1, Lr81;->f:Ljava/lang/String;

    invoke-static {p1}, Lr81;->F(Ljava/lang/String;)V

    sget-object p1, Lw91$a;->i0:Lw91$a;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)Lr81;

    move-result-object p1

    invoke-virtual {p1}, Lr81;->G()V

    sget-object p1, Lw91$a;->h0:Lw91$a;

    :goto_0
    invoke-static {p0, p1, v0}, Lw91;->c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)Lr81;

    move-result-object p1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)Lr81;

    move-result-object p2

    iget-object p2, p2, Lr81;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lr81;->Q(Ljava/lang/String;)Z

    return-void
.end method
