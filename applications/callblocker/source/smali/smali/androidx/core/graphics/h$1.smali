.class Landroidx/core/graphics/h$1;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroidx/core/graphics/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/graphics/h;->a([Landroidx/core/e/b$b;I)Landroidx/core/e/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/graphics/h$a",
        "<",
        "Landroidx/core/e/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/graphics/h;


# direct methods
.method constructor <init>(Landroidx/core/graphics/h;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Landroidx/core/graphics/h$1;->a:Landroidx/core/graphics/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/e/b$b;)I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p1}, Landroidx/core/e/b$b;->c()I

    move-result v0

    return v0
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 99
    check-cast p1, Landroidx/core/e/b$b;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/h$1;->b(Landroidx/core/e/b$b;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 99
    check-cast p1, Landroidx/core/e/b$b;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/h$1;->a(Landroidx/core/e/b$b;)I

    move-result v0

    return v0
.end method

.method public b(Landroidx/core/e/b$b;)Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p1}, Landroidx/core/e/b$b;->d()Z

    move-result v0

    return v0
.end method
