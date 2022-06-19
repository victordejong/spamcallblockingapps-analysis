.class Lcom/allinone/callerid/g/i$a$a;
.super Ljava/lang/Object;
.source "UnknownContentFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/i$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/i$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/i$a$a;->a:Lcom/allinone/callerid/g/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$a;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->a2(Lcom/allinone/callerid/g/i;)V

    :cond_0
    return-void
.end method
