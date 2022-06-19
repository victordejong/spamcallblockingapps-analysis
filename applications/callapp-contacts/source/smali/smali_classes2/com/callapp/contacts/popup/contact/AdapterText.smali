.class public Lcom/callapp/contacts/popup/contact/AdapterText;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;,
        Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;,
        Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected a:Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;

.field protected final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput p2, p0, Lcom/callapp/contacts/popup/contact/AdapterText;->b:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;
    .locals 2

    .line 54
    new-instance v0, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;

    const v1, 0x7f0a0554

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method protected a(Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;",
            "TT;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p1, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget p2, p2, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;->c:I

    iput p2, p1, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;->d:I

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/AdapterText;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/callapp/contacts/popup/contact/AdapterText;->b:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1060
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/popup/contact/AdapterText;->a(Landroid/view/View;)Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;

    move-result-object p3

    .line 1061
    iget-object v0, p3, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;->c:Landroid/widget/TextView;

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080113

    .line 1062
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1063
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1064
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;

    .line 79
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/AdapterText;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    .line 80
    invoke-virtual {p0, p3, p1}, Lcom/callapp/contacts/popup/contact/AdapterText;->a(Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/AdapterText;->a:Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/AdapterText;->a:Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;

    iget v1, v1, Lcom/callapp/contacts/popup/contact/AdapterText$ViewHolderText;->d:I

    invoke-interface {v0, v1}, Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;->onRowClicked(I)V

    const/4 v0, 0x1

    .line 107
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/AdapterText;->a:Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;

    return-void
.end method
