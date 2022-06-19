.class abstract Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/h/a/a$a;
.implements Lcom/callapp/contacts/manager/usecase/UseCase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/h/a/a$a<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/callapp/contacts/manager/usecase/UseCase<",
        "TResponse;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponse;"
        }
    .end annotation
.end field

.field private final b:Landroidx/h/a/a;

.field private final c:Landroid/content/Context;

.field private d:Lcom/callapp/contacts/manager/usecase/UseCase$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/manager/usecase/UseCase$Callback<",
            "TResponse;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/h/a/a;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->c:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->b:Landroidx/h/a/a;

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->f:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->a:Ljava/lang/Object;

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->d:Lcom/callapp/contacts/manager/usecase/UseCase$Callback;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->a(Lcom/callapp/contacts/manager/usecase/UseCase$Callback;)V

    return-void
.end method

.method public static synthetic lambda$aNCIIahUGSwUQ4wqAHaZPNtQlVY(Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->b()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/h/b/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/h/b/c<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v7, Landroidx/h/b/b;

    iget-object v1, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->c:Landroid/content/Context;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/h/b/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->getProjection()[Ljava/lang/String;

    move-result-object v0

    .line 1207
    iput-object v0, v7, Landroidx/h/b/b;->c:[Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->getSelection()Ljava/lang/String;

    move-result-object v0

    .line 1216
    iput-object v0, v7, Landroidx/h/b/b;->d:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    .line 1225
    iput-object v0, v7, Landroidx/h/b/b;->e:[Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    .line 1234
    iput-object v0, v7, Landroidx/h/b/b;->f:Ljava/lang/String;

    return-object v7
.end method

.method protected abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TResponse;"
        }
    .end annotation
.end method

.method public a(Landroidx/h/b/c;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/h/b/c<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully recovered from a null value succeeded in retry number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->a:Ljava/lang/Object;

    .line 112
    iget-object p2, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->d:Lcom/callapp/contacts/manager/usecase/UseCase$Callback;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/manager/usecase/UseCase$Callback;->onResponseReady(Ljava/lang/Object;)V

    return-void

    .line 114
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    .line 115
    iget-object p1, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->f:Landroid/os/Handler;

    new-instance p2, Lcom/callapp/contacts/manager/usecase/-$$Lambda$BaseLoadContactsUseCase$aNCIIahUGSwUQ4wqAHaZPNtQlVY;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/manager/usecase/-$$Lambda$BaseLoadContactsUseCase$aNCIIahUGSwUQ4wqAHaZPNtQlVY;-><init>(Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;)V

    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    mul-int/lit8 v0, v0, 0x46

    int-to-long v0, v0

    .line 115
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 118
    :cond_2
    iget-object p2, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Load finished for loader Id: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->getLoaderId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retried 3 times and still no response"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->getLoaderId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Contact List"

    .line 120
    invoke-virtual {p1, v0, p2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->d:Lcom/callapp/contacts/manager/usecase/UseCase$Callback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/callapp/contacts/manager/usecase/UseCase$Callback;->onResponseReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic a(Landroidx/h/b/c;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->a(Landroidx/h/b/c;Landroid/database/Cursor;)V

    return-void
.end method

.method public a(Lcom/callapp/contacts/manager/usecase/UseCase$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/usecase/UseCase$Callback<",
            "TResponse;>;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->d:Lcom/callapp/contacts/manager/usecase/UseCase$Callback;

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->getLoaderId()I

    move-result p1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->b:Landroidx/h/a/a;

    invoke-virtual {v0, p1}, Landroidx/h/a/a;->a(I)Landroidx/h/b/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    const-class v0, Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "initLoader - query with loader id "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->b:Landroidx/h/a/a;

    invoke-virtual {v0, p1, p0}, Landroidx/h/a/a;->a(ILandroidx/h/a/a$a;)Landroidx/h/b/c;

    return-void

    .line 51
    :cond_0
    const-class v0, Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "restartLoader - query with loader id "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->b:Landroidx/h/a/a;

    invoke-virtual {v0, p1, p0}, Landroidx/h/a/a;->b(ILandroidx/h/a/a$a;)Landroidx/h/b/c;

    return-void
.end method

.method protected abstract getLoaderId()I
.end method

.method abstract getProjection()[Ljava/lang/String;
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 1

    const-string v0, "mimetype= ? AND data1 IS NOT NULL AND data1 != ? AND account_type != ?"

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 3

    const-string v0, "vnd.android.cursor.item/phone_v2"

    const-string v1, ""

    const-string v2, "CallApp"

    .line 82
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    const-string v0, "CAST(replace(display_name,\' \',\'\') AS INTEGER) ASC, display_name COLLATE NOCASE ASC, contact_id ASC, is_super_primary DESC, is_primary DESC"

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
