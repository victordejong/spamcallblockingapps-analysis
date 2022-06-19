.class Lcom/callapp/contacts/CallAppApplication$19;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$19;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 973
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$19;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v1}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;)Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/CallAppApplication$19$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/CallAppApplication$19$1;-><init>(Lcom/callapp/contacts/CallAppApplication$19;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/objectbox/query/Query;->a(Lio/objectbox/query/c;)V

    .line 981
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$19;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v1}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;)Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    return-void
.end method
