.class Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1;->a(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$2$1$1$1;->a:Lcom/callapp/framework/phone/Phone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1203e1

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 246
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f12027f

    invoke-static {v4, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/SmsUtils;->b(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    return-void
.end method
