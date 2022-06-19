.class Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$4;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    const-string v0, "sms.txt"

    .line 183
    invoke-static {v0}, Lcom/callapp/contacts/framework/log/FileLogger;->b(Ljava/lang/String;)Lcom/callapp/contacts/framework/log/FileLogger;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallAppDebugUtils;->a(Lcom/callapp/contacts/framework/log/FileLogger;)V

    return-void
.end method
