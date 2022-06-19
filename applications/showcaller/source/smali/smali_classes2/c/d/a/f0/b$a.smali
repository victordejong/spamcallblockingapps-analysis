.class Lc/d/a/f0/b$a;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Lc/d/a/f0/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/f0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lc/d/a/f0/b;


# direct methods
.method constructor <init>(Lc/d/a/f0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/f0/b$a;->d:Lc/d/a/f0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method

.method public Y()V
    .locals 0

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/d/a/f0/b$b;

    iget-object v1, p0, Lc/d/a/f0/b$a;->d:Lc/d/a/f0/b;

    invoke-direct {v0, v1}, Lc/d/a/f0/b$b;-><init>(Lc/d/a/f0/b;)V

    return-object v0
.end method

.method public u(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method

.method public z(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method
