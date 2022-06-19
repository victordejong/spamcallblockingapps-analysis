.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g0;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->t1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g0;->e:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g0;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/e;->d()Lcom/allinone/callerid/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/e;->i(Ljava/lang/String;)V

    return-void
.end method
