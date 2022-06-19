.class public Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/event/FieldListenerRegistry;


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Lcom/callapp/contacts/model/contact/ContactData;

.field protected final c:Lcom/callapp/contacts/loader/api/ContactLoader;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private final f:Lcom/callapp/contacts/manager/task/Task;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->a:Ljava/util/Map;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->e:Z

    .line 42
    new-instance v0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry$1;-><init>(Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;)V

    iput-object v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->f:Lcom/callapp/contacts/manager/task/Task;

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->d:Ljava/util/Set;

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->c:Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->d:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;)Z
    .locals 1

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;)Ljava/util/Set;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->d:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    iget-boolean p1, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->e:Z

    if-eqz p1, :cond_0

    .line 1090
    sget-object p1, Lb/a;->a:Lb/a$a;

    iget-object p1, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->f:Lcom/callapp/contacts/manager/task/Task;

    const-wide/16 v0, 0xc8

    invoke-static {}, Lkotlinx/coroutines/az;->a()Lkotlinx/coroutines/af;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lb/a$a;->a(Lcom/callapp/contacts/manager/task/Task;JLkotlin/c/f;)Lkotlinx/coroutines/as;

    const/4 p1, 0x0

    .line 1091
    iput-boolean p1, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->e:Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setValue(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;->b:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method
