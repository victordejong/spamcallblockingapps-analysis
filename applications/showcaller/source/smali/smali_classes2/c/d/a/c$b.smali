.class final Lc/d/a/c$b;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lc/d/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lc/d/a/c;


# direct methods
.method private constructor <init>(Lc/d/a/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/d/a/c$b;->a:Lc/d/a/c;

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lc/d/a/c;->Q(Lc/d/a/c;Z)Z

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/c;Lc/d/a/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/d/a/c$b;-><init>(Lc/d/a/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/c$b;->a:Lc/d/a/c;

    invoke-virtual {v0}, Lc/d/a/c;->getId()I

    move-result v0

    .line 2
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "add the task[%d] to the queue"

    invoke-static {p0, v2, v1}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-static {}, Lc/d/a/h;->e()Lc/d/a/h;

    move-result-object v1

    iget-object v2, p0, Lc/d/a/c$b;->a:Lc/d/a/c;

    invoke-virtual {v1, v2}, Lc/d/a/h;->b(Lc/d/a/a$b;)V

    return v0
.end method
