.class Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;
.super Lcom/callapp/contacts/loader/BaseLoaderTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/loader/social/BaseSocialLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/ContactDataLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;->c:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    iput-object p4, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/loader/BaseLoaderTask;-><init>(Lcom/callapp/contacts/loader/api/ContactDataLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;->c:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    iget-object v1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0, v1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/model/contact/ContactData;)V
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/callapp/contacts/loader/social/UnauthorizedAccessErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v2, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;->c:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 200
    iget-object v1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Ljava/lang/Exception;)V

    return-void
.end method
