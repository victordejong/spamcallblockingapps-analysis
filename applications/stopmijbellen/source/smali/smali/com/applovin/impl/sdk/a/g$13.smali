.class Lcom/applovin/impl/sdk/a/g$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/a/g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/a/g;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/g$13;->a:Lcom/applovin/impl/sdk/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/g$13;->a:Lcom/applovin/impl/sdk/a/g;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/a/b;->e:Z

    iget-object v0, v0, Lcom/applovin/impl/sdk/a/b;->f:Lcom/iab/omid/library/applovin/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/AdSession;->finish()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/g$13;->a:Lcom/applovin/impl/sdk/a/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/applovin/impl/sdk/a/b;->f:Lcom/iab/omid/library/applovin/adsession/AdSession;

    return-void
.end method
