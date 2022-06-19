.class Lcom/allinone/callerid/i/a/r/b$d$a;
.super Ljava/lang/Object;
.source "ContanlistManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/i/a/r/b$d;->a([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/allinone/callerid/search/CallLogBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/i/a/r/b$d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/r/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/i/a/r/b$d$a;->d:Lcom/allinone/callerid/i/a/r/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/search/CallLogBean;Lcom/allinone/callerid/search/CallLogBean;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->f()I

    move-result p2

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->f()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    check-cast p2, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/i/a/r/b$d$a;->a(Lcom/allinone/callerid/search/CallLogBean;Lcom/allinone/callerid/search/CallLogBean;)I

    move-result p1

    return p1
.end method
