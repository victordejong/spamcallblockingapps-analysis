.class public Le/e/a/o$a;
.super Le/e/a/f0/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/e/a/f0/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public j2(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/message/b;->a()Lcom/liulishuo/filedownloader/message/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/message/b;->b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method
