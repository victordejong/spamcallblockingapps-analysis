.class public final Lcom/flurry/sdk/jn$1;
.super Lcom/flurry/sdk/jn$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jn;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/jn$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/flurry/sdk/jn$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/jn$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jn$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/flurry/sdk/jn$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/jn$1;->c:Lcom/flurry/sdk/jn$a;

    invoke-direct {p0}, Lcom/flurry/sdk/jn$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/flurry/sdk/a;)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/jn$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/sdk/jn$1;->b:Ljava/lang/String;

    const-string v2, "inapp"

    invoke-static {p2, v0, v2, v1}, Lcom/flurry/sdk/jn;->a(Lcom/flurry/sdk/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/jn$c;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jn$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/sdk/jn$1;->b:Ljava/lang/String;

    const-string v2, "subs"

    invoke-static {p2, v0, v2, v1}, Lcom/flurry/sdk/jn;->a(Lcom/flurry/sdk/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/jn$c;

    move-result-object v0

    :cond_0
    iget-object p2, p0, Lcom/flurry/sdk/jn$1;->c:Lcom/flurry/sdk/jn$a;

    :goto_0
    invoke-virtual {p2, p1, v0}, Lcom/flurry/sdk/jn$a;->a(ILcom/flurry/sdk/jn$c;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/flurry/sdk/jn$1;->c:Lcom/flurry/sdk/jn$a;

    const/4 v0, 0x0

    goto :goto_0
.end method
