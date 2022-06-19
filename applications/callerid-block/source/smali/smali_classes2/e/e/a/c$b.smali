.class final Le/e/a/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Le/e/a/c;


# direct methods
.method private constructor <init>(Le/e/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/e/a/c$b;->a:Le/e/a/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Le/e/a/c;->R(Le/e/a/c;Z)Z

    return-void
.end method

.method synthetic constructor <init>(Le/e/a/c;Le/e/a/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Le/e/a/c$b;-><init>(Le/e/a/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    iget-object v0, p0, Le/e/a/c$b;->a:Le/e/a/c;

    invoke-virtual {v0}, Le/e/a/c;->F()I

    move-result v0

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "add the task[%d] to the queue"

    invoke-static {p0, v2, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Le/e/a/h;->e()Le/e/a/h;

    move-result-object v1

    iget-object v2, p0, Le/e/a/c$b;->a:Le/e/a/c;

    invoke-virtual {v1, v2}, Le/e/a/h;->b(Le/e/a/a$b;)V

    return v0
.end method
