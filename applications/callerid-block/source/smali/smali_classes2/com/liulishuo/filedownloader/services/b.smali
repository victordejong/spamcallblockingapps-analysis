.class public Lcom/liulishuo/filedownloader/services/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/h0/c$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    aput-object p2, p3, v0

    const-string p1, "%sp%s@dir"

    invoke-static {p1, p3}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Le/e/a/h0/f;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    return p1

    :cond_0
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    aput-object p2, p3, v0

    const-string p1, "%sp%s"

    invoke-static {p1, p3}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/liulishuo/filedownloader/services/b;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method
