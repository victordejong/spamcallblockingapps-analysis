.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment;)Lr81;

    move-result-object p1

    iget-object p1, p1, Lr81;->f:Ljava/lang/String;

    invoke-static {p1}, Lsh0;->h(Ljava/lang/String;)Lsh0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsh0;->r()V

    :cond_0
    return-void
.end method
