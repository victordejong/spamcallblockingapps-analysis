.class Lcom/callapp/contacts/observers/OneShotContentContentObserver$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/observers/OneShotContentContentObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/observers/OneShotContentContentObserver;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/observers/OneShotContentContentObserver;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/observers/OneShotContentContentObserver$1;->a:Lcom/callapp/contacts/observers/OneShotContentContentObserver;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/observers/OneShotContentContentObserver$1;->a:Lcom/callapp/contacts/observers/OneShotContentContentObserver;

    invoke-static {v0}, Lcom/callapp/contacts/observers/OneShotContentContentObserver;->a(Lcom/callapp/contacts/observers/OneShotContentContentObserver;)Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;->onContentChanged()V

    return-void
.end method
