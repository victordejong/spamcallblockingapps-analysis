.class final Ld/j/a/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/j/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/j/a/b$a<",
        "Ld/h/m/c0/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    check-cast p1, Ld/h/m/c0/c;

    invoke-virtual {p0, p1, p2}, Ld/j/a/a$a;->b(Ld/h/m/c0/c;Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Ld/h/m/c0/c;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1, p2}, Ld/h/m/c0/c;->m(Landroid/graphics/Rect;)V

    return-void
.end method
