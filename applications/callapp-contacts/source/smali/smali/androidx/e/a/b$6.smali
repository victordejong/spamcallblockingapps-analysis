.class final Landroidx/e/a/b$6;
.super Landroidx/e/a/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, v0}, Landroidx/e/a/b$b;-><init>(Ljava/lang/String;Landroidx/e/a/b$1;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)F
    .locals 0

    .line 253
    check-cast p1, Landroid/view/View;

    .line 1261
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public final synthetic a(Ljava/lang/Object;F)V
    .locals 0

    .line 253
    check-cast p1, Landroid/view/View;

    float-to-int p2, p2

    .line 1256
    invoke-virtual {p1, p2}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method
