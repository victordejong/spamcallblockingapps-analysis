.class Lcom/callapp/contacts/util/ListsUtils$11$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils$11;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ListsUtils$11;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ListsUtils$11;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$11$1;->a:Lcom/callapp/contacts/util/ListsUtils$11;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$11$1;->a:Lcom/callapp/contacts/util/ListsUtils$11;

    iget-object v0, v0, Lcom/callapp/contacts/util/ListsUtils$11;->a:Lcom/callapp/contacts/event/listener/Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/event/listener/Listener;->a(Ljava/lang/Object;)V

    return-void
.end method
