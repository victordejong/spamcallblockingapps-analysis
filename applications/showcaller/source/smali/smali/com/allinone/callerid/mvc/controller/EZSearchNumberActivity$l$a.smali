.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l$a;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v1()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->C:Ljava/util/List;

    return-void
.end method
