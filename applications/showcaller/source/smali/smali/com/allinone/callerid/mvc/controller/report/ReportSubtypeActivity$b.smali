.class Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$b;
.super Ljava/lang/Object;
.source "ReportSubtypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->p0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$b;->f:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$b;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->i0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->N1(I)V

    .line 3
    new-instance v0, Lcom/allinone/callerid/bean/ReportedContent;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/ReportedContent;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/ReportedContent;->setNumber(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/ReportedContent;->setType(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/bean/ReportedContent;->setTime(J)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/f/g;->a()Lcom/allinone/callerid/f/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/f/g;->c(Lcom/allinone/callerid/bean/ReportedContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
