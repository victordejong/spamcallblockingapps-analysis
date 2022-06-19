.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setButtonBarLongClickedListeners([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->isClickValid(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onButtonBarIconLongClicked(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
