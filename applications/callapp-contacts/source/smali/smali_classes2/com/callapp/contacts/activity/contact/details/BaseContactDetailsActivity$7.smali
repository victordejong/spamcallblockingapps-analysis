.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$7;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setButtonBarClickedListeners([I)V
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

    .line 594
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->isClickValid(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onButtonBarIconClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method
