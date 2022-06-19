.class Lcom/allinone/callerid/i/a/o/a$a$a;
.super Ljava/lang/Object;
.source "GetIpParser.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/o/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/i/a/o/a$a;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/i/a/o/a$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/o/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/i/a/o/a$a$a;->a:Lcom/allinone/callerid/i/a/o/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/bean/ParserIpBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/ParserIpBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ipparser"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
