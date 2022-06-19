.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$3;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$3;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 528
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$3;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    :cond_0
    return-void
.end method
