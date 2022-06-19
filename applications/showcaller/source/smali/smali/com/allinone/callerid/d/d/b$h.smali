.class Lcom/allinone/callerid/d/d/b$h;
.super Ljava/lang/Object;
.source "PopularFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/b;->x2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

.field final synthetic e:Lcom/allinone/callerid/d/d/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/b;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    iput-object p2, p0, Lcom/allinone/callerid/d/d/b$h;->d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->p2(Lcom/allinone/callerid/d/d/b;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->p2(Lcom/allinone/callerid/d/d/b;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->q2(Lcom/allinone/callerid/d/d/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$h;->d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-static {p1, v0}, Lcom/allinone/callerid/d/d/b;->b2(Lcom/allinone/callerid/d/d/b;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/gg/b;->b()Lcom/allinone/callerid/util/gg/b;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/b;->o2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/d/b$h$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/d/b$h$a;-><init>(Lcom/allinone/callerid/d/d/b$h;)V

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/util/gg/b;->d(Landroid/app/Activity;Lcom/allinone/callerid/util/gg/b$e;)V

    :goto_0
    return-void
.end method
