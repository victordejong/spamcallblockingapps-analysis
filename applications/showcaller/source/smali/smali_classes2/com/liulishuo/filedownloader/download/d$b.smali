.class public Lcom/liulishuo/filedownloader/download/d$b;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/download/a$b;

.field private b:Lcom/liulishuo/filedownloader/download/g;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/liulishuo/filedownloader/download/a$b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/download/a$b;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->a:Lcom/liulishuo/filedownloader/download/a$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/liulishuo/filedownloader/download/d;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->b:Lcom/liulishuo/filedownloader/download/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->a:Lcom/liulishuo/filedownloader/download/a$b;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/a$b;->a()Lcom/liulishuo/filedownloader/download/a;

    move-result-object v4

    .line 3
    new-instance v0, Lcom/liulishuo/filedownloader/download/d;

    iget v2, v4, Lcom/liulishuo/filedownloader/download/a;->a:I

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/d$b;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/d$b;->b:Lcom/liulishuo/filedownloader/download/g;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/d$b;->d:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/liulishuo/filedownloader/download/d$b;->c:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/liulishuo/filedownloader/download/d;-><init>(IILcom/liulishuo/filedownloader/download/a;Lcom/liulishuo/filedownloader/download/g;ZLjava/lang/String;Lcom/liulishuo/filedownloader/download/d$a;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/d$b;->b:Lcom/liulishuo/filedownloader/download/g;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/d$b;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/d$b;->d:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const-string v2, "%s %s %B"

    invoke-static {v2, v1}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/liulishuo/filedownloader/download/g;)Lcom/liulishuo/filedownloader/download/d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/d$b;->b:Lcom/liulishuo/filedownloader/download/g;

    return-object p0
.end method

.method public c(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/d$b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/d$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->a:Lcom/liulishuo/filedownloader/download/a$b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/a$b;->b(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/a$b;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->a:Lcom/liulishuo/filedownloader/download/a$b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/a$b;->d(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/a$b;

    return-object p0
.end method

.method public f(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/d$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->a:Lcom/liulishuo/filedownloader/download/a$b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/a$b;->e(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/a$b;

    return-object p0
.end method

.method public g(I)Lcom/liulishuo/filedownloader/download/d$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->a:Lcom/liulishuo/filedownloader/download/a$b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/a$b;->c(I)Lcom/liulishuo/filedownloader/download/a$b;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/d$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/d$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d$b;->a:Lcom/liulishuo/filedownloader/download/a$b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/a$b;->f(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/a$b;

    return-object p0
.end method

.method public j(Z)Lcom/liulishuo/filedownloader/download/d$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/d$b;->d:Ljava/lang/Boolean;

    return-object p0
.end method
