.class Lcom/callapp/contacts/event/bus/EventBus$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/event/bus/EventType;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/callapp/contacts/event/bus/EventBus;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/event/bus/EventBus$1;->d:Lcom/callapp/contacts/event/bus/EventBus;

    iput-object p2, p0, Lcom/callapp/contacts/event/bus/EventBus$1;->a:Lcom/callapp/contacts/event/bus/EventType;

    iput-object p3, p0, Lcom/callapp/contacts/event/bus/EventBus$1;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/callapp/contacts/event/bus/EventBus$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/event/bus/EventBus$1;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/event/bus/EventBus$1;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/callapp/contacts/event/bus/EventBus$1;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
