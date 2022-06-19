.class Lcom/allinone/callerid/b/m$a;
.super Ljava/lang/Object;
.source "EZFavListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/m;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic e:Lcom/allinone/callerid/b/m;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/m;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/m$a;->e:Lcom/allinone/callerid/b/m;

    iput-object p2, p0, Lcom/allinone/callerid/b/m$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/m$a;->e:Lcom/allinone/callerid/b/m;

    invoke-static {p1}, Lcom/allinone/callerid/b/m;->a(Lcom/allinone/callerid/b/m;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/m$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
