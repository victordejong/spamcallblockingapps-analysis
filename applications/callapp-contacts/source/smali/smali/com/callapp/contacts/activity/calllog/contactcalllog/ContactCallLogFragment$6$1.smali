.class Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;Ljava/util/List;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6$1;->b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6$1;->b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;->a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->setData(Ljava/util/List;)V

    return-void
.end method
