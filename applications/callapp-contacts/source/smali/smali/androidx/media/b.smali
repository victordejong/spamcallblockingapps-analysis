.class public final Landroidx/media/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/b$b;,
        Landroidx/media/b$c;,
        Landroidx/media/b$a;
    }
.end annotation


# static fields
.field static final a:Z

.field private static final c:Ljava/lang/Object;

.field private static volatile d:Landroidx/media/b;


# instance fields
.field b:Landroidx/media/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaSessionManager"

    const/4 v1, 0x3

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media/b;->a:Z

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media/b;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 70
    new-instance v0, Landroidx/media/d;

    invoke-direct {v0, p1}, Landroidx/media/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media/b;->b:Landroidx/media/b$a;

    return-void

    .line 71
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 72
    new-instance v0, Landroidx/media/c;

    invoke-direct {v0, p1}, Landroidx/media/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media/b;->b:Landroidx/media/b$a;

    return-void

    .line 74
    :cond_1
    new-instance v0, Landroidx/media/e;

    invoke-direct {v0, p1}, Landroidx/media/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media/b;->b:Landroidx/media/b$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroidx/media/b;
    .locals 2

    if-eqz p0, :cond_1

    .line 60
    sget-object v0, Landroidx/media/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Landroidx/media/b;->d:Landroidx/media/b;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Landroidx/media/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/media/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/media/b;->d:Landroidx/media/b;

    .line 64
    :cond_0
    sget-object p0, Landroidx/media/b;->d:Landroidx/media/b;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Landroidx/media/b$b;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Landroidx/media/b;->b:Landroidx/media/b$a;

    iget-object p1, p1, Landroidx/media/b$b;->a:Landroidx/media/b$c;

    invoke-interface {v0, p1}, Landroidx/media/b$a;->a(Landroidx/media/b$c;)Z

    move-result p1

    return p1

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "userInfo should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
