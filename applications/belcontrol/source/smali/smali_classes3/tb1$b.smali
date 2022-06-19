.class public Ltb1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhi1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltb1;->e(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:F

.field public final synthetic c:Ltb1;


# direct methods
.method public constructor <init>(Ltb1;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Ltb1$b;->c:Ltb1;

    iput-object p2, p0, Ltb1$b;->a:Landroid/view/View;

    iput p3, p0, Ltb1$b;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi1;)V
    .locals 2

    iget-object p1, p0, Ltb1$b;->c:Ltb1;

    iget-object v0, p0, Ltb1$b;->a:Landroid/view/View;

    iget v1, p0, Ltb1$b;->b:F

    invoke-static {p1, v0, v1}, Ltb1;->c(Ltb1;Landroid/view/View;F)V

    return-void
.end method

.method public b(Lhi1;)V
    .locals 0

    return-void
.end method

.method public c(Lhi1;)V
    .locals 0

    return-void
.end method

.method public d(Lhi1;)V
    .locals 2

    iget-object p1, p0, Ltb1$b;->c:Ltb1;

    iget-object v0, p0, Ltb1$b;->a:Landroid/view/View;

    iget v1, p0, Ltb1$b;->b:F

    invoke-static {p1, v0, v1}, Ltb1;->c(Ltb1;Landroid/view/View;F)V

    return-void
.end method
