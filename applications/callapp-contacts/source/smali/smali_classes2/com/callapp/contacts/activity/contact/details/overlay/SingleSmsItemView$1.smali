.class Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->a(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 67
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->OVERLAY_LINK_CLICKED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 1091
    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->a(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;Z)Z

    return-void
.end method
