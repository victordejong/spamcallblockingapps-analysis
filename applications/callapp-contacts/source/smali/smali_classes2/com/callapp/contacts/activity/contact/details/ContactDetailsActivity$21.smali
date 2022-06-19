.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$21;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior$a;
.source "SourceFile"


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

    .line 1269
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$21;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$21;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
