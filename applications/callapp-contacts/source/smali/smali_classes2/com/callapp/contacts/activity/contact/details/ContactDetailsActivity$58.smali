.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->tryToShowRippleOnProfileView()V
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

    .line 3618
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3621
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/skyfishjy/library/RippleBackground;->setVisibility(I)V

    .line 3622
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->a()V

    .line 3623
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
