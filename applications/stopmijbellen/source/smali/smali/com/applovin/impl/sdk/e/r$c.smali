.class final Lcom/applovin/impl/sdk/e/r$c;
.super Lcom/applovin/impl/sdk/e/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/r;-><init>(Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    invoke-virtual {p1}, Lcom/applovin/impl/a/e;->c()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/r$c;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Processing SDK JSON response..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$c;->a:Lorg/json/JSONObject;

    const-string v1, "xml"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->eg:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/r;->e(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/r;->a(Lcom/applovin/impl/sdk/utils/q;)V

    goto :goto_1

    :cond_0
    const-string v0, "VAST response is over max length"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/f;->e:Lcom/applovin/impl/a/f;

    goto :goto_0

    :cond_1
    const-string v0, "No VAST response received."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/f;->i:Lcom/applovin/impl/a/f;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/r;->a(Lcom/applovin/impl/a/f;)V

    :goto_1
    return-void
.end method
