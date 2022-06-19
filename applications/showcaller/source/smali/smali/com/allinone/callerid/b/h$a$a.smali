.class Lcom/allinone/callerid/b/h$a$a;
.super Ljava/lang/Object;
.source "ContactFavAdapter.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/h$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/b/h$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/h$a$a;->a:Lcom/allinone/callerid/b/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/h$a$a;->a:Lcom/allinone/callerid/b/h$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/h$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->V0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/h$a$a;->a:Lcom/allinone/callerid/b/h$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/h$a;->e:Lcom/allinone/callerid/b/h;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
