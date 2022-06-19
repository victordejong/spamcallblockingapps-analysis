.class Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$c;
.super Ljava/lang/Object;
.source "IdentifiedActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/w/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$c;->a:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$c;->a:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-static {v0, p1, p2}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->Z(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;Ljava/util/List;Ljava/util/HashMap;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$c;->a:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->a0(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)Lcom/allinone/callerid/b/j;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
