.class public Lbx0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lbw0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbx0;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbx0;


# direct methods
.method public constructor <init>(Lbx0;)V
    .locals 0

    iput-object p1, p0, Lbx0$a;->a:Lbx0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;Z)V
    .locals 0

    iget-object p1, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p1}, Lbx0;->f(Lbx0;)Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setEnabled(Z)V

    return-void
.end method

.method public b(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;FFZ)V
    .locals 0

    const/high16 p1, 0x41200000    # 10.0f

    div-float/2addr p2, p1

    iget-object p1, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p1}, Lbx0;->a(Lbx0;)[Li91$b;

    move-result-object p1

    array-length p1, p1

    int-to-float p1, p1

    rem-float/2addr p2, p1

    iget-object p1, p0, Lbx0$a;->a:Lbx0;

    float-to-int p2, p2

    invoke-static {p1, p2}, Lbx0;->b(Lbx0;I)V

    return-void
.end method

.method public c(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;Z)V
    .locals 2

    iget-object p1, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p1}, Lbx0;->c(Lbx0;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "(XXX) XXX-XXXX"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "XXX-XXXX"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "XXXX"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    iget-object p2, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p2}, Lbx0;->c(Lbx0;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p1}, Lbx0;->d(Lbx0;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p1}, Lbx0;->d(Lbx0;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p2}, Lbx0;->d(Lbx0;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f11067e

    :goto_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p1}, Lbx0;->d(Lbx0;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1, p2}, Lbx0;->e(Lbx0;Landroid/view/View;)V

    iget-object p1, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p1}, Lbx0;->f(Lbx0;)Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Li91;->t()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Li91;->n()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Li91;->s()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Li91;->o()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Li91;->p()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Li91;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p1}, Lbx0;->d(Lbx0;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p1}, Lbx0;->d(Lbx0;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lbx0$a;->a:Lbx0;

    invoke-static {p2}, Lbx0;->d(Lbx0;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f11054a

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
