.class Lcom/callapp/contacts/manager/ContactLoaderManager$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/ContactLoaderManager;->asyncCreateContactLoaderAndLoad(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:J

.field final synthetic c:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

.field final synthetic d:Lcom/callapp/contacts/manager/ContactLoaderManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/ContactLoaderManager;Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$1;->d:Lcom/callapp/contacts/manager/ContactLoaderManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$1;->a:Lcom/callapp/framework/phone/Phone;

    iput-wide p3, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$1;->b:J

    iput-object p5, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$1;->c:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$1;->d:Lcom/callapp/contacts/manager/ContactLoaderManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$1;->a:Lcom/callapp/framework/phone/Phone;

    iget-wide v2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$1;->b:J

    iget-object v5, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$1;->c:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/ContactLoaderManager;->access$000(Lcom/callapp/contacts/manager/ContactLoaderManager;Lcom/callapp/framework/phone/Phone;JZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method
