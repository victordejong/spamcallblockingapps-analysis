.class public Lsf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpf$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsf$a;
    }
.end annotation


# static fields
.field public static final c:Z


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/ContentResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lpf;->b:Z

    sput-boolean v0, Lsf;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsf;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lsf;->b:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Lpf$c;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lsf;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p1}, Lpf$c;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, p1, v1}, Lsf;->d(Lpf$c;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {p0, p1, v1}, Lsf;->d(Lpf$c;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lpf$c;->a()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lsf;->c(Lpf$c;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    nop

    sget-boolean v1, Lsf;->c:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lpf$c;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaSessionManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lsf;->a:Landroid/content/Context;

    return-object v0
.end method

.method public c(Lpf$c;)Z
    .locals 5

    iget-object v0, p0, Lsf;->b:Landroid/content/ContentResolver;

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lpf$c;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final d(Lpf$c;Ljava/lang/String;)Z
    .locals 4

    invoke-interface {p1}, Lpf$c;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    iget-object v0, p0, Lsf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p1}, Lpf$c;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lsf;->a:Landroid/content/Context;

    invoke-interface {p1}, Lpf$c;->b()I

    move-result v3

    invoke-interface {p1}, Lpf$c;->a()I

    move-result p1

    invoke-virtual {v0, p2, v3, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
