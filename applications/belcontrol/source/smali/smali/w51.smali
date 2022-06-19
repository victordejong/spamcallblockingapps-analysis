.class public Lw51;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw51$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/View$OnClickListener;

.field public c:[Lsh0;

.field public d:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lw51;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lw51;->a:Landroid/content/Context;

    iput-object p2, p0, Lw51;->b:Landroid/view/View$OnClickListener;

    iput-boolean p3, p0, Lw51;->f:Z

    invoke-virtual {p0}, Lw51;->notifyDataSetChanged()V

    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lw51;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lw51;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lw51;->b:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lw51;->c:[Lsh0;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw51;->c:[Lsh0;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lw51;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d018d

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lw51$b;

    if-nez p3, :cond_1

    new-instance p3, Lw51$b;

    const/4 v1, 0x0

    invoke-direct {p3, p0, p2, v1}, Lw51$b;-><init>(Lw51;Landroid/view/View;Lw51$a;)V

    :cond_1
    invoke-virtual {p0, p1}, Lw51;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsh0;

    invoke-static {p3}, Lw51$b;->a(Lw51$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lsh0;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lw51;->f:Z

    if-nez v1, :cond_2

    invoke-static {p3}, Lw51$b;->b(Lw51$b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p3}, Lw51$b;->b(Lw51$b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Lsh0;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lw51$b;->b(Lw51$b;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-static {p3}, Lw51$b;->c(Lw51$b;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lsh0;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lw51;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lsh0;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p3}, Lw51$b;->c(Lw51$b;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/SpannableString;

    iget-object v1, p0, Lw51;->a:Landroid/content/Context;

    const v2, 0x7f1106fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lw51;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p3}, Lw51$b;->c(Lw51$b;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    instance-of v1, p1, Lsh0$c;

    if-eqz v1, :cond_4

    invoke-static {p3}, Lw51$b;->c(Lw51$b;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lw51;->a:Landroid/content/Context;

    const v2, 0x7f110700

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lsh0;->j()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-object p2

    :cond_5
    invoke-virtual {p1}, Lsh0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lsh0;->p()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lw51;->a:Landroid/content/Context;

    const v2, 0x7f1106fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {p1}, Lsh0;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lw51;->a:Landroid/content/Context;

    const v2, 0x7f1106fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {p1}, Lsh0;->p()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lw51;->a:Landroid/content/Context;

    const v1, 0x7f110701

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-static {p3}, Lw51$b;->c(Lw51$b;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lw51$b;->c(Lw51$b;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    sget-object v0, Lr81;->l:Ljava/lang/String;

    invoke-static {v0}, Lsh0;->l(Ljava/lang/String;)[Lsh0;

    move-result-object v0

    iput-object v0, p0, Lw51;->c:[Lsh0;

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
