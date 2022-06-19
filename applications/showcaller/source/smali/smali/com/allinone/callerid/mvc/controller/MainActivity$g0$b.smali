.class Lcom/allinone/callerid/mvc/controller/MainActivity$g0$b;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/MainActivity$g0;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity$g0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$b;->e:Lcom/allinone/callerid/mvc/controller/MainActivity$g0;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$b;->e:Lcom/allinone/callerid/mvc/controller/MainActivity$g0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->t0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)V

    return-void
.end method
