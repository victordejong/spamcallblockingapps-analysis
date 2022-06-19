.class Le/e/a/p$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Le/e/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/e/a/p;

    invoke-direct {v0}, Le/e/a/p;-><init>()V

    sput-object v0, Le/e/a/p$a;->a:Le/e/a/p;

    invoke-static {}, Lcom/liulishuo/filedownloader/message/b;->a()Lcom/liulishuo/filedownloader/message/b;

    move-result-object v0

    new-instance v1, Le/e/a/z;

    invoke-direct {v1}, Le/e/a/z;-><init>()V

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/message/b;->c(Lcom/liulishuo/filedownloader/message/b$b;)V

    return-void
.end method

.method static synthetic a()Le/e/a/p;
    .locals 1

    sget-object v0, Le/e/a/p$a;->a:Le/e/a/p;

    return-object v0
.end method
