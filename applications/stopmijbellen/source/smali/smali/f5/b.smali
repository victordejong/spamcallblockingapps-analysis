.class public Lf5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf5/b$c;,
        Lf5/b$b;
    }
.end annotation


# static fields
.field public static final d:Lf5/b$c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lf5/b$b;

.field public c:Lf5/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf5/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf5/b$c;-><init>(Lf5/b$a;)V

    sput-object v0, Lf5/b;->d:Lf5/b$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf5/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf5/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lf5/b;->b:Lf5/b$b;

    .line 4
    sget-object p1, Lf5/b;->d:Lf5/b$c;

    iput-object p1, p0, Lf5/b;->c:Lf5/a;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lf5/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf5/b;->c:Lf5/a;

    invoke-interface {v0}, Lf5/a;->a()V

    .line 2
    sget-object v0, Lf5/b;->d:Lf5/b$c;

    iput-object v0, p0, Lf5/b;->c:Lf5/a;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lf5/b;->a:Landroid/content/Context;

    const-string v1, "com.crashlytics.CollectCustomLogs"

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v1, v2}, Le5/e;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x3

    const-string v0, "FirebaseCrashlytics"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    :cond_1
    const-string v0, "crashlytics-userlog-"

    const-string v1, ".temp"

    .line 6
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lf5/b;->b:Lf5/b$b;

    check-cast v1, Le5/v$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Le5/v$b;->a:Lx2/f;

    invoke-virtual {v1}, Lx2/f;->h()Ljava/io/File;

    move-result-object v1

    const-string v3, "log-files"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_2
    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 p1, 0x10000

    .line 12
    new-instance v1, Lf5/d;

    invoke-direct {v1, v0, p1}, Lf5/d;-><init>(Ljava/io/File;I)V

    iput-object v1, p0, Lf5/b;->c:Lf5/a;

    return-void
.end method
