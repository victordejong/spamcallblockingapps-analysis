.class public Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment<",
        "Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;",
        "Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2106
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 2100
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2101
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 2029
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2030
    new-instance v0, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;-><init>(Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;Landroid/view/View;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;

    check-cast p2, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;

    .line 1035
    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;->a(Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment$ViewHolder;Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;)V

    return-void
.end method

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d0272

    return v0
.end method
