.class Lcom/allinone/callerid/mvc/controller/MainActivity$v$a;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity$v;->a(Lcom/allinone/callerid/model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/model/a;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/MainActivity$v;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity$v;Lcom/allinone/callerid/model/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$v$a;->e:Lcom/allinone/callerid/mvc/controller/MainActivity$v;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$v$a;->d:Lcom/allinone/callerid/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$v$a;->d:Lcom/allinone/callerid/model/a;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$v$a;->e:Lcom/allinone/callerid/mvc/controller/MainActivity$v;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/MainActivity$v;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/t/d;->c(Lcom/allinone/callerid/model/a;Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    return-void
.end method
