.class public final synthetic Lgu0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lmu0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lmu0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgu0;->a:Lmu0;

    iput p2, p0, Lgu0;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lgu0;->a:Lmu0;

    iget v1, p0, Lgu0;->b:I

    invoke-virtual {v0, v1, p1}, Lmu0;->f(ILandroid/view/View;)V

    return-void
.end method
