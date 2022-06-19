.class Lcom/allinone/callerid/g/e$h;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e;->a2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/bean/SpamCall;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/allinone/callerid/g/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/bean/SpamCall;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$h;->c:Lcom/allinone/callerid/g/e;

    iput-object p2, p0, Lcom/allinone/callerid/g/e$h;->a:Lcom/allinone/callerid/bean/SpamCall;

    iput-object p3, p0, Lcom/allinone/callerid/g/e$h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance p1, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/EZBlackList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e$h;->a:Lcom/allinone/callerid/bean/SpamCall;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/SpamCall;->getTypelabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/g/e$h;->a:Lcom/allinone/callerid/bean/SpamCall;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/SpamCall;->getTypelabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e$h;->a:Lcom/allinone/callerid/bean/SpamCall;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/SpamCall;->getTypelabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e$h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    const-string v0, "true"

    .line 6
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setIs_myblock(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/allinone/callerid/g/e$h$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/e$h$a;-><init>(Lcom/allinone/callerid/g/e$h;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/f/b;->a(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V

    :goto_1
    return-void
.end method
