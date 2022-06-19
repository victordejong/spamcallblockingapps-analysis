.class Lcom/applovin/impl/sdk/a/g$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/a/g;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/applovin/impl/sdk/a/g;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/a/g;Z)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/g$7;->b:Lcom/applovin/impl/sdk/a/g;

    iput-boolean p2, p0, Lcom/applovin/impl/sdk/a/g$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/g$7;->b:Lcom/applovin/impl/sdk/a/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/g;->b(Lcom/applovin/impl/sdk/a/g;)Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/a/g$7;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->volumeChange(F)V

    return-void
.end method
