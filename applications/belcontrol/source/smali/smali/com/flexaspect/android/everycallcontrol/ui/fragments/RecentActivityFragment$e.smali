.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->L(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
