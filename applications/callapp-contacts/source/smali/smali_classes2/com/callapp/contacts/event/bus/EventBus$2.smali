.class public Lcom/callapp/contacts/event/bus/EventBus$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/event/bus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/event/bus/EventType;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/callapp/contacts/event/bus/EventBus;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/callapp/contacts/event/bus/EventBus$2;->c:Lcom/callapp/contacts/event/bus/EventBus;

    iput-object p2, p0, Lcom/callapp/contacts/event/bus/EventBus$2;->a:Lcom/callapp/contacts/event/bus/EventType;

    iput-object p3, p0, Lcom/callapp/contacts/event/bus/EventBus$2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/event/bus/EventBus$2;->c:Lcom/callapp/contacts/event/bus/EventBus;

    iget-object v1, p0, Lcom/callapp/contacts/event/bus/EventBus$2;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/event/bus/EventBus$2;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
