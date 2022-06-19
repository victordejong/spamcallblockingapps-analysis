.class public final Lcom/danikula/videocache/f$b;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/danikula/videocache/q/c;

.field private c:Lcom/danikula/videocache/q/a;

.field private d:Lcom/danikula/videocache/s/c;

.field private e:Lcom/danikula/videocache/r/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/danikula/videocache/s/d;->b(Landroid/content/Context;)Lcom/danikula/videocache/s/c;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/f$b;->d:Lcom/danikula/videocache/s/c;

    .line 3
    invoke-static {p1}, Lcom/danikula/videocache/p;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/danikula/videocache/f$b;->a:Ljava/io/File;

    .line 4
    new-instance p1, Lcom/danikula/videocache/q/g;

    const-wide/32 v0, 0x20000000

    invoke-direct {p1, v0, v1}, Lcom/danikula/videocache/q/g;-><init>(J)V

    iput-object p1, p0, Lcom/danikula/videocache/f$b;->c:Lcom/danikula/videocache/q/a;

    .line 5
    new-instance p1, Lcom/danikula/videocache/q/f;

    invoke-direct {p1}, Lcom/danikula/videocache/q/f;-><init>()V

    iput-object p1, p0, Lcom/danikula/videocache/f$b;->b:Lcom/danikula/videocache/q/c;

    .line 6
    new-instance p1, Lcom/danikula/videocache/r/a;

    invoke-direct {p1}, Lcom/danikula/videocache/r/a;-><init>()V

    iput-object p1, p0, Lcom/danikula/videocache/f$b;->e:Lcom/danikula/videocache/r/b;

    return-void
.end method

.method private b()Lcom/danikula/videocache/c;
    .locals 7

    .line 1
    new-instance v6, Lcom/danikula/videocache/c;

    iget-object v1, p0, Lcom/danikula/videocache/f$b;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/f$b;->b:Lcom/danikula/videocache/q/c;

    iget-object v3, p0, Lcom/danikula/videocache/f$b;->c:Lcom/danikula/videocache/q/a;

    iget-object v4, p0, Lcom/danikula/videocache/f$b;->d:Lcom/danikula/videocache/s/c;

    iget-object v5, p0, Lcom/danikula/videocache/f$b;->e:Lcom/danikula/videocache/r/b;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/danikula/videocache/c;-><init>(Ljava/io/File;Lcom/danikula/videocache/q/c;Lcom/danikula/videocache/q/a;Lcom/danikula/videocache/s/c;Lcom/danikula/videocache/r/b;)V

    return-object v6
.end method


# virtual methods
.method public a()Lcom/danikula/videocache/f;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/f$b;->b()Lcom/danikula/videocache/c;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/danikula/videocache/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/danikula/videocache/f;-><init>(Lcom/danikula/videocache/c;Lcom/danikula/videocache/f$a;)V

    return-object v1
.end method

.method public c(Lcom/danikula/videocache/q/c;)Lcom/danikula/videocache/f$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/danikula/videocache/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/danikula/videocache/q/c;

    iput-object p1, p0, Lcom/danikula/videocache/f$b;->b:Lcom/danikula/videocache/q/c;

    return-object p0
.end method

.method public d(J)Lcom/danikula/videocache/f$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/danikula/videocache/q/g;

    invoke-direct {v0, p1, p2}, Lcom/danikula/videocache/q/g;-><init>(J)V

    iput-object v0, p0, Lcom/danikula/videocache/f$b;->c:Lcom/danikula/videocache/q/a;

    return-object p0
.end method
