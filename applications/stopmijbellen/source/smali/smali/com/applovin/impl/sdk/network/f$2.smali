.class Lcom/applovin/impl/sdk/network/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinPostbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/network/f;->a(Lcom/applovin/impl/sdk/network/h;Lcom/applovin/sdk/AppLovinPostbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/network/h;

.field public final synthetic b:Lcom/applovin/sdk/AppLovinPostbackListener;

.field public final synthetic c:Lcom/applovin/impl/sdk/network/f;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/network/h;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f$2;->c:Lcom/applovin/impl/sdk/network/f;

    iput-object p2, p0, Lcom/applovin/impl/sdk/network/f$2;->a:Lcom/applovin/impl/sdk/network/h;

    iput-object p3, p0, Lcom/applovin/impl/sdk/network/f$2;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostbackFailure(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f$2;->c:Lcom/applovin/impl/sdk/network/f;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/f;->b(Lcom/applovin/impl/sdk/network/f;)Lcom/applovin/impl/sdk/t;

    move-result-object v0

    const-string v1, "Failed to submit postback with errorCode "

    const-string v2, ". Will retry later...  Postback: "

    invoke-static {v1, p2, v2}, Landroid/support/v4/media/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f$2;->a:Lcom/applovin/impl/sdk/network/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersistentPostbackManager"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f$2;->c:Lcom/applovin/impl/sdk/network/f;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f$2;->a:Lcom/applovin/impl/sdk/network/h;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/network/f;->c(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/network/h;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f$2;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;I)V

    return-void
.end method

.method public onPostbackSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f$2;->c:Lcom/applovin/impl/sdk/network/f;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f$2;->a:Lcom/applovin/impl/sdk/network/h;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/network/f;->b(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/network/h;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f$2;->c:Lcom/applovin/impl/sdk/network/f;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/f;->b(Lcom/applovin/impl/sdk/network/f;)Lcom/applovin/impl/sdk/t;

    move-result-object v0

    const-string v1, "Successfully submitted postback: "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f$2;->a:Lcom/applovin/impl/sdk/network/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersistentPostbackManager"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f$2;->c:Lcom/applovin/impl/sdk/network/f;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/f;->c(Lcom/applovin/impl/sdk/network/f;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f$2;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;)V

    return-void
.end method
