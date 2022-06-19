.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->c0(IIILjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:I

.field public final synthetic f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->c:Landroid/widget/TextView;

    iput p5, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->a:Landroid/widget/EditText;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->O(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1102f2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->d:I

    const v3, 0x7f11071f

    const v4, 0x7f1102fd

    const-string v5, ""

    const/4 v6, 0x0

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    sget-object v3, Lq71$g;->c:Lq71$g;

    invoke-static {v1, v3, p2, v0, v6}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lq71$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->P(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->Z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Z)Z

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :cond_3
    const v3, 0x7f110724

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    sget-object v3, Lq71$g;->b:Lq71$g;

    invoke-static {v1, v3, p2, v0, v6}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lq71$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->Q(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->Z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_5
    :goto_0
    return-void
.end method
