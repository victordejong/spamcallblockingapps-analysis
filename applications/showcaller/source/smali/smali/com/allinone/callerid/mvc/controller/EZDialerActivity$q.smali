.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$q;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X0()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$q;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$q;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->m0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void
.end method
