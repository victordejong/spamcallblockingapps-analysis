.class Lcom/allinone/callerid/i/a/i/c$c$a;
.super Ljava/lang/Object;
.source "CollectNormalUtil.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/i/k/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/i/a/i/c$c;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/i/a/i/c$c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/i/c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/i/a/i/c$c$a;->a:Lcom/allinone/callerid/i/a/i/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/i/c$c$a;->a:Lcom/allinone/callerid/i/a/i/c$c;

    iget-object v0, v0, Lcom/allinone/callerid/i/a/i/c$c;->a:Landroid/content/Context;

    new-instance v1, Lcom/allinone/callerid/i/a/i/c$c$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/i/a/i/c$c$a$a;-><init>(Lcom/allinone/callerid/i/a/i/c$c$a;)V

    invoke-static {v0, p1, v1}, Lcom/allinone/callerid/i/a/i/b;->a(Landroid/content/Context;Lorg/json/JSONArray;Lcom/allinone/callerid/i/a/i/a;)V

    :cond_0
    return-void
.end method
