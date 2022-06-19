.class Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$d;
.super Ljava/lang/Object;
.source "ReportSubtypeActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/allinone/callerid/bean/SubType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$d;->d:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/bean/SubType;Lcom/allinone/callerid/bean/SubType;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/allinone/callerid/bean/SubType;->getCount()I

    move-result p2

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SubType;->getCount()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/bean/SubType;

    check-cast p2, Lcom/allinone/callerid/bean/SubType;

    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$d;->a(Lcom/allinone/callerid/bean/SubType;Lcom/allinone/callerid/bean/SubType;)I

    move-result p1

    return p1
.end method
