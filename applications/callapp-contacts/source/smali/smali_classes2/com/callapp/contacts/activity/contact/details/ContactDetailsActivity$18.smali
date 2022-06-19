.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 1224
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$18;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$18;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1232
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$18;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    return-void
.end method
