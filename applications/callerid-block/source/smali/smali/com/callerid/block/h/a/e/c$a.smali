.class final Lcom/callerid/block/h/a/e/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/e/k/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/h/a/e/c;->c(Landroid/content/Context;Lcom/callerid/block/bean/CollectInfo;)V
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

    iput-object p1, p0, Lcom/callerid/block/h/a/e/c$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/h/a/e/c$a;->a:Landroid/content/Context;

    new-instance v1, Lcom/callerid/block/h/a/e/c$a$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/h/a/e/c$a$a;-><init>(Lcom/callerid/block/h/a/e/c$a;)V

    const-string v2, "en"

    invoke-static {v0, p1, v2, v1}, Lcom/callerid/block/h/a/e/b;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;Lcom/callerid/block/h/a/e/a;)V

    :cond_0
    return-void
.end method
