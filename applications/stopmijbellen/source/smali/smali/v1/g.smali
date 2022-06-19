.class public Lv1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/s;


# static fields
.field public static e:Lv1/g;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ls/a;

    invoke-direct {v0}, Ls/a;-><init>()V

    iput-object v0, p0, Lv1/g;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lv1/g;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ls/d;

    invoke-direct {v0}, Ls/d;-><init>()V

    iput-object v0, p0, Lv1/g;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, Ls/a;

    invoke-direct {v0}, Ls/a;-><init>()V

    iput-object v0, p0, Lv1/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;La2/a;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    new-instance v0, Lv1/a;

    invoke-direct {v0, p1, p2}, Lv1/a;-><init>(Landroid/content/Context;La2/a;)V

    iput-object v0, p0, Lv1/g;->a:Ljava/lang/Object;

    .line 9
    new-instance v0, Lv1/b;

    invoke-direct {v0, p1, p2}, Lv1/b;-><init>(Landroid/content/Context;La2/a;)V

    iput-object v0, p0, Lv1/g;->b:Ljava/lang/Object;

    .line 10
    new-instance v0, Lv1/e;

    invoke-direct {v0, p1, p2}, Lv1/e;-><init>(Landroid/content/Context;La2/a;)V

    iput-object v0, p0, Lv1/g;->c:Ljava/lang/Object;

    .line 11
    new-instance v0, Lv1/f;

    invoke-direct {v0, p1, p2}, Lv1/f;-><init>(Landroid/content/Context;La2/a;)V

    iput-object v0, p0, Lv1/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo4/s;Lo4/s;Lo4/s;Lo4/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/g;->a:Ljava/lang/Object;

    iput-object p2, p0, Lv1/g;->b:Ljava/lang/Object;

    iput-object p3, p0, Lv1/g;->c:Ljava/lang/Object;

    iput-object p4, p0, Lv1/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;La2/a;)Lv1/g;
    .locals 2

    const-class v0, Lv1/g;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lv1/g;->e:Lv1/g;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lv1/g;

    invoke-direct {v1, p0, p1}, Lv1/g;-><init>(Landroid/content/Context;La2/a;)V

    sput-object v1, Lv1/g;->e:Lv1/g;

    .line 3
    :cond_0
    sget-object p0, Lv1/g;->e:Lv1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lv1/g;->a:Ljava/lang/Object;

    check-cast v0, Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lv1/g;->b:Ljava/lang/Object;

    check-cast v1, Lo4/s;

    invoke-static {v1}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v1

    iget-object v2, p0, Lv1/g;->c:Ljava/lang/Object;

    check-cast v2, Lo4/s;

    invoke-interface {v2}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lv1/g;->d:Ljava/lang/Object;

    check-cast v3, Lo4/s;

    invoke-static {v3}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v3

    .line 2
    new-instance v4, Lj4/b1;

    check-cast v0, Lj4/w;

    check-cast v2, Lj4/r0;

    invoke-direct {v4, v0, v1, v2, v3}, Lj4/b1;-><init>(Lj4/w;Lo4/p;Lj4/r0;Lo4/p;)V

    return-object v4
.end method
