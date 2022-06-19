.class Lcom/callapp/contacts/CallAppApplication$29;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 1510
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$29;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 1513
    invoke-static {}, Lcom/callapp/contacts/manager/messaging/FcmManager;->get()Lcom/callapp/contacts/manager/messaging/FcmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/messaging/FcmManager;->a()V

    return-void
.end method
