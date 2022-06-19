.class Lcom/allinone/callerid/g/e$b;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Lcom/allinone/callerid/util/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic b:Lcom/allinone/callerid/g/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$b;->b:Lcom/allinone/callerid/g/e;

    iput-object p2, p0, Lcom/allinone/callerid/g/e$b;->a:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e$b;->a:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0, p2}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/g/e$b;->a:Lcom/allinone/callerid/search/CallLogBean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/allinone/callerid/search/CallLogBean;->p0(Z)V

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/g/e$b;->a:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/search/CallLogBean;->J0(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/e$b;->a:Lcom/allinone/callerid/search/CallLogBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/search/CallLogBean;->p0(Z)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/g/e$b;->a:Lcom/allinone/callerid/search/CallLogBean;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/e$b;->a:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/search/CallLogBean;->J0(I)V

    :goto_0
    return-void
.end method
