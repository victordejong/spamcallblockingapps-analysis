.class Lcom/allinone/callerid/g/e$a;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e;->e3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC"

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1, v0}, Lcom/allinone/callerid/g/e;->t2(Lcom/allinone/callerid/g/e;Landroid/database/Cursor;)V

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x3a98

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->u2(Lcom/allinone/callerid/g/e;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x3a99

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->u2(Lcom/allinone/callerid/g/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->v2(Lcom/allinone/callerid/g/e;)V

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->u2(Lcom/allinone/callerid/g/e;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3a9c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->w2(Lcom/allinone/callerid/g/e;)V

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->u2(Lcom/allinone/callerid/g/e;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3a9b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->u2(Lcom/allinone/callerid/g/e;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x3a9a

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->u2(Lcom/allinone/callerid/g/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v1}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/g/e$a$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/g/e$a$a;-><init>(Lcom/allinone/callerid/g/e$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    if-eqz v0, :cond_2

    .line 16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
