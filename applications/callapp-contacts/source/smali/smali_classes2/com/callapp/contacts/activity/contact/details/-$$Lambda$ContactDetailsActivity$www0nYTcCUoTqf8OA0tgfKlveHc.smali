.class public final synthetic Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$www0nYTcCUoTqf8OA0tgfKlveHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

.field public final synthetic f$1:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$www0nYTcCUoTqf8OA0tgfKlveHc;->f$0:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$www0nYTcCUoTqf8OA0tgfKlveHc;->f$1:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$www0nYTcCUoTqf8OA0tgfKlveHc;->f$0:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$www0nYTcCUoTqf8OA0tgfKlveHc;->f$1:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->lambda$onContactChanged$8$ContactDetailsActivity(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
