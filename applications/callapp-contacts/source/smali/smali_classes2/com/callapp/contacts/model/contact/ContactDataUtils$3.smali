.class final Lcom/callapp/contacts/model/contact/ContactDataUtils$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/contact/ContactDataUtils;->updateAllSocialIdsFromFields(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;Lcom/callapp/contacts/loader/api/LoadContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contact:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$3;->val$contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$3;->val$contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFoursquareId()V

    return-void
.end method
