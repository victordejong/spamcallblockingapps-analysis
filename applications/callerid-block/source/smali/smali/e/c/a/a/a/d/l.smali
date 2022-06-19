.class final Le/c/a/a/a/d/l;
.super Le/c/a/a/a/d/i;
.source ""


# instance fields
.field private final a:Le/c/a/a/a/d/k;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/a/a/a/d/i;-><init>()V

    new-instance v0, Le/c/a/a/a/d/k;

    invoke-direct {v0}, Le/c/a/a/a/d/k;-><init>()V

    iput-object v0, p0, Le/c/a/a/a/d/l;->a:Le/c/a/a/a/d/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-eq p2, p1, :cond_0

    iget-object v0, p0, Le/c/a/a/a/d/l;->a:Le/c/a/a/a/d/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Le/c/a/a/a/d/k;->a(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
