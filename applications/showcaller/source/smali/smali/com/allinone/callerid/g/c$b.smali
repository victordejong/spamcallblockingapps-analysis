.class Lcom/allinone/callerid/g/c$b;
.super Ljava/lang/Object;
.source "EZCallPhoneFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/r/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/c;->U2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c$b;->a:Lcom/allinone/callerid/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c$b;->a:Lcom/allinone/callerid/g/c;

    invoke-static {v0, p2}, Lcom/allinone/callerid/g/c;->G2(Lcom/allinone/callerid/g/c;Ljava/util/List;)Ljava/util/List;

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/g/c$b;->a:Lcom/allinone/callerid/g/c;

    iput-object p1, p2, Lcom/allinone/callerid/g/c;->f0:Ljava/util/List;

    .line 3
    iput-object p3, p2, Lcom/allinone/callerid/g/c;->h0:Ljava/util/List;

    .line 4
    invoke-static {p2}, Lcom/allinone/callerid/g/c;->D2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/g/c$l;

    move-result-object p1

    const/16 p2, 0x8ae

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c$b;->a:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->D2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/g/c$l;

    move-result-object v0

    const/16 v1, 0xd05

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
