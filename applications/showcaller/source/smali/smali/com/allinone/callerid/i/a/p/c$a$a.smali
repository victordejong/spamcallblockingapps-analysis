.class Lcom/allinone/callerid/i/a/p/c$a$a;
.super Ljava/lang/Object;
.source "BlookFramnentManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/i/a/p/c$a;->a([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/allinone/callerid/bean/BlockCall;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/i/a/p/c$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/p/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/i/a/p/c$a$a;->d:Lcom/allinone/callerid/i/a/p/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/bean/BlockCall;Lcom/allinone/callerid/bean/BlockCall;)I
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/allinone/callerid/bean/BlockCall;->getTime()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/BlockCall;->getTime()J

    move-result-wide v0

    long-to-int p1, v0

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/bean/BlockCall;

    check-cast p2, Lcom/allinone/callerid/bean/BlockCall;

    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/i/a/p/c$a$a;->a(Lcom/allinone/callerid/bean/BlockCall;Lcom/allinone/callerid/bean/BlockCall;)I

    move-result p1

    return p1
.end method
