.class Lcom/applovin/impl/sdk/e/y$1;
.super Lcom/applovin/impl/sdk/e/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/y;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/network/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/e/u<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/network/b$c;

.field public final synthetic c:Lcom/applovin/impl/sdk/e/y;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/e/y;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/network/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/y$1;->c:Lcom/applovin/impl/sdk/e/y;

    iput-object p4, p0, Lcom/applovin/impl/sdk/e/y$1;->a:Lcom/applovin/impl/sdk/network/b$c;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/e/u;-><init>(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/y$1;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/y$1;->a:Lcom/applovin/impl/sdk/network/b$c;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/network/b$c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/e/y$1;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/y$1;->a:Lcom/applovin/impl/sdk/network/b$c;

    invoke-interface {v0, p1, p2}, Lcom/applovin/impl/sdk/network/b$c;->a(Ljava/lang/Object;I)V

    return-void
.end method
