.class final Lcom/callapp/contacts/manager/BlockManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/BlockManager;->b(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/framework/phone/Phone;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/callapp/contacts/manager/BlockManager$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/manager/BlockManager$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/manager/BlockManager$2;->c:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 3

    .line 215
    iget-object p1, p0, Lcom/callapp/contacts/manager/BlockManager$2;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/callapp/contacts/manager/BlockManager$2;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/manager/BlockManager$2;->c:Lcom/callapp/framework/phone/Phone;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/manager/BlockManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v2, 0x0

    .line 1091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method
