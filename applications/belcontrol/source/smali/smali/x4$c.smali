.class public Lx4$c;
.super Lx4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public g:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lx4;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lx4$c;->g:[F

    return-void
.end method


# virtual methods
.method public f(Landroid/view/View;F)V
    .locals 2

    iget-object v0, p0, Lx4$c;->g:[F

    invoke-virtual {p0, p2}, Lx4;->a(F)F

    move-result p2

    const/4 v1, 0x0

    aput p2, v0, v1

    iget-object p2, p0, Lx4;->b:Ly6;

    iget-object v0, p0, Lx4$c;->g:[F

    invoke-virtual {p2, p1, v0}, Ly6;->i(Landroid/view/View;[F)V

    return-void
.end method
