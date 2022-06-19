.class Lcom/callerid/block/h/a/f/g$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/h/a/f/g$b;->a([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/callerid/block/search/CallLogBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/callerid/block/h/a/f/g$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/callerid/block/search/CallLogBean;Lcom/callerid/block/search/CallLogBean;)I
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    check-cast p2, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p0, p1, p2}, Lcom/callerid/block/h/a/f/g$b$a;->a(Lcom/callerid/block/search/CallLogBean;Lcom/callerid/block/search/CallLogBean;)I

    move-result p1

    return p1
.end method
