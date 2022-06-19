.class Lcom/callapp/contacts/loader/LocalGenomeLoader$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/LocalGenomeLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;Lcom/callapp/common/model/json/JSONContact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/loader/LocalGenomeLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/LocalGenomeLoader;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader$2;->b:Lcom/callapp/contacts/loader/LocalGenomeLoader;

    iput-object p2, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/callapp/contacts/loader/LocalGenomeLoader$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    return-void
.end method
