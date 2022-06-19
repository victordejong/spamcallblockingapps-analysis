.class Lcom/callerid/block/util/m0$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/m0$a;->a(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/util/m0$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/util/m0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/m0$a$a;->a:Lcom/callerid/block/util/m0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/callerid/block/util/m0$a$a;->a:Lcom/callerid/block/util/m0$a;

    iget-object p1, p1, Lcom/callerid/block/util/m0$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/h/a/e/h;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/callerid/block/util/m0$a$a;->a:Lcom/callerid/block/util/m0$a;

    iget-object p1, p1, Lcom/callerid/block/util/m0$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/n0;->C(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/util/m0$a$a;->a:Lcom/callerid/block/util/m0$a;

    iget-object p1, p1, Lcom/callerid/block/util/m0$a;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callerid/block/util/n0;->M0(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
