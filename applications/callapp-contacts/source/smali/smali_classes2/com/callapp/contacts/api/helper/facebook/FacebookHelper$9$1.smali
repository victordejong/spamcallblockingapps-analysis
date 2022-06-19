.class Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;Ljava/util/List;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9$1;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9$1;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9$1;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/contacts/loader/external/ExternalSourcesUtils;->a(Ljava/util/List;)V

    return-void
.end method
