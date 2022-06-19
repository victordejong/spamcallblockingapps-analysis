.class Lcom/applovin/impl/sdk/network/e$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/network/e$a;->a(Lcom/applovin/impl/sdk/network/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/network/e$b;

.field public final synthetic b:Lcom/applovin/impl/sdk/network/e$c;

.field public final synthetic c:Lcom/applovin/impl/sdk/network/e$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/network/e$a;Lcom/applovin/impl/sdk/network/e$b;Lcom/applovin/impl/sdk/network/e$c;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$a$1;->c:Lcom/applovin/impl/sdk/network/e$a;

    iput-object p2, p0, Lcom/applovin/impl/sdk/network/e$a$1;->a:Lcom/applovin/impl/sdk/network/e$b;

    iput-object p3, p0, Lcom/applovin/impl/sdk/network/e$a$1;->b:Lcom/applovin/impl/sdk/network/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e$a$1;->a:Lcom/applovin/impl/sdk/network/e$b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/e$b;->c(Lcom/applovin/impl/sdk/network/e$b;)Ll0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e$a$1;->b:Lcom/applovin/impl/sdk/network/e$c;

    invoke-interface {v0, v1}, Ll0/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
