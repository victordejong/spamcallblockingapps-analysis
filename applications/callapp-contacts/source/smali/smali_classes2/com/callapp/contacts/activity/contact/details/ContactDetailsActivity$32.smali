.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->doAutoScrollIfNeeded()V
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

    .line 2060
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$32;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2063
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$32;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 2068
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$32;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    .line 2069
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$32;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    return-void
.end method
