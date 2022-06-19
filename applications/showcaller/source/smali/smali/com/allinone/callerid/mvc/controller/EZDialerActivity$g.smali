.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$g;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/s/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->M0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;)Ljava/util/List;

    :cond_1
    return-void
.end method
