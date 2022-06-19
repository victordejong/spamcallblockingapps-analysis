.class Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;
.super Ljava/lang/Object;
.source "AnsweredActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/AnsweredActivity$i$b;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/allinone/callerid/start/AnsweredActivity$i$b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/AnsweredActivity$i$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;->b:Lcom/allinone/callerid/start/AnsweredActivity$i$b;

    iput-object p2, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;->a:Ljava/lang/String;

    new-instance v0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a$a;-><init>(Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/f/b;->e(Ljava/lang/String;Lcom/allinone/callerid/i/a/a;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/EZBlackList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;->b:Lcom/allinone/callerid/start/AnsweredActivity$i$b;

    iget-object v0, v0, Lcom/allinone/callerid/start/AnsweredActivity$i$b;->d:Lcom/allinone/callerid/start/AnsweredActivity$i;

    iget-object v0, v0, Lcom/allinone/callerid/start/AnsweredActivity$i;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {v0}, Lcom/allinone/callerid/start/AnsweredActivity;->g0(Lcom/allinone/callerid/start/AnsweredActivity;)Lcom/allinone/callerid/search/EZSearchResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;->b:Lcom/allinone/callerid/start/AnsweredActivity$i$b;

    iget-object v0, v0, Lcom/allinone/callerid/start/AnsweredActivity$i$b;->d:Lcom/allinone/callerid/start/AnsweredActivity$i;

    iget-object v0, v0, Lcom/allinone/callerid/start/AnsweredActivity$i;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {v0}, Lcom/allinone/callerid/start/AnsweredActivity;->g0(Lcom/allinone/callerid/start/AnsweredActivity;)Lcom/allinone/callerid/search/EZSearchResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;->b:Lcom/allinone/callerid/start/AnsweredActivity$i$b;

    iget-object v0, v0, Lcom/allinone/callerid/start/AnsweredActivity$i$b;->d:Lcom/allinone/callerid/start/AnsweredActivity$i;

    iget-object v0, v0, Lcom/allinone/callerid/start/AnsweredActivity$i;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {v0}, Lcom/allinone/callerid/start/AnsweredActivity;->g0(Lcom/allinone/callerid/start/AnsweredActivity;)Lcom/allinone/callerid/search/EZSearchResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    :goto_0
    const-string v0, "true"

    .line 6
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setIs_myblock(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a$b;-><init>(Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/f/b;->a(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V

    :goto_1
    return-void
.end method
