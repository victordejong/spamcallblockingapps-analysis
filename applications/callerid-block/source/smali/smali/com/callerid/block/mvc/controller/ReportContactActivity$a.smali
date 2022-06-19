.class Lcom/callerid/block/mvc/controller/ReportContactActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/ReportContactActivity;->Q(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/ReportContactActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/callerid/block/bean/EZBlackList;

    invoke-direct {p1}, Lcom/callerid/block/bean/EZBlackList;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZBlackList;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/ReportContactActivity$a;->a:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    new-instance v0, Lcom/callerid/block/mvc/controller/ReportContactActivity$a$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/ReportContactActivity$a$a;-><init>(Lcom/callerid/block/mvc/controller/ReportContactActivity$a;)V

    invoke-static {p1, v0}, Lcom/callerid/block/h/a/c/b;->a(Lcom/callerid/block/bean/EZBlackList;Lcom/callerid/block/h/a/a;)V

    :goto_0
    return-void
.end method
