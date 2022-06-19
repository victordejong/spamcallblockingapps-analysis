.class Lcom/allinone/callerid/a/b$a;
.super Lcom/allinone/callerid/a/c;
.source "JobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/a/b;->f(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/allinone/callerid/a/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/a/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/a/b$a;->e:Lcom/allinone/callerid/a/b;

    invoke-direct {p0, p2}, Lcom/allinone/callerid/a/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/a/b$a;->e:Lcom/allinone/callerid/a/b;

    invoke-static {v0}, Lcom/allinone/callerid/a/b;->a(Lcom/allinone/callerid/a/b;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/a/b$a;->e:Lcom/allinone/callerid/a/b;

    invoke-static {v0}, Lcom/allinone/callerid/a/b;->a(Lcom/allinone/callerid/a/b;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/a/c;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/a/a;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/allinone/callerid/a/a;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/e;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/a/a;->e(Z)V

    .line 6
    invoke-virtual {v0}, Lcom/allinone/callerid/a/a;->c()I

    move-result v2

    const/16 v3, 0x2ce

    const-string v4, "wbb"

    if-ne v2, v3, :cond_2

    .line 7
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "\u5904\u7406718\u4efb\u52a1"

    .line 8
    invoke-static {v4, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    new-instance v0, Lcom/allinone/callerid/a/b$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/a/b$a$a;-><init>(Lcom/allinone/callerid/a/b$a;)V

    invoke-static {v0}, Lcom/allinone/callerid/l/a/f;->j(Lcom/allinone/callerid/l/a/d;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/allinone/callerid/a/a;->c()I

    move-result v0

    const/16 v2, 0x3ca

    if-ne v0, v2, :cond_4

    .line 11
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "\u5904\u7406970\u4efb\u52a1"

    .line 12
    invoke-static {v4, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    new-instance v2, Lcom/allinone/callerid/a/b$a$b;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/a/b$a$b;-><init>(Lcom/allinone/callerid/a/b$a;)V

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/l/a/f;->h(Landroid/content/Context;ZLcom/allinone/callerid/l/a/d;)V

    :cond_4
    :goto_0
    return-void
.end method
