.class Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$2;->b:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$2;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$2;->b:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;->b:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$2;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getVerificationStatus()I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;I)V

    return-void
.end method
