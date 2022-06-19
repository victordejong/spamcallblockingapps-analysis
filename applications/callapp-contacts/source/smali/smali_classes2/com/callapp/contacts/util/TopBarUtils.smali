.class public Lcom/callapp/contacts/util/TopBarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/appcompat/app/ActionBar;Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;I)Landroidx/appcompat/app/ActionBar;
    .locals 1

    .line 1037
    sget-object v0, Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;->TITLE_TOP_BAR:Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    if-eq p2, v0, :cond_1

    .line 1039
    sget-object v0, Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;->SUBTITLE_TOP_BAR:Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    if-ne p2, v0, :cond_0

    const p2, 0x7f1300f6

    goto :goto_0

    .line 1041
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;->TITLE_TOP_BAR_SMALL:Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    if-ne p2, v0, :cond_1

    const p2, 0x7f1300e8

    goto :goto_0

    :cond_1
    const p2, 0x7f1302b8

    :goto_0
    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/ActionBar;->a(I)V

    .line 1048
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->b()Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a009b

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 1049
    invoke-virtual {p3, p0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1050
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->c()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0804c7

    .line 28
    invoke-static {p0, p2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    .line 29
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    .line 30
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->a()V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroidx/appcompat/app/ActionBar;Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 55
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBar;->d()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBar;->b()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a009b

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
