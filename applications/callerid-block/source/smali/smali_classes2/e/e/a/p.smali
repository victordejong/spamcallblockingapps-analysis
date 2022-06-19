.class Le/e/a/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/p$c;,
        Le/e/a/p$b;,
        Le/e/a/p$a;
    }
.end annotation


# instance fields
.field private final a:Le/e/a/p$b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/e/a/p$b;

    invoke-direct {v0}, Le/e/a/p$b;-><init>()V

    iput-object v0, p0, Le/e/a/p;->a:Le/e/a/p$b;

    return-void
.end method

.method public static a()Le/e/a/p;
    .locals 1

    invoke-static {}, Le/e/a/p$a;->a()Le/e/a/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized b(Le/e/a/w$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/e/a/p;->a:Le/e/a/p$b;

    invoke-virtual {v0, p1}, Le/e/a/p$b;->a(Le/e/a/w$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
