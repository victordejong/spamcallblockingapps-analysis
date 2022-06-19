.class public Lv2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/j$a;
    }
.end annotation


# instance fields
.field public final a:Lv2/j$a;

.field public final b:Lv2/i;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lv2/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv2/i;)V
    .locals 1

    .line 1
    new-instance v0, Lv2/j$a;

    invoke-direct {v0, p1}, Lv2/j$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lv2/j;->c:Ljava/util/Map;

    .line 4
    iput-object v0, p0, Lv2/j;->a:Lv2/j$a;

    .line 5
    iput-object p2, p0, Lv2/j;->b:Lv2/i;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lv2/k;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv2/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv2/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lv2/j;->a:Lv2/j$a;

    invoke-virtual {v0, p1}, Lv2/j$a;->a(Ljava/lang/String;)Lv2/d;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_2
    iget-object v1, p0, Lv2/j;->b:Lv2/i;

    .line 6
    iget-object v2, v1, Lv2/i;->a:Landroid/content/Context;

    iget-object v3, v1, Lv2/i;->b:Lb3/a;

    iget-object v1, v1, Lv2/i;->c:Lb3/a;

    .line 7
    new-instance v4, Lv2/c;

    invoke-direct {v4, v2, v3, v1, p1}, Lv2/c;-><init>(Landroid/content/Context;Lb3/a;Lb3/a;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v4}, Lv2/d;->create(Lv2/h;)Lv2/k;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lv2/j;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
