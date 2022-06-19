.class final Landroidx/customview/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/customview/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/customview/a/b$b<",
        "Landroidx/b/h<",
        "Landroidx/core/view/a/c;",
        ">;",
        "Landroidx/core/view/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 349
    check-cast p1, Landroidx/b/h;

    .line 1358
    invoke-virtual {p1}, Landroidx/b/h;->b()I

    move-result p1

    return p1
.end method

.method public final synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 349
    check-cast p1, Landroidx/b/h;

    .line 2353
    invoke-virtual {p1, p2}, Landroidx/b/h;->b(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/a/c;

    return-object p1
.end method
