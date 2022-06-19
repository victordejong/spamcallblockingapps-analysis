.class Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 87
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;Landroid/content/Context;)V

    return-void
.end method
