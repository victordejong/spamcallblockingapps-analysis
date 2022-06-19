.class Le/e/a/e0/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/e0/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/e0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Le/e/a/e0/b;


# direct methods
.method constructor <init>(Le/e/a/e0/b;)V
    .locals 0

    iput-object p1, p0, Le/e/a/e0/b$a;->b:Le/e/a/e0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    new-instance v0, Le/e/a/e0/b$b;

    iget-object v1, p0, Le/e/a/e0/b$a;->b:Le/e/a/e0/b;

    invoke-direct {v0, v1}, Le/e/a/e0/b$b;-><init>(Le/e/a/e0/b;)V

    return-object v0
.end method

.method public m(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method

.method public o(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public v(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method
