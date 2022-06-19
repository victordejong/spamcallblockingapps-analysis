.class Lcom/applovin/impl/sdk/e/x$1;
.super Lcom/applovin/impl/sdk/e/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/x;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/e/u<",
        "Lcom/applovin/impl/sdk/utils/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/e/x;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/e/x;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/x$1;->a:Lcom/applovin/impl/sdk/e/x;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/e/u;-><init>(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/applovin/impl/sdk/utils/q;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to resolve VAST wrapper. Server returned "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/e/a;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/x$1;->a:Lcom/applovin/impl/sdk/e/x;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/e/x;->a(Lcom/applovin/impl/sdk/e/x;I)V

    return-void
.end method

.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/applovin/impl/sdk/utils/q;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/x$1;->a(ILjava/lang/String;Lcom/applovin/impl/sdk/utils/q;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/utils/q;I)V
    .locals 2

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/x$1;->a:Lcom/applovin/impl/sdk/e/x;

    invoke-static {p2}, Lcom/applovin/impl/sdk/e/x;->a(Lcom/applovin/impl/sdk/e/x;)Lcom/applovin/impl/a/e;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/x$1;->a:Lcom/applovin/impl/sdk/e/x;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/x;->b(Lcom/applovin/impl/sdk/e/x;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/x$1;->a:Lcom/applovin/impl/sdk/e/x;

    iget-object v1, v1, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/e/r;->a(Lcom/applovin/impl/sdk/utils/q;Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/e/r;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/sdk/e/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/applovin/impl/sdk/utils/q;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/e/x$1;->a(Lcom/applovin/impl/sdk/utils/q;I)V

    return-void
.end method
