.class public Lcom/kedlin/cca/ui/CallScreenLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/CallScreenLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lcom/kedlin/cca/ui/CallScreenLayout;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/CallScreenLayout;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$a;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    iput-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$a;->a:[Ljava/lang/String;

    aget-object p1, p1, p3

    const-wide/16 p2, 0x0

    cmp-long v0, p4, p2

    if-nez v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$a;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-static {p2}, Lcom/kedlin/cca/ui/CallScreenLayout;->i(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
