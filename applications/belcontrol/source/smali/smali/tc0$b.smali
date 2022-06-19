.class public Ltc0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltc0;->g(Landroid/view/MenuItem;Lcarbon/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/MenuItem;

.field public final synthetic b:Ltc0;


# direct methods
.method public constructor <init>(Ltc0;Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Ltc0$b;->b:Ltc0;

    iput-object p2, p0, Ltc0$b;->a:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ltc0$b;->b:Ltc0;

    invoke-static {p1}, Ltc0;->b(Ltc0;)Lcarbon/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Ltc0$b;->a:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    iget-object p1, p0, Ltc0$b;->b:Ltc0;

    invoke-virtual {p1}, Ltc0;->dismiss()V

    return-void
.end method
