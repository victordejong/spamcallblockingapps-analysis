.class final Landroidx/core/e/b$2;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroidx/core/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/e/b;->a(Landroid/content/Context;Landroidx/core/e/a;Landroidx/core/a/a/f$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/e/c$a",
        "<",
        "Landroidx/core/e/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/a/a/f$a;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/a/a/f$a;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Landroidx/core/e/b$2;->a:Landroidx/core/a/a/f$a;

    iput-object p2, p0, Landroidx/core/e/b$2;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/e/b$c;)V
    .locals 3

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    iget-object v0, p0, Landroidx/core/e/b$2;->a:Landroidx/core/a/a/f$a;

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/core/e/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroidx/core/a/a/f$a;->a(ILandroid/os/Handler;)V

    .line 284
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p1, Landroidx/core/e/b$c;->b:I

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Landroidx/core/e/b$2;->a:Landroidx/core/a/a/f$a;

    iget-object v1, p1, Landroidx/core/e/b$c;->a:Landroid/graphics/Typeface;

    iget-object v2, p0, Landroidx/core/e/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroidx/core/a/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Landroidx/core/e/b$2;->a:Landroidx/core/a/a/f$a;

    iget v1, p1, Landroidx/core/e/b$c;->b:I

    iget-object v2, p0, Landroidx/core/e/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroidx/core/a/a/f$a;->a(ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    check-cast p1, Landroidx/core/e/b$c;

    invoke-virtual {p0, p1}, Landroidx/core/e/b$2;->a(Landroidx/core/e/b$c;)V

    return-void
.end method
