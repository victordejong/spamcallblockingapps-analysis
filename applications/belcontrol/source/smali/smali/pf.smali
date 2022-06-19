.class public final Lpf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpf$b;,
        Lpf$c;,
        Lpf$a;
    }
.end annotation


# static fields
.field public static final b:Z

.field public static final c:Ljava/lang/Object;

.field public static volatile d:Lpf;


# instance fields
.field public a:Lpf$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaSessionManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lpf;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpf;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Lrf;

    invoke-direct {v0, p1}, Lrf;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lpf;->a:Lpf$a;

    goto :goto_1

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Lqf;

    invoke-direct {v0, p1}, Lqf;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lsf;

    invoke-direct {v0, p1}, Lsf;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Lpf;
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lpf;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lpf;->d:Lpf;

    if-nez v1, :cond_0

    new-instance v1, Lpf;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lpf;-><init>(Landroid/content/Context;)V

    sput-object v1, Lpf;->d:Lpf;

    :cond_0
    sget-object p0, Lpf;->d:Lpf;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(Lpf$b;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lpf;->a:Lpf$a;

    iget-object p1, p1, Lpf$b;->a:Lpf$c;

    invoke-interface {v0, p1}, Lpf$a;->a(Lpf$c;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "userInfo should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
