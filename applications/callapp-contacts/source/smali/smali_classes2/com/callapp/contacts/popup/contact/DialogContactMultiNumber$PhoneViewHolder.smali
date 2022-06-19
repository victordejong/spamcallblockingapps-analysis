.class Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneViewHolder"
.end annotation


# instance fields
.field r:Landroid/widget/RadioButton;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/view/View;

.field final synthetic v:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;Landroid/view/View;)V
    .locals 2

    .line 182
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->v:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    .line 183
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a077e

    .line 185
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->u:Landroid/view/View;

    const v0, 0x7f0a0717

    .line 186
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->r:Landroid/widget/RadioButton;

    const v0, 0x7f0a06ac

    .line 187
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->s:Landroid/widget/TextView;

    .line 188
    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->f(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a06ab

    .line 189
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->t:Landroid/widget/TextView;

    .line 190
    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->g(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;Landroid/view/View;)V
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;->a(I)V

    return-void
.end method

.method public static synthetic lambda$SCIr8OybookOB8HYMZ-ORilpNcU(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->a(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->s:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;->a:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p1, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;->a:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getPhoneInfo()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->t:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->r:Landroid/widget/RadioButton;

    iget-boolean p1, p1, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;->b:Z

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 201
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;->u:Landroid/view/View;

    new-instance v0, Lcom/callapp/contacts/popup/contact/-$$Lambda$DialogContactMultiNumber$PhoneViewHolder$SCIr8OybookOB8HYMZ-ORilpNcU;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/popup/contact/-$$Lambda$DialogContactMultiNumber$PhoneViewHolder$SCIr8OybookOB8HYMZ-ORilpNcU;-><init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
