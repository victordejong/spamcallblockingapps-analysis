.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$o;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/x/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;)Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->e1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;)Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, p3}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->k0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$o;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, p4}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->V0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
