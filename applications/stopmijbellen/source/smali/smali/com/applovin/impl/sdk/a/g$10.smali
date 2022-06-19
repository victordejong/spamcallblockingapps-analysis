.class Lcom/applovin/impl/sdk/a/g$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/a/g;->d()V
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

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/g$10;->a:Lcom/applovin/impl/sdk/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/g$10;->a:Lcom/applovin/impl/sdk/a/g;

    iget-object v0, v0, Lcom/applovin/impl/sdk/a/b;->g:Lcom/iab/omid/library/applovin/adsession/AdEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/AdEvents;->impressionOccurred()V

    return-void
.end method
