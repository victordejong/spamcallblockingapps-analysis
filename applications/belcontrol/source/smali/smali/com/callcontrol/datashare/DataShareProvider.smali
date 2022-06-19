.class public Lcom/callcontrol/datashare/DataShareProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callcontrol/datashare/DataShareProvider$c;,
        Lcom/callcontrol/datashare/DataShareProvider$d;
    }
.end annotation


# static fields
.field public static final a:Lmm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmm1<",
            "Lr81$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmm1;

    const-class v1, Lr81$b;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lmm1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/callcontrol/datashare/DataShareProvider;->a:Lmm1;

    sget-object v1, Lr81$b;->b:Lr81$b;

    const-string v2, "com.callcontrol.datashare"

    const-string v3, "lookup/call/*"

    invoke-virtual {v0, v2, v3, v1}, Lmm1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)V

    sget-object v1, Lr81$b;->c:Lr81$b;

    const-string v3, "lookup/text/*"

    invoke-virtual {v0, v2, v3, v1}, Lmm1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)V

    sget-object v1, Lr81$b;->a:Lr81$b;

    const-string v3, "token"

    invoke-virtual {v0, v2, v3, v1}, Lmm1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_3

    array-length v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_0

    return-object p3

    :cond_0
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    aget-object v5, p3, v2

    aput-object v5, v0, v3

    move v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Count of default set of columns must match the provided values!"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p2

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const-string v1, "ts = ?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length p2, p3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "token"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p2, 0x0

    aget-object p3, p3, p2

    invoke-static {p1, p3}, Lr81;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-array p3, v1, [Ljava/lang/String;

    aput-object p1, p3, p2

    invoke-virtual {v2, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final d(Landroid/net/Uri;Lq71$e;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const-string v0, "name"

    const-string v1, "reason"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/callcontrol/datashare/DataShareProvider;->b([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, p3, v4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p3, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    invoke-static {p1, p2}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object p2

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    iget-object v7, p2, Ln91$b;->f:Ljava/lang/String;

    if-nez v7, :cond_3

    new-instance v7, Lu81;

    invoke-direct {v7}, Lu81;-><init>()V

    invoke-virtual {v7, p1, v6}, Lu81;->F(Li91;Ljava/lang/String;)Lu81;

    iget-object v7, v7, Lu81;->d:Ljava/lang/String;

    iput-object v7, p2, Ln91$b;->f:Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p2, Ln91$b;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    sget-object v0, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Doing server lookup"

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/callcontrol/datashare/DataShareProvider$d;

    invoke-direct {v0, v6}, Lcom/callcontrol/datashare/DataShareProvider$d;-><init>(Lcom/callcontrol/datashare/DataShareProvider$a;)V

    new-array v7, v5, [Lcom/callcontrol/datashare/DataShareProvider$c;

    new-instance v8, Lcom/callcontrol/datashare/DataShareProvider$a;

    invoke-direct {v8, p0, p1, p2}, Lcom/callcontrol/datashare/DataShareProvider$a;-><init>(Lcom/callcontrol/datashare/DataShareProvider;Li91;Ln91$b;)V

    aput-object v8, v7, v3

    invoke-virtual {v0, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    invoke-static {v0}, Lcom/callcontrol/datashare/DataShareProvider$d;->a(Lcom/callcontrol/datashare/DataShareProvider$d;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p2, Ln91$b;->f:Ljava/lang/String;

    aput-object v0, p1, v3

    iget-boolean v0, p2, Ln91$b;->b:Z

    if-eqz v0, :cond_5

    iget-object p2, p2, Ln91$b;->a:Ln91$a;

    invoke-virtual {p2}, Ln91$a;->a()I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_5
    aput-object v6, p1, v5

    invoke-virtual {p0, v1, p3, p1}, Lcom/callcontrol/datashare/DataShareProvider;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-object v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lr81$b;)Ljava/lang/String;
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "Unable to verify package"

    if-eqz v2, :cond_9

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lr71;->i(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_6

    sget-object v6, Lr81$b;->b:Lr81$b;

    const/4 v7, 0x0

    if-ne p1, v6, :cond_1

    sget-object v6, Lr81;->m:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Call filtering support must be declared in manifest!"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v5, Lr81$b;->c:Lr81$b;

    if-ne p1, v5, :cond_3

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v5, Lr81;->l:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Text messages filtering support must be declared in manifest!"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lr81;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr81$a;

    move-result-object p1

    sget-object v3, Lr81$a;->d:Lr81$a;

    if-eq p1, v3, :cond_5

    sget-object v3, Lr81$a;->a:Lr81$a;

    if-ne p1, v3, :cond_4

    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.callcontrol.datashare.intent.action.3RD_PARTY_ACCESS"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3222

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v3, Lz7$e;

    const-string v4, "cca_service"

    invoke-direct {v3, v1, v4}, Lz7$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f080111

    invoke-virtual {v3, v4}, Lz7$e;->F(I)Lz7$e;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const v6, 0x7f11023c

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lz7$e;->r(Ljava/lang/CharSequence;)Lz7$e;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const v8, 0x7f11023b

    invoke-virtual {v1, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lz7$e;->q(Ljava/lang/CharSequence;)Lz7$e;

    invoke-virtual {v3, p1}, Lz7$e;->p(Landroid/app/PendingIntent;)Lz7$e;

    new-instance p1, Lz7$c;

    invoke-direct {p1}, Lz7$c;-><init>()V

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lz7$c;->m(Ljava/lang/CharSequence;)Lz7$c;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-virtual {v1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lz7$c;->l(Ljava/lang/CharSequence;)Lz7$c;

    invoke-virtual {v3, p1}, Lz7$e;->H(Lz7$g;)Lz7$e;

    const-string p1, "notification"

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_4

    const v1, 0x18fb4

    invoke-virtual {v3}, Lz7$e;->c()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Access denied"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Manifest must declare at least one integration category!"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "This app is blocked by Call Control Company"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Call without context"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Access rights violation"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/callcontrol/datashare/DataShareProvider;->a:Lmm1;

    invoke-virtual {v0, p1}, Lmm1;->b(Landroid/net/Uri;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lr81$b;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/callcontrol/datashare/DataShareProvider$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "vnd.android.cursor.item/lookup_result"

    return-object p1

    :cond_2
    const-string p1, "vnd.android.cursor.item/token_result"

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
    .locals 3

    sget-object p5, Lcom/callcontrol/datashare/DataShareProvider;->a:Lmm1;

    invoke-virtual {p5, p1}, Lmm1;->b(Landroid/net/Uri;)Ljava/lang/Enum;

    move-result-object p5

    check-cast p5, Lr81$b;

    const-string v0, " is not allowed for query"

    if-eqz p5, :cond_4

    invoke-virtual {p0, p5}, Lcom/callcontrol/datashare/DataShareProvider;->e(Lr81$b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/callcontrol/datashare/DataShareProvider$b;->a:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p5, v2, p5

    const/4 v2, 0x1

    if-eq p5, v2, :cond_3

    const/4 p3, 0x2

    if-eq p5, p3, :cond_2

    const/4 p3, 0x3

    if-ne p5, p3, :cond_1

    sget-object p3, Lr71$a;->y0:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->i()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Lr81;

    invoke-direct {p4}, Lr81;-><init>()V

    invoke-virtual {p4, v1}, Lr81;->N(Ljava/lang/String;)I

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p3, v1}, Lr71$a;->o(Ljava/lang/String;)V

    :cond_0
    sget-object p3, Lq71$e;->c:Lq71$e;

    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/callcontrol/datashare/DataShareProvider;->d(Landroid/net/Uri;Lq71$e;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    sget-object p3, Lq71$e;->b:Lq71$e;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, p3, p4}, Lcom/callcontrol/datashare/DataShareProvider;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
