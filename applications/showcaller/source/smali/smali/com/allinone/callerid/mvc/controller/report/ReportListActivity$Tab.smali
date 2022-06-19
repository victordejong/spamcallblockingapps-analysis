.class public final enum Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;
.super Ljava/lang/Enum;
.source "ReportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

.field public static final enum e:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

.field private static final synthetic f:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    invoke-static {}, Lcom/allinone/callerid/util/d;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REPORTLIST"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    .line 2
    new-instance v1, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    invoke-static {}, Lcom/allinone/callerid/util/d;->e()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MYREPORTLIST"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->e:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 3
    sput-object v2, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->f:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;
    .locals 1

    .line 1
    const-class v0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    return-object p0
.end method

.method public static values()[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->f:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    invoke-virtual {v0}, [Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    return-object v0
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->name:Ljava/lang/String;

    return-object v0
.end method
