.class public Lcom/callapp/contacts/loader/api/LoadContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/callapp/contacts/model/contact/ContactData;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/callapp/contacts/event/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/Callback<",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/callapp/contacts/loader/api/ContactLoader;

.field f:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;Ljava/util/Set;Lcom/callapp/contacts/event/Callback;Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;",
            "Lcom/callapp/contacts/event/Callback<",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ">;",
            "Lcom/callapp/contacts/loader/api/ContactLoader;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p4, p0, Lcom/callapp/contacts/loader/api/LoadContext;->d:Lcom/callapp/contacts/event/Callback;

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 41
    iput-object p2, p0, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 42
    iput-object p3, p0, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    .line 43
    iput-object p5, p0, Lcom/callapp/contacts/loader/api/LoadContext;->e:Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method

.method public static a(Lcom/callapp/contacts/manager/task/Task;)V
    .locals 1

    .line 55
    sget-object v0, Lb/a;->a:Lb/a$a;

    invoke-static {p0}, Lb/a$a;->a(Lcom/callapp/contacts/manager/task/Task;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/callapp/contacts/framework/util/MultiTaskRunner;
    .locals 2

    .line 67
    new-instance v0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-static {}, Lkotlinx/coroutines/az;->c()Lkotlinx/coroutines/af;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>(Lkotlin/c/f;)V

    iget-object v1, p0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1029
    iput-object v1, v0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 77
    iget-object p2, p0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isInSync()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b()V

    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->c()V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/LoadContext;->e:Lcom/callapp/contacts/loader/api/ContactLoader;

    iget-object v0, v0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->ignoreQuotaException:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p2, p2, Lcom/callapp/contacts/loader/social/QuotaReachedException;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 113
    iget-object p2, p0, Lcom/callapp/contacts/loader/api/LoadContext;->e:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->stopLoader(Ljava/lang/Class;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/LoadContext;->d:Lcom/callapp/contacts/event/Callback;

    invoke-interface {v0, p0, p1}, Lcom/callapp/contacts/event/Callback;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/loader/api/ContactDataLoader;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)Z"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/LoadContext;->e:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/loader/api/ContactLoader;->shouldLoad(Lcom/callapp/contacts/loader/api/ContactDataLoader;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;)Z"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/LoadContext;->e:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->isLoaderStopped(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;
    .locals 2

    .line 71
    new-instance v0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    iget-object v1, p0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2029
    iput-object v1, v0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/api/LoadContext;->getLoaders()Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/loader/api/ContactDataLoader;

    .line 146
    invoke-interface {v1}, Lcom/callapp/contacts/loader/api/ContactDataLoader;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFlags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/loader/api/LoaderFlags;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/LoadContext;->e:Lcom/callapp/contacts/loader/api/ContactLoader;

    iget-object v0, v0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    return-object v0
.end method

.method public getLoaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/LoadContext;->e:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->getLoaders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/api/LoadContext;->f:Z

    return v0
.end method
