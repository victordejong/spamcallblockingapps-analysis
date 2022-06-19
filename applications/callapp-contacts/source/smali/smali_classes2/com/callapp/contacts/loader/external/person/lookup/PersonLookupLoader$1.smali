.class Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader$1;->b:Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;

    iput-object p2, p0, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    return-void
.end method
