.class Lcom/callerid/block/start/GgGuideActivity$1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/GgGuideActivity$1;->i(Lcom/rey/material/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/rey/material/app/Dialog;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/GgGuideActivity$1;Lcom/rey/material/app/Dialog;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/start/GgGuideActivity$1$a;->b:Lcom/rey/material/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/callerid/block/start/GgGuideActivity$1$a;->b:Lcom/rey/material/app/Dialog;

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    return-void
.end method
