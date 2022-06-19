.class public Lcom/allinone/callerid/d/f/b/b;
.super Ljava/lang/Object;
.source "FileBridge.java"


# instance fields
.field private a:Ljava/io/File;

.field private b:Z

.field private c:Lcom/allinone/callerid/d/f/b/f;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/d/f/b/f;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/d/f/b/b;->a:Ljava/io/File;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/d/f/b/b;->c:Lcom/allinone/callerid/d/f/b/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/f/b/b;->a:Ljava/io/File;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/d/f/b/b;->b:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/d/f/b/b;->c:Lcom/allinone/callerid/d/f/b/f;

    invoke-virtual {p1, p0}, Lcom/allinone/callerid/d/f/b/f;->g(Lcom/allinone/callerid/d/f/b/b;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileBridge{mFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/d/f/b/b;->a:Ljava/io/File;

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsRecycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/allinone/callerid/d/f/b/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
