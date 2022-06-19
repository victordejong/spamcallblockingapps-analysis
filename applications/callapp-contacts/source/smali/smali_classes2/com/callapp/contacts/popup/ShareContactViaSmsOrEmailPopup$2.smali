.class Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Landroid/app/Activity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;->c:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    iput-object p2, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 126
    new-instance v0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2$1;-><init>(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;)V

    .line 138
    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;->b:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/util/SmsUtils;->a(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;)V

    return-void
.end method
