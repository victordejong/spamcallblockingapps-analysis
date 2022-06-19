.class Lcom/allinone/callerid/k/c$b$a;
.super Ljava/lang/Object;
.source "OfflineDbDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/k/c$b;->onSucceed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/k/c$b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/k/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/k/c$b$a;->d:Lcom/allinone/callerid/k/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/k/c$b$a;->d:Lcom/allinone/callerid/k/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v0}, Lcom/allinone/callerid/k/c;->a(Lcom/allinone/callerid/k/c;)Lcom/allinone/callerid/l/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/k/c$b$a;->d:Lcom/allinone/callerid/k/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v0}, Lcom/allinone/callerid/k/c;->a(Lcom/allinone/callerid/k/c;)Lcom/allinone/callerid/l/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/allinone/callerid/l/a/d;->b()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/k/c$b$a;->d:Lcom/allinone/callerid/k/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/k/c$b;->a:Lcom/allinone/callerid/k/c;

    invoke-static {v0}, Lcom/allinone/callerid/k/c;->a(Lcom/allinone/callerid/k/c;)Lcom/allinone/callerid/l/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/allinone/callerid/l/a/d;->a()V

    :cond_0
    return-void
.end method
