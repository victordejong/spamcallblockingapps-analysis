.class public Lic0$b;
.super Lbc0$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public s:[I

.field public t:Landroid/content/res/ColorStateList;

.field public u:I


# direct methods
.method public constructor <init>(Lbc0$b;Lic0;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbc0$b;-><init>(Lbc0$b;Lbc0;Landroid/content/res/Resources;)V

    const p2, -0xff01

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lic0$b;->t:Landroid/content/res/ColorStateList;

    const/4 p2, -0x1

    iput p2, p0, Lic0$b;->u:I

    if-eqz p1, :cond_0

    instance-of p2, p1, Lic0$b;

    if-eqz p2, :cond_0

    check-cast p1, Lic0$b;

    iget-object p2, p1, Lic0$b;->s:[I

    iput-object p2, p0, Lic0$b;->s:[I

    iget-object p2, p1, Lic0$b;->t:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lic0$b;->t:Landroid/content/res/ColorStateList;

    iget p1, p1, Lic0$b;->u:I

    iput p1, p0, Lic0$b;->u:I

    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lic0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lic0;-><init>(Lic0$b;Landroid/content/res/Resources;Lic0$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lic0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lic0;-><init>(Lic0$b;Landroid/content/res/Resources;Lic0$a;)V

    return-object v0
.end method
