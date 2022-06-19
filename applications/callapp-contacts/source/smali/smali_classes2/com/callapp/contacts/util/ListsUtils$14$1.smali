.class Lcom/callapp/contacts/util/ListsUtils$14$1;
.super Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils$14;->onRowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ListsUtils$14;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ListsUtils$14;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$14$1;->a:Lcom/callapp/contacts/util/ListsUtils$14;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Z)V
    .locals 1

    .line 411
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object p3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v0, 0x0

    .line 1091
    invoke-virtual {p1, p2, p3, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
