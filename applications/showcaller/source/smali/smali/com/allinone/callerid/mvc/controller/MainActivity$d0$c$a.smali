.class Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c$a;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c$a;->d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c$a;->d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;->d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->k0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c$a;->d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;->d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
