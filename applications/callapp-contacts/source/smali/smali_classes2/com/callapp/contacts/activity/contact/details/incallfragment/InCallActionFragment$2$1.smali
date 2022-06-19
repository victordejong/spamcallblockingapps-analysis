.class Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$1;
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
.field final synthetic a:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$1;->a:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$1;->c:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;->b:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$1;->a:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    iget v1, v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->simId:I

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;ILjava/lang/String;)V

    return-void
.end method
