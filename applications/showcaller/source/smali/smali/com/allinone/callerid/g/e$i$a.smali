.class Lcom/allinone/callerid/g/e$i$a;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/z/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e$i;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/e$i;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$i$a;->a:Lcom/allinone/callerid/g/e$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ok"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/e$i$a;->a:Lcom/allinone/callerid/g/e$i;

    iget-object p1, p1, Lcom/allinone/callerid/g/e$i;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/g/e$i$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/e$i$a$a;-><init>(Lcom/allinone/callerid/g/e$i$a;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/z/b;->a(Ljava/util/List;Lcom/allinone/callerid/i/a/z/d;)V

    :cond_0
    return-void
.end method
