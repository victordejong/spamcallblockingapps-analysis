.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

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
    .locals 8

    .line 857
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/high16 v0, 0x40400000    # 3.0f

    const v1, 0x7f0800da

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x7f0800d9

    const-string v4, ""

    const v5, 0x7f060244

    if-nez p2, :cond_0

    .line 858
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 859
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 861
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 865
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 866
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 868
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v6, 0x1

    if-ne p2, v6, :cond_2

    .line 869
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {p1, v3, p2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 876
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {p1, v3, p2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 877
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {p1, v3, p2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 878
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {p1, v3, p2, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 879
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->v(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    if-lt p4, p3, :cond_1

    .line 882
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 883
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 887
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 888
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 891
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v7, 0x2

    if-ne p2, v7, :cond_4

    .line 892
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-lt p4, p3, :cond_3

    .line 899
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 900
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 904
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 905
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 907
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v6, 0x3

    if-ne p2, v6, :cond_6

    .line 908
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-lt p4, p3, :cond_5

    .line 913
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 914
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 918
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 919
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 921
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v7, 0x4

    if-ne p2, v7, :cond_8

    .line 922
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 924
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-lt p4, p3, :cond_7

    .line 926
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 927
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 931
    :cond_7
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 932
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 934
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v6, 0x5

    if-ne p2, v6, :cond_a

    .line 935
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 936
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-lt p4, p3, :cond_9

    .line 938
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 939
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 943
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v1, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    return-void

    .line 945
    :cond_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_b

    .line 946
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 948
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, v3, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;III)V

    .line 949
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/view/View;)V

    .line 950
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gC:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_b

    .line 951
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$14;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->w(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    :cond_b
    return-void
.end method
