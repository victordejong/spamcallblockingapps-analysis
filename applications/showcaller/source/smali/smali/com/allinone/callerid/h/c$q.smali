.class Lcom/allinone/callerid/h/c$q;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$q;->a:Lcom/allinone/callerid/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 1
    new-instance p1, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/EZBlackList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/h/c$q;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->A(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/h/c$q;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->A(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/h/c$q;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->A(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/h/c$q;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->C(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    const-string v0, "true"

    .line 6
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setIs_myblock(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/allinone/callerid/h/c$q$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/h/c$q$a;-><init>(Lcom/allinone/callerid/h/c$q;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/f/b;->a(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V

    :cond_1
    return-void
.end method
