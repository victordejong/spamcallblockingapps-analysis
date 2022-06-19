.class Lb/h/e/j$a;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lb/h/e/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/e/j;->h([Lb/h/h/f$b;I)Lb/h/h/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/h/e/j$c<",
        "Lb/h/h/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/h/e/j;


# direct methods
.method constructor <init>(Lb/h/e/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/h/e/j$a;->a:Lb/h/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/h/h/f$b;

    invoke-virtual {p0, p1}, Lb/h/e/j$a;->c(Lb/h/h/f$b;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lb/h/h/f$b;

    invoke-virtual {p0, p1}, Lb/h/e/j$a;->d(Lb/h/h/f$b;)Z

    move-result p1

    return p1
.end method

.method public c(Lb/h/h/f$b;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lb/h/h/f$b;->e()I

    move-result p1

    return p1
.end method

.method public d(Lb/h/h/f$b;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lb/h/h/f$b;->f()Z

    move-result p1

    return p1
.end method
