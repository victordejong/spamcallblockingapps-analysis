.class public Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/usecase/UseCase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/manager/usecase/UseCase<",
        "Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;

.field private final b:Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;

.field private c:Lcom/callapp/contacts/manager/usecase/UseCase$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/manager/usecase/UseCase$Callback<",
            "Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/h/a/a;)V
    .locals 2

    .line 19
    new-instance v0, Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;-><init>(Landroid/content/Context;Landroidx/h/a/a;)V

    new-instance v1, Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;

    invoke-direct {v1, p1, p2}, Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;-><init>(Landroid/content/Context;Landroidx/h/a/a;)V

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;-><init>(Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;)V

    return-void
.end method

.method private constructor <init>(Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->a:Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;

    .line 25
    iput-object p2, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->b:Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;

    return-void
.end method

.method private a()V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    new-instance v0, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;

    iget-object v1, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->a:Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;

    iget-object v1, v1, Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;->a:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    iget-object v2, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->b:Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;

    iget-object v2, v2, Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1047
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;-><init>(Landroid/database/Cursor;I)V

    .line 1048
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->c:Lcom/callapp/contacts/manager/usecase/UseCase$Callback;

    invoke-interface {v1, v0}, Lcom/callapp/contacts/manager/usecase/UseCase$Callback;->onResponseReady(Ljava/lang/Object;)V

    return-void

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->c:Lcom/callapp/contacts/manager/usecase/UseCase$Callback;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->a(Lcom/callapp/contacts/manager/usecase/UseCase$Callback;)V

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/database/Cursor;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->a()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->a()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->b:Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;

    new-instance v1, Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$mj8A7gtrhMoKVFkKKUsooiNuL3s;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$mj8A7gtrhMoKVFkKKUsooiNuL3s;-><init>(Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;->a(Lcom/callapp/contacts/manager/usecase/UseCase$Callback;)V

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->a:Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;

    new-instance v1, Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$CrJjOMDpB39Dwb9kSFaXzJ1vanY;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$CrJjOMDpB39Dwb9kSFaXzJ1vanY;-><init>(Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;->a(Lcom/callapp/contacts/manager/usecase/UseCase$Callback;)V

    return-void
.end method

.method public static synthetic lambda$CrJjOMDpB39Dwb9kSFaXzJ1vanY(Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public static synthetic lambda$cfkQu_FbYNCS71XdpADeZ9snCN4(Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->b()V

    return-void
.end method

.method public static synthetic lambda$mj8A7gtrhMoKVFkKKUsooiNuL3s(Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->a(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/usecase/UseCase$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/usecase/UseCase$Callback<",
            "Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;",
            ">;)V"
        }
    .end annotation

    .line 30
    const-class v0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "executeRequest - query"

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->c:Lcom/callapp/contacts/manager/usecase/UseCase$Callback;

    .line 32
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$cfkQu_FbYNCS71XdpADeZ9snCN4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$cfkQu_FbYNCS71XdpADeZ9snCN4;-><init>(Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->a:Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->b:Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
