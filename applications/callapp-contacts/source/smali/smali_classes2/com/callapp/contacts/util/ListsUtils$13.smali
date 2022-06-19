.class final Lcom/callapp/contacts/util/ListsUtils$13;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;IILcom/callapp/contacts/event/listener/Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/event/listener/Listener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/event/listener/Listener;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$13;->a:Lcom/callapp/contacts/event/listener/Listener;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$13;->a:Lcom/callapp/contacts/event/listener/Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/event/listener/Listener;->a(Ljava/lang/Object;)V

    return-void
.end method
