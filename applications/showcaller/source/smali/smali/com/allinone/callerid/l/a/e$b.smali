.class Lcom/allinone/callerid/l/a/e$b;
.super Ljava/lang/Object;
.source "OfflineDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/l/a/e;->g(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/l/a/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/l/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/l/a/e$b;->d:Lcom/allinone/callerid/l/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/l/a/e$b;->d:Lcom/allinone/callerid/l/a/e;

    invoke-static {v0}, Lcom/allinone/callerid/l/a/e;->a(Lcom/allinone/callerid/l/a/e;)Lcom/allinone/callerid/l/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/l/a/e$b;->d:Lcom/allinone/callerid/l/a/e;

    invoke-static {v0}, Lcom/allinone/callerid/l/a/e;->a(Lcom/allinone/callerid/l/a/e;)Lcom/allinone/callerid/l/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/allinone/callerid/l/a/d;->b()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/l/a/e$b;->d:Lcom/allinone/callerid/l/a/e;

    invoke-static {v0}, Lcom/allinone/callerid/l/a/e;->a(Lcom/allinone/callerid/l/a/e;)Lcom/allinone/callerid/l/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/allinone/callerid/l/a/d;->a()V

    :cond_0
    return-void
.end method
