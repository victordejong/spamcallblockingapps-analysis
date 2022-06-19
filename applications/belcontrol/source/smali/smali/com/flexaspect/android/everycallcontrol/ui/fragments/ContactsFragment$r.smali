.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$r;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$r;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->U(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$r;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method
