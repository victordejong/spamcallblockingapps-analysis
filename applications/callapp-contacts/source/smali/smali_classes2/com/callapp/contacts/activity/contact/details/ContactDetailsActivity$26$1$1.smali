.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1;)V
    .locals 0

    .line 1486
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1489
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 1490
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1491
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gd:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method
