.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->scrollToPosition(ILcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;ILcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$10;->c:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$10;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$10;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$10;->c:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$10;->a:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    .line 833
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$10;->c:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$10;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    return-void
.end method
