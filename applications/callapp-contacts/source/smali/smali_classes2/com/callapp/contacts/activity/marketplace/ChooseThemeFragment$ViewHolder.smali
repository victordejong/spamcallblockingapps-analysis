.class final Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewHolder"
.end annotation


# instance fields
.field r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

.field final synthetic s:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;Landroid/view/View;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->s:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    .line 234
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0252

    .line 235
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder;->r:Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    return-void
.end method
