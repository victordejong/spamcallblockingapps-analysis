.class public final Lorg/objenesis/a/b/a;
.super Lorg/objenesis/a/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/objenesis/a/b/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lorg/objenesis/a/b/b;-><init>(Ljava/lang/Class;)V

    .line 34
    iget-object p1, p0, Lorg/objenesis/a/b/a;->a:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lorg/objenesis/a/b/a;->a:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    return-void
.end method
