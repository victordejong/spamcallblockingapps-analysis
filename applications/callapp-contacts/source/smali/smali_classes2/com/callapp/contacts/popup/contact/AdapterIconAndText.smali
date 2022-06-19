.class public Lcom/callapp/contacts/popup/contact/AdapterIconAndText;
.super Lcom/callapp/contacts/popup/contact/AdapterText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ViewHolderIconAndText;,
        Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/popup/contact/AdapterText<",
        "Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;I[Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;)V
    .locals 0

    .line 20
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;
    .locals 3

    .line 42
    new-instance v0, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ViewHolderIconAndText;

    const v1, 0x7f0a056b

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0554

    .line 44
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, p1}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ViewHolderIconAndText;-><init>(Lcom/callapp/contacts/popup/contact/AdapterIconAndText;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0
.end method

.method protected final synthetic a(Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;)V
    .locals 3

    .line 17
    check-cast p2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    .line 1049
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/AdapterText;->a(Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;)V

    .line 1050
    check-cast p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ViewHolderIconAndText;

    .line 1052
    iget v0, p2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;->a:I

    if-nez v0, :cond_0

    .line 1053
    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ViewHolderIconAndText;->a:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1055
    :cond_0
    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ViewHolderIconAndText;->a:Landroid/widget/ImageView;

    iget p2, p2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;->a:I

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x7f060087

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void
.end method
