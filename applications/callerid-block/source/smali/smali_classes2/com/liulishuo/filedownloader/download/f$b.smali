.class public Lcom/liulishuo/filedownloader/download/f$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lcom/liulishuo/filedownloader/download/d;

.field b:Le/e/a/d0/b;

.field c:Lcom/liulishuo/filedownloader/download/b;

.field d:Lcom/liulishuo/filedownloader/download/g;

.field e:Ljava/lang/String;

.field f:Ljava/lang/Boolean;

.field g:Ljava/lang/Integer;

.field h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/liulishuo/filedownloader/download/f;
    .locals 12

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$b;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/f$b;->b:Le/e/a/d0/b;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/f$b;->c:Lcom/liulishuo/filedownloader/download/b;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$b;->d:Lcom/liulishuo/filedownloader/download/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$b;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/f$b;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v11, Lcom/liulishuo/filedownloader/download/f;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/f$b;->a:Lcom/liulishuo/filedownloader/download/d;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$b;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$b;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/f$b;->d:Lcom/liulishuo/filedownloader/download/g;

    iget-object v9, p0, Lcom/liulishuo/filedownloader/download/f$b;->e:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/liulishuo/filedownloader/download/f;-><init>(Le/e/a/d0/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;Lcom/liulishuo/filedownloader/download/f$a;)V

    return-object v11

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b(Lcom/liulishuo/filedownloader/download/g;)Lcom/liulishuo/filedownloader/download/f$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$b;->d:Lcom/liulishuo/filedownloader/download/g;

    return-object p0
.end method

.method public c(Le/e/a/d0/b;)Lcom/liulishuo/filedownloader/download/f$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$b;->b:Le/e/a/d0/b;

    return-object p0
.end method

.method public d(I)Lcom/liulishuo/filedownloader/download/f$b;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$b;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public e(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/f$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$b;->c:Lcom/liulishuo/filedownloader/download/b;

    return-object p0
.end method

.method public f(I)Lcom/liulishuo/filedownloader/download/f$b;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$b;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public g(Lcom/liulishuo/filedownloader/download/d;)Lcom/liulishuo/filedownloader/download/f$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$b;->a:Lcom/liulishuo/filedownloader/download/d;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/f$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public i(Z)Lcom/liulishuo/filedownloader/download/f$b;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$b;->f:Ljava/lang/Boolean;

    return-object p0
.end method
