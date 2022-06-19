.class Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$3;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$3;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->access$100(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$3;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    return-void
.end method
