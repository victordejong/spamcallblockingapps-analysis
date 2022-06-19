.class public Lna1$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lna1$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lna1$c;


# direct methods
.method public constructor <init>(Lna1$c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lna1$c$a;->b:Lna1$c;

    iput-object p2, p0, Lna1$c$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lna1$c$a;->b:Lna1$c;

    iget-object v1, v0, Lna1$c;->b:Lna1$d;

    iget-object v0, v0, Lna1$c;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/core/util/billing/Purchase;

    iget-object v3, p0, Lna1$c$a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loa1;

    invoke-interface {v1, v0, v2}, Lna1$d;->a(Lcom/kedlin/cca/core/util/billing/Purchase;Loa1;)V

    return-void
.end method
