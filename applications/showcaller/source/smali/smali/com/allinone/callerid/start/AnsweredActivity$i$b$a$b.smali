.class Lcom/allinone/callerid/start/AnsweredActivity$i$b$a$b;
.super Ljava/lang/Object;
.source "AnsweredActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a$b;->a:Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/bean/CollectInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/CollectInfo;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a$b;->a:Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;

    iget-object v1, v1, Lcom/allinone/callerid/start/AnsweredActivity$i$b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    const-string v1, "1"

    .line 3
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    const-string v1, "0"

    .line 4
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/allinone/callerid/i/a/i/c;->c(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V

    return-void
.end method
