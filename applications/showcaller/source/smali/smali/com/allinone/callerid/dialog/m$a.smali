.class Lcom/allinone/callerid/dialog/m$a;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m;->f(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/allinone/callerid/model/EZCountryCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/model/EZCountryCode;Lcom/allinone/callerid/model/EZCountryCode;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/model/EZCountryCode;

    check-cast p2, Lcom/allinone/callerid/model/EZCountryCode;

    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/dialog/m$a;->a(Lcom/allinone/callerid/model/EZCountryCode;Lcom/allinone/callerid/model/EZCountryCode;)I

    move-result p1

    return p1
.end method
