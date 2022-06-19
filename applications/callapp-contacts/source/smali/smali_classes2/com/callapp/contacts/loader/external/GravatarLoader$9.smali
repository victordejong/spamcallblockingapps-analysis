.class Lcom/callapp/contacts/loader/external/GravatarLoader$9;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/external/GravatarLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/loader/external/GravatarLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/external/GravatarLoader;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$9;->b:Lcom/callapp/contacts/loader/external/GravatarLoader;

    iput-object p2, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$9;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$9;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSocialNetworkIds()V

    return-void
.end method
