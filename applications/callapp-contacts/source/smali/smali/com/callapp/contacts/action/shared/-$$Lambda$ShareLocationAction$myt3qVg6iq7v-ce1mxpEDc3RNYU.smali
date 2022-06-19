.class public final synthetic Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$myt3qVg6iq7v-ce1mxpEDc3RNYU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/action/shared/ShareLocationAction;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/action/shared/ShareLocationAction;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$myt3qVg6iq7v-ce1mxpEDc3RNYU;->f$0:Lcom/callapp/contacts/action/shared/ShareLocationAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$myt3qVg6iq7v-ce1mxpEDc3RNYU;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$myt3qVg6iq7v-ce1mxpEDc3RNYU;->f$2:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$myt3qVg6iq7v-ce1mxpEDc3RNYU;->f$0:Lcom/callapp/contacts/action/shared/ShareLocationAction;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$myt3qVg6iq7v-ce1mxpEDc3RNYU;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$myt3qVg6iq7v-ce1mxpEDc3RNYU;->f$2:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/action/shared/ShareLocationAction;->lambda$myt3qVg6iq7v-ce1mxpEDc3RNYU(Lcom/callapp/contacts/action/shared/ShareLocationAction;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
