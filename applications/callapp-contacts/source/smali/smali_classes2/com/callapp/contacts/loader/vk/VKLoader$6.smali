.class Lcom/callapp/contacts/loader/vk/VKLoader$6;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/vk/VKLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/loader/vk/VKLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/vk/VKLoader;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/callapp/contacts/loader/vk/VKLoader$6;->b:Lcom/callapp/contacts/loader/vk/VKLoader;

    iput-object p2, p0, Lcom/callapp/contacts/loader/vk/VKLoader$6;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/loader/vk/VKLoader$6;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateAddresses()V

    return-void
.end method
