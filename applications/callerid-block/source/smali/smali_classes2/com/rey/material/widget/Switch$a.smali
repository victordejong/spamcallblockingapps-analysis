.class Lcom/rey/material/widget/Switch$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/rey/material/widget/Switch;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/Switch;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/Switch$a;->b:Lcom/rey/material/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/Switch$a;->b:Lcom/rey/material/widget/Switch;

    invoke-static {v0}, Lcom/rey/material/widget/Switch;->a(Lcom/rey/material/widget/Switch;)V

    return-void
.end method
