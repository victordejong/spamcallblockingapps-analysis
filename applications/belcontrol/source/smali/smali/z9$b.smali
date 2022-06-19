.class public Lz9$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Laa$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz9;->g(Landroid/content/Context;Ly9;Ln8$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laa$d<",
        "Lz9$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln8$a;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ln8$a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lz9$b;->a:Ln8$a;

    iput-object p2, p0, Lz9$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lz9$g;

    invoke-virtual {p0, p1}, Lz9$b;->b(Lz9$g;)V

    return-void
.end method

.method public b(Lz9$g;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lz9$b;->a:Ln8$a;

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lz9$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Ln8$a;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_1

    :cond_0
    iget v0, p1, Lz9$g;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lz9$b;->a:Ln8$a;

    iget-object p1, p1, Lz9$g;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Lz9$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Ln8$a;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lz9$b;->a:Ln8$a;

    goto :goto_0

    :goto_1
    return-void
.end method
