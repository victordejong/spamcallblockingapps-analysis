.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$9;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showBlockedNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V
    .locals 0

    .line 1800
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$9;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 1803
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->blockedCallsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/util/List;)V

    return-void
.end method
