.class public final Lsb;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field public final a:I

.field public final b:Lub;

.field public final c:I


# direct methods
.method public constructor <init>(ILub;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lsb;->a:I

    iput-object p2, p0, Lsb;->b:Lub;

    iput p3, p0, Lsb;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lsb;->a:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lsb;->b:Lub;

    iget v1, p0, Lsb;->c:I

    invoke-virtual {v0, v1, p1}, Lub;->R(ILandroid/os/Bundle;)Z

    return-void
.end method
