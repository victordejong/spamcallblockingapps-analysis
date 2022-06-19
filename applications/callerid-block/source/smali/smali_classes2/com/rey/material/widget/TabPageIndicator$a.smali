.class Lcom/rey/material/widget/TabPageIndicator$a;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/widget/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/TabPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/TabPageIndicator$a;->a:Lcom/rey/material/widget/TabPageIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator$a;->a:Lcom/rey/material/widget/TabPageIndicator;

    invoke-static {v0}, Lcom/rey/material/widget/TabPageIndicator;->f(Lcom/rey/material/widget/TabPageIndicator;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator$a;->a:Lcom/rey/material/widget/TabPageIndicator;

    invoke-static {v0}, Lcom/rey/material/widget/TabPageIndicator;->g(Lcom/rey/material/widget/TabPageIndicator;)V

    return-void
.end method
