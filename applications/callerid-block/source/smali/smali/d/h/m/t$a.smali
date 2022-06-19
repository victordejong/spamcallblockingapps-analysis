.class Ld/h/m/t$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h/m/t;->B0(Landroid/view/View;Ld/h/m/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/h/m/p;


# direct methods
.method constructor <init>(Ld/h/m/p;)V
    .locals 0

    iput-object p1, p0, Ld/h/m/t$a;->a:Ld/h/m/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {p2}, Ld/h/m/b0;->p(Landroid/view/WindowInsets;)Ld/h/m/b0;

    move-result-object p2

    iget-object v0, p0, Ld/h/m/t$a;->a:Ld/h/m/p;

    invoke-interface {v0, p1, p2}, Ld/h/m/p;->a(Landroid/view/View;Ld/h/m/b0;)Ld/h/m/b0;

    move-result-object p1

    invoke-virtual {p1}, Ld/h/m/b0;->o()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
