.class public Lcom/callcontrol/datashare/SyncAppsProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callcontrol/datashare/SyncAppsProvider$c;,
        Lcom/callcontrol/datashare/SyncAppsProvider$d;,
        Lcom/callcontrol/datashare/SyncAppsProvider$e;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String; = "com.callcontrol.import"

.field public static c:Ljava/lang/String; = "com.callcontrolhome"

.field public static d:Ljava/lang/String; = "com.callcontrolhomewifi"

.field public static final f:[Ljava/lang/String;

.field public static final g:Lmm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmm1<",
            "Lcom/callcontrol/datashare/SyncAppsProvider$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "type"

    const-string v1, "country"

    const-string v2, "international"

    const-string v3, "address"

    const-string v4, "cchInternational"

    const-string v5, "cchLocal"

    const-string v6, "name"

    const-string v7, "contentType"

    const-string v8, "blockMode"

    const-string v9, "permissionType"

    const-string v10, "modifiedAt"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callcontrol/datashare/SyncAppsProvider;->f:[Ljava/lang/String;

    new-instance v0, Lmm1;

    const-class v1, Lcom/callcontrol/datashare/SyncAppsProvider$e;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lmm1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/callcontrol/datashare/SyncAppsProvider;->g:Lmm1;

    sget-object v1, Lcom/callcontrol/datashare/SyncAppsProvider$e;->c:Lcom/callcontrol/datashare/SyncAppsProvider$e;

    const-string v2, "com.callcontrol.syncapps"

    const-string v3, "rules"

    invoke-virtual {v0, v2, v3, v1}, Lmm1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)V

    sget-object v1, Lcom/callcontrol/datashare/SyncAppsProvider$e;->a:Lcom/callcontrol/datashare/SyncAppsProvider$e;

    const-string v3, "token"

    invoke-virtual {v0, v2, v3, v1}, Lmm1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/callcontrol/datashare/SyncAppsProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/callcontrol/datashare/SyncAppsProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callcontrol/datashare/SyncAppsProvider;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const-string p1, "token"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/database/MatrixCursor;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const-string p1, "Doing get connect token request"

    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/callcontrol/datashare/SyncAppsProvider$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/callcontrol/datashare/SyncAppsProvider$d;-><init>(Lcom/callcontrol/datashare/SyncAppsProvider$a;)V

    new-array v1, p3, [Lcom/callcontrol/datashare/SyncAppsProvider$c;

    new-instance v2, Lcom/callcontrol/datashare/SyncAppsProvider$a;

    invoke-direct {v2, p0}, Lcom/callcontrol/datashare/SyncAppsProvider$a;-><init>(Lcom/callcontrol/datashare/SyncAppsProvider;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    invoke-static {p1}, Lcom/callcontrol/datashare/SyncAppsProvider$d;->a(Lcom/callcontrol/datashare/SyncAppsProvider$d;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/callcontrol/datashare/SyncAppsProvider;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-array p1, p3, [Ljava/lang/String;

    iget-object p3, p0, Lcom/callcontrol/datashare/SyncAppsProvider;->a:Ljava/lang/String;

    aput-object p3, p1, v3

    invoke-virtual {p2, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p2
.end method

.method public final c()Landroid/database/Cursor;
    .locals 4

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/callcontrol/datashare/SyncAppsProvider;->f:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-instance v1, Lx81;

    invoke-direct {v1}, Lx81;-><init>()V

    invoke-virtual {v1}, Lv71;->m()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    new-instance v2, Lx81;

    invoke-direct {v2}, Lx81;-><init>()V

    invoke-virtual {v2, v1}, Lx81;->J(Landroid/database/Cursor;)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public final d(Lcom/callcontrol/datashare/SyncAppsProvider$e;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq p1, v0, :cond_5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "Unable to verify"

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/callcontrol/datashare/SyncAppsProvider;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/callcontrol/datashare/SyncAppsProvider;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/callcontrol/datashare/SyncAppsProvider;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Not allowed by Call Control Company"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Call without context"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Access rights violation"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/callcontrol/datashare/SyncAppsProvider;->g:Lmm1;

    invoke-virtual {v0, p1}, Lmm1;->b(Landroid/net/Uri;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/callcontrol/datashare/SyncAppsProvider$e;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/callcontrol/datashare/SyncAppsProvider$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "vnd.android.cursor.item/rules_result"

    return-object p1

    :cond_2
    const-string p1, "vnd.android.cursor.item/connect_token_result"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    invoke-static {}, Ls71;->e()V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    sget-object p2, Lcom/callcontrol/datashare/SyncAppsProvider;->g:Lmm1;

    invoke-virtual {p2, p1}, Lmm1;->b(Landroid/net/Uri;)Ljava/lang/Enum;

    move-result-object p2

    check-cast p2, Lcom/callcontrol/datashare/SyncAppsProvider$e;

    const-string p5, " is not allowed for query"

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/callcontrol/datashare/SyncAppsProvider;->d(Lcom/callcontrol/datashare/SyncAppsProvider$e;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/callcontrol/datashare/SyncAppsProvider$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Lcom/callcontrol/datashare/SyncAppsProvider;->c()Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p0, v0, p3, p4}, Lcom/callcontrol/datashare/SyncAppsProvider;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
