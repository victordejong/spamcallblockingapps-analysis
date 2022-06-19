.class public Lcom/callapp/contacts/popup/contact/ShareAdapter;
.super Lcom/callapp/contacts/popup/contact/AdapterText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/ShareAdapter$ViewHolderIconAndText;,
        Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/popup/contact/AdapterText<",
        "Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;",
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
            "Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;I[Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;)V
    .locals 0

    .line 18
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/popup/contact/ShareAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;
    .locals 3

    .line 40
    new-instance v0, Lcom/callapp/contacts/popup/contact/ShareAdapter$ViewHolderIconAndText;

    const v1, 0x7f0a056b

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0554

    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, p1}, Lcom/callapp/contacts/popup/contact/ShareAdapter$ViewHolderIconAndText;-><init>(Lcom/callapp/contacts/popup/contact/ShareAdapter;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0
.end method

.method protected final synthetic a(Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;)V
    .locals 1

    .line 15
    check-cast p2, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;

    .line 1047
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/AdapterText;->a(Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;)V

    .line 1048
    check-cast p1, Lcom/callapp/contacts/popup/contact/ShareAdapter$ViewHolderIconAndText;

    .line 1050
    iget v0, p2, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;->a:I

    if-nez v0, :cond_0

    .line 1051
    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/ShareAdapter$ViewHolderIconAndText;->a:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1053
    :cond_0
    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/ShareAdapter$ViewHolderIconAndText;->a:Landroid/widget/ImageView;

    iget p2, p2, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;->a:I

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    return-void
.end method
