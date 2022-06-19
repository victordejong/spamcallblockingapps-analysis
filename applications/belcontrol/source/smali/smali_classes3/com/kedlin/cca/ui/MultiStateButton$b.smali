.class public Lcom/kedlin/cca/ui/MultiStateButton$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/MultiStateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/MultiStateButton;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kedlin/cca/ui/MultiStateButton$b;->a:Landroid/widget/TextView;

    iput p3, p0, Lcom/kedlin/cca/ui/MultiStateButton$b;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kedlin/cca/ui/MultiStateButton;Landroid/widget/TextView;ILcom/kedlin/cca/ui/MultiStateButton$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/kedlin/cca/ui/MultiStateButton$b;-><init>(Lcom/kedlin/cca/ui/MultiStateButton;Landroid/widget/TextView;I)V

    return-void
.end method

.method public static synthetic a(Lcom/kedlin/cca/ui/MultiStateButton$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/MultiStateButton$b;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic b(Lcom/kedlin/cca/ui/MultiStateButton$b;)I
    .locals 0

    iget p0, p0, Lcom/kedlin/cca/ui/MultiStateButton$b;->b:I

    return p0
.end method
