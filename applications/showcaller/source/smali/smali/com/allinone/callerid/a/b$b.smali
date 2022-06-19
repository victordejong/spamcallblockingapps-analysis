.class Lcom/allinone/callerid/a/b$b;
.super Ljava/lang/Object;
.source "JobManager.java"

# interfaces
.implements Lcom/allinone/callerid/l/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/a/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/a/a;

.field final synthetic b:Lcom/allinone/callerid/a/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/a/b;Lcom/allinone/callerid/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/a/b$b;->b:Lcom/allinone/callerid/a/b;

    iput-object p2, p0, Lcom/allinone/callerid/a/b$b;->a:Lcom/allinone/callerid/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "onSuccess"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "onEnd"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/a/b$b;->b:Lcom/allinone/callerid/a/b;

    iget-object v1, p0, Lcom/allinone/callerid/a/b$b;->a:Lcom/allinone/callerid/a/a;

    invoke-virtual {v1}, Lcom/allinone/callerid/a/a;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/a/b;->b(Lcom/allinone/callerid/a/b;I)V

    return-void
.end method
