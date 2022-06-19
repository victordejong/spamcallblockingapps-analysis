.class Lc/d/a/p$a;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lc/d/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/d/a/p;

    invoke-direct {v0}, Lc/d/a/p;-><init>()V

    sput-object v0, Lc/d/a/p$a;->a:Lc/d/a/p;

    .line 2
    invoke-static {}, Lcom/liulishuo/filedownloader/message/b;->a()Lcom/liulishuo/filedownloader/message/b;

    move-result-object v0

    new-instance v1, Lc/d/a/a0;

    invoke-direct {v1}, Lc/d/a/a0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/message/b;->c(Lcom/liulishuo/filedownloader/message/b$b;)V

    return-void
.end method

.method static synthetic a()Lc/d/a/p;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/p$a;->a:Lc/d/a/p;

    return-object v0
.end method
