.class Lb/h/e/j$b;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lb/h/e/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/e/j;->f(Landroidx/core/content/d/c$b;I)Landroidx/core/content/d/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/h/e/j$c<",
        "Landroidx/core/content/d/c$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/h/e/j;


# direct methods
.method constructor <init>(Lb/h/e/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/h/e/j$b;->a:Lb/h/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/core/content/d/c$c;

    invoke-virtual {p0, p1}, Lb/h/e/j$b;->c(Landroidx/core/content/d/c$c;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroidx/core/content/d/c$c;

    invoke-virtual {p0, p1}, Lb/h/e/j$b;->d(Landroidx/core/content/d/c$c;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/core/content/d/c$c;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/core/content/d/c$c;->e()I

    move-result p1

    return p1
.end method

.method public d(Landroidx/core/content/d/c$c;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/core/content/d/c$c;->f()Z

    move-result p1

    return p1
.end method
