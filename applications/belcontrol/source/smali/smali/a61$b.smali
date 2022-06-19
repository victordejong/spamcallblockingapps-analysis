.class public La61$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:La61;


# direct methods
.method public constructor <init>(La61;)V
    .locals 0

    iput-object p1, p0, La61$b;->b:La61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La61;La61$a;)V
    .locals 0

    invoke-direct {p0, p1}, La61$b;-><init>(La61;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La61$c;

    iget-object p1, p1, La61$c;->f:Landroid/widget/ImageView;

    iget-object v0, p0, La61$b;->b:La61;

    invoke-static {v0}, La61;->k(La61;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, La61$b;->b:La61;

    invoke-static {v0}, La61;->k(La61;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
