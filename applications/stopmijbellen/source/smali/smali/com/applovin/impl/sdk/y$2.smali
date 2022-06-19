.class Lcom/applovin/impl/sdk/y$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/y;-><init>(Landroid/view/View;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/y$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/y;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/y;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/y$2;->a:Lcom/applovin/impl/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/y$2;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->d(Lcom/applovin/impl/sdk/y;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/y$2;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->e(Lcom/applovin/impl/sdk/y;)V

    const/4 v0, 0x1

    return v0
.end method
