.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;Z)V

    :cond_0
    return-void
.end method
