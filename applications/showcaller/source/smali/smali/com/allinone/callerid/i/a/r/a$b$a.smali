.class Lcom/allinone/callerid/i/a/r/a$b$a;
.super Ljava/lang/Object;
.source "ContanFragmentManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/i/a/r/a$b;->a([Ljava/lang/String;)Ljava/lang/String;
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
.field final synthetic d:Lcom/allinone/callerid/i/a/r/a$b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/r/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/i/a/r/a$b$a;->d:Lcom/allinone/callerid/i/a/r/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/search/CallLogBean;Lcom/allinone/callerid/search/CallLogBean;)I
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    check-cast p2, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/i/a/r/a$b$a;->a(Lcom/allinone/callerid/search/CallLogBean;Lcom/allinone/callerid/search/CallLogBean;)I

    move-result p1

    return p1
.end method
