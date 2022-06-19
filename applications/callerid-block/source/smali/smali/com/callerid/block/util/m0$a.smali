.class final Lcom/callerid/block/util/m0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/e/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/m0;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/m0$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/util/m0$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/n0;->C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "en_calllog"

    goto :goto_0

    :cond_0
    const-string v0, "en_offline"

    :goto_0
    iget-object v1, p0, Lcom/callerid/block/util/m0$a;->a:Landroid/content/Context;

    new-instance v2, Lcom/callerid/block/util/m0$a$a;

    invoke-direct {v2, p0}, Lcom/callerid/block/util/m0$a$a;-><init>(Lcom/callerid/block/util/m0$a;)V

    invoke-static {v1, p1, v0, v2}, Lcom/callerid/block/h/a/e/b;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;Lcom/callerid/block/h/a/e/a;)V

    :cond_1
    return-void
.end method
