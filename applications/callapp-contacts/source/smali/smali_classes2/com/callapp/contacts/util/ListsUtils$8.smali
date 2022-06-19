.class final Lcom/callapp/contacts/util/ListsUtils$8;
.super Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/callapp/contacts/util/ListsUtils$8;->a:I

    iput-object p2, p0, Lcom/callapp/contacts/util/ListsUtils$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Z)V
    .locals 1

    .line 322
    iget p3, p0, Lcom/callapp/contacts/util/ListsUtils$8;->a:I

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$8;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 323
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->values()[Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    move-result-object p1

    iget p2, p0, Lcom/callapp/contacts/util/ListsUtils$8;->a:I

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/callapp/contacts/util/ListsUtils$8;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;Ljava/lang/String;)V

    .line 325
    :cond_1
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object p3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v0, 0x0

    .line 1091
    invoke-virtual {p1, p2, p3, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
