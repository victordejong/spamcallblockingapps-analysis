.class Lcom/applovin/impl/sdk/utils/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/utils/e;-><init>(JLcom/applovin/impl/sdk/l;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/applovin/impl/sdk/utils/e;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/utils/e;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/e$1;->b:Lcom/applovin/impl/sdk/utils/e;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/e$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/e$1;->b:Lcom/applovin/impl/sdk/utils/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/e;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/e$1;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
