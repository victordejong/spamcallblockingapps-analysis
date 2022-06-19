.class Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

.field final synthetic b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Lcom/callapp/contacts/activity/identify/IdentifyContactsData;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$3;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$3;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$3;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->getSuggestedContactId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$3;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->getSuggestedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "Optimize contacts"

    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
