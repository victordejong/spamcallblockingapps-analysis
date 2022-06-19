.class Lcom/callapp/contacts/action/shared/ShareContactAction$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/callapp/contacts/action/shared/ShareContactAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->c:Lcom/callapp/contacts/action/shared/ShareContactAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 174
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :catch_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
