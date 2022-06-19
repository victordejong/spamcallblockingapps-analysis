.class public abstract Lfydialer/ContactAccessor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sInstance:Lfydialer/ContactAccessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/ContentResolver;)Lfydialer/ContactAccessor;
    .locals 3

    const-class v0, Lfydialer/ContactAccessor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lfydialer/ContactAccessor;->sInstance:Lfydialer/ContactAccessor;

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const-string v1, "fydialer.ContactAccessorSdk3_4"

    goto :goto_0

    :cond_0
    const-string v1, "fydialer.ContactAccessorSdk5"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfydialer/ContactAccessor;

    sput-object v1, Lfydialer/ContactAccessor;->sInstance:Lfydialer/ContactAccessor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, p0}, Lfydialer/ContactAccessor;->setContentResolver(Landroid/content/ContentResolver;)V

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    sget-object p0, Lfydialer/ContactAccessor;->sInstance:Lfydialer/ContactAccessor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract addToContacts(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public getCallLogIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public abstract getContactSplit()Lfydialer/IContactSplit;
.end method

.method public abstract getContactsIntent()Landroid/content/Intent;
.end method

.method public abstract getFavouritesIntent()Landroid/content/Intent;
.end method

.method public abstract recalculate(Ljava/lang/String;Z)Landroid/database/Cursor;
.end method

.method public abstract setContentResolver(Landroid/content/ContentResolver;)V
.end method
