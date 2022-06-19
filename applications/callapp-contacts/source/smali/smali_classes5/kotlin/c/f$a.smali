.class public final Lkotlin/c/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static a(Lkotlin/c/f;Lkotlin/c/f;)Lkotlin/c/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lkotlin/c/g;->a:Lkotlin/c/g;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 32
    :cond_0
    sget-object v0, Lkotlin/c/f$a$a;->a:Lkotlin/c/f$a$a;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, p0, v0}, Lkotlin/c/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/c/f;

    return-object p0
.end method
