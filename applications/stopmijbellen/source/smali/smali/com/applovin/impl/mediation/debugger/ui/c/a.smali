.class public Lcom/applovin/impl/mediation/debugger/ui/c/a;
.super Lcom/applovin/impl/mediation/debugger/ui/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/applovin/impl/mediation/debugger/ui/c/b;

.field private b:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a;-><init>()V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a;->communicatorTopics:Ljava/util/List;

    const-string v1, "adapter_initialization_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a;->communicatorTopics:Ljava/util/List;

    const-string v1, "network_sdk_version_updated"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/mediation/debugger/ui/c/a;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/mediation/debugger/ui/a$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/debugger/ui/a;->startActivity(Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/mediation/debugger/ui/a$a;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/applovin/impl/mediation/debugger/a/b/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/b/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/c/b;

    invoke-direct {v0, p1, p0}, Lcom/applovin/impl/mediation/debugger/ui/c/b;-><init>(Lcom/applovin/impl/mediation/debugger/a/b/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/c/a;->a:Lcom/applovin/impl/mediation/debugger/ui/c/b;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/c/a$1;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/c/a$1;-><init>(Lcom/applovin/impl/mediation/debugger/ui/c/a;Lcom/applovin/impl/mediation/debugger/a/b/b;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->a(Lcom/applovin/impl/mediation/debugger/ui/d/d$a;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/applovin/sdk/R$layout;->list_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/a;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/c/a;->a:Lcom/applovin/impl/mediation/debugger/ui/c/b;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "adapter_class"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/c/a;->a:Lcom/applovin/impl/mediation/debugger/ui/c/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a()Lcom/applovin/impl/mediation/debugger/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/b/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/a;->a:Lcom/applovin/impl/mediation/debugger/ui/c/b;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c()V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/a;->a:Lcom/applovin/impl/mediation/debugger/ui/c/b;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->i()V

    :cond_0
    return-void
.end method
