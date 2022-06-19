.class public Ley$h$a;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ley$h;->d(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Ley$h;IILandroid/view/View;)V
    .locals 0

    iput p2, p0, Ley$h$a;->a:I

    iput p3, p0, Ley$h$a;->b:I

    iput-object p4, p0, Ley$h$a;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget p2, p0, Ley$h$a;->a:I

    iget v0, p0, Ley$h$a;->b:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    iget-object p2, p0, Ley$h$a;->c:Landroid/view/View;

    add-int/2addr v0, p1

    invoke-static {p2, v0}, Ley;->h(Landroid/view/View;I)V

    return-void
.end method
