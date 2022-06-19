.class Lcom/allinone/callerid/i/a/i/c$c;
.super Ljava/lang/Object;
.source "CollectNormalUtil.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/i/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/i/a/i/c;->b(Landroid/content/Context;Lcom/allinone/callerid/i/a/i/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/allinone/callerid/i/a/i/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/allinone/callerid/i/a/i/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/i/a/i/c$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/allinone/callerid/i/a/i/c$c;->b:Lcom/allinone/callerid/i/a/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/CollectInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/CollectInfo;

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/i/a/i/c$c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/CollectInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/CollectInfo;->getUser_blocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/CollectInfo;->getUser_commented()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/CollectInfo;->getUser_reported()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/CollectInfo;->getUser_upload_recording()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/allinone/callerid/i/a/i/c$c$a;

    invoke-direct {v8, p0}, Lcom/allinone/callerid/i/a/i/c$c$a;-><init>(Lcom/allinone/callerid/i/a/i/c$c;)V

    invoke-static/range {v2 .. v8}, Lcom/allinone/callerid/i/a/i/k/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/i/k/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/i/a/i/g;->a()V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/i/a/i/c$c;->b:Lcom/allinone/callerid/i/a/i/a;

    const-string v0, "ok"

    invoke-interface {p1, v0}, Lcom/allinone/callerid/i/a/i/a;->a(Ljava/lang/String;)V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->L2(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method
