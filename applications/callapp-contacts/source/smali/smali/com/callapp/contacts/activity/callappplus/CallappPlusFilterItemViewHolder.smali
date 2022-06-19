.class public Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# instance fields
.field r:Landroidx/appcompat/widget/AppCompatCheckBox;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0224

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;->r:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterItemViewHolder;->r:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object v0
.end method
