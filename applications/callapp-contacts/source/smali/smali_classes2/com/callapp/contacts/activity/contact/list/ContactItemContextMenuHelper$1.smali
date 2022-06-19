.class final Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/app/Activity;Ljava/util/List;IZZLcom/callapp/contacts/action/ActionDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/ActionDoneListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$1;->a:Lcom/callapp/contacts/action/ActionDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 71
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v1, 0x0

    .line 1091
    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 72
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$1;->a:Lcom/callapp/contacts/action/ActionDoneListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 73
    invoke-interface {p1, p2}, Lcom/callapp/contacts/action/ActionDoneListener;->a(Z)V

    :cond_0
    return-void
.end method
