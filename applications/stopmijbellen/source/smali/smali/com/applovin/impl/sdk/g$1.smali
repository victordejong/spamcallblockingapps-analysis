.class Lcom/applovin/impl/sdk/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/g;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/g$a;

.field public final synthetic b:I

.field public final synthetic c:Lcom/applovin/impl/sdk/g;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/g;Lcom/applovin/impl/sdk/g$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/g$1;->c:Lcom/applovin/impl/sdk/g;

    iput-object p2, p0, Lcom/applovin/impl/sdk/g$1;->a:Lcom/applovin/impl/sdk/g$a;

    iput p3, p0, Lcom/applovin/impl/sdk/g$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/g$1;->a:Lcom/applovin/impl/sdk/g$a;

    iget v1, p0, Lcom/applovin/impl/sdk/g$1;->b:I

    invoke-interface {v0, v1}, Lcom/applovin/impl/sdk/g$a;->a(I)V

    return-void
.end method
