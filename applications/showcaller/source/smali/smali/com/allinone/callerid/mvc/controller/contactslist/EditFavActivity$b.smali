.class Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity$b;
.super Ljava/lang/Object;
.source "EditFavActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/r/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;

    iput-object p1, v0, Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;->v:Ljava/util/List;

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;->X(Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;)Lcom/allinone/callerid/b/h;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;->v:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/b/h;->a(Ljava/util/List;Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;->X(Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;)Lcom/allinone/callerid/b/h;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
