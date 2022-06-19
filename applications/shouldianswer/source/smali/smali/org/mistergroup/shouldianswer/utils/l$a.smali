.class final Lorg/mistergroup/shouldianswer/utils/l$a;
.super Ljava/lang/Object;
.source "MigrationHelper.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/utils/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Messenger;

.field private b:Z

.field private c:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->d:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/utils/l$a;)Lkotlin/e/a/b;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->c:Lkotlin/e/a/b;

    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/utils/l$a;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->b:Z

    return p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/utils/l$a;)Landroid/os/Messenger;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->a:Landroid/os/Messenger;

    return-object p0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/utils/l$a;)Landroid/content/Context;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 6

    const-string v0, "org.mistergroup.muzutozvednout"

    const-string v1, "org.mistergroup.shouldianswerpersonal"

    const/4 v2, 0x0

    .line 96
    check-cast v2, Landroid/content/Intent;

    const/4 v3, 0x0

    .line 98
    :try_start_0
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 99
    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_0

    .line 101
    new-instance v4, Landroid/content/Intent;

    const-string v5, "org.mistergroup.shouldianswerpersonal.MigrationService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-nez v2, :cond_1

    .line 108
    :try_start_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 109
    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.mistergroup.muzutozvednout.MigrationService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-object v2
.end method

.method public final a(Lkotlin/e/a/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->c:Lkotlin/e/a/b;

    .line 120
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/utils/l$a;->a()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->d:Landroid/content/Context;

    move-object v1, p0

    check-cast v1, Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x0

    const-string v1, "MigrationHelper.migrate serviceConnected"

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 128
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->a:Landroid/os/Messenger;

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->b:Z

    .line 130
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 131
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/l;->a:Lorg/mistergroup/shouldianswer/utils/l$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/utils/l$b;->a()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->what:I

    .line 133
    new-instance p2, Landroid/os/Messenger;

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/l$c;

    new-instance v1, Lorg/mistergroup/shouldianswer/utils/l$a$a;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/utils/l$a$a;-><init>(Lorg/mistergroup/shouldianswer/utils/l$a;)V

    check-cast v1, Lkotlin/e/a/b;

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/utils/l$c;-><init>(Lkotlin/e/a/b;)V

    check-cast v0, Landroid/os/Handler;

    invoke-direct {p2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 140
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->a:Landroid/os/Messenger;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x0

    const-string v1, "MigrationHelper.migrate serviceDisconnected"

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 145
    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->a:Landroid/os/Messenger;

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/l$a;->b:Z

    return-void
.end method
