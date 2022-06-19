.class Lcom/liulishuo/filedownloader/download/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private e:Lcom/liulishuo/filedownloader/download/b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/liulishuo/filedownloader/download/a;
    .locals 9

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a$b;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/a$b;->e:Lcom/liulishuo/filedownloader/download/b;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/a$b;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v8, Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/a$b;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/a$b;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/a$b;->d:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/liulishuo/filedownloader/download/a;-><init>(Lcom/liulishuo/filedownloader/download/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/download/a$a;)V

    return-object v8

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/a$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a$b;->e:Lcom/liulishuo/filedownloader/download/b;

    return-object p0
.end method

.method public c(I)Lcom/liulishuo/filedownloader/download/a$b;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a$b;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/a$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/a$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a$b;->d:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/a$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a$b;->b:Ljava/lang/String;

    return-object p0
.end method
