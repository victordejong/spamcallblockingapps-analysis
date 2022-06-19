.class Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

.field final synthetic b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;

.field final synthetic c:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->c:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->a:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->a:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->getTextResId()I

    move-result p1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;->getCheckBox()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    const v1, 0x7f120386

    if-ne p1, v1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->c:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->a(Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    .line 63
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->setChecked(Z)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->c:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 68
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->c:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->a(Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->setChecked(Z)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->c:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->notifyItemChanged(I)V

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->a:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->setChecked(Z)V

    .line 71
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->c:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->a:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemData;->setChecked(Z)V

    .line 74
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->c:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->notifyItemChanged(I)V

    .line 77
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$1;->c:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->b(Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;)Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener;->a()V

    return-void
.end method
