.class Lcom/bytedance/sdk/adnet/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/a/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/m$a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/adnet/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/a/a;I)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iput p2, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 346
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "message"

    .line 353
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string v1, "success"

    .line 356
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V

    return-void

    .line 361
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 362
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->b(Lcom/bytedance/sdk/adnet/a/a;I)V

    return-void

    .line 364
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 372
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V

    return-void
.end method
