.class public abstract Landroidx/work/l;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/l$a;
    }
.end annotation


# static fields
.field private static a:Landroidx/work/l;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "WM-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x17

    sput v0, Landroidx/work/l;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static declared-synchronized a()Landroidx/work/l;
    .locals 3

    .prologue
    .line 75
    const-class v1, Landroidx/work/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/work/l;->a:Landroidx/work/l;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroidx/work/l$a;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroidx/work/l$a;-><init>(I)V

    sput-object v0, Landroidx/work/l;->a:Landroidx/work/l;

    .line 78
    :cond_0
    sget-object v0, Landroidx/work/l;->a:Landroidx/work/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    const-string/jumbo v2, "WM-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget v2, Landroidx/work/l;->b:I

    if-lt v0, v2, :cond_0

    .line 58
    const/4 v0, 0x0

    sget v2, Landroidx/work/l;->b:I

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroidx/work/l;)V
    .locals 2

    .prologue
    .line 45
    const-class v0, Landroidx/work/l;

    monitor-enter v0

    :try_start_0
    sput-object p0, Landroidx/work/l;->a:Landroidx/work/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public varargs abstract a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method
