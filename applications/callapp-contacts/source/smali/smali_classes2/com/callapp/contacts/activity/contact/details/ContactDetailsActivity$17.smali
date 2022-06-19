.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->loadContactWhenCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/callapp/framework/phone/Phone;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;JLcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 1186
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$17;->c:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-wide p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$17;->a:J

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$17;->b:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1189
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$17;->c:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-wide v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$17;->a:J

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$17;->b:Lcom/callapp/framework/phone/Phone;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Z)V

    return-void
.end method
