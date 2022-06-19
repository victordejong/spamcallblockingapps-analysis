.class public Lb/h/h/f;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/h/f$c;,
        Lb/h/h/f$a;,
        Lb/h/h/f$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lb/h/h/d;IZILandroid/os/Handler;Lb/h/h/f$c;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    new-instance v0, Lb/h/h/a;

    invoke-direct {v0, p6, p5}, Lb/h/h/a;-><init>(Lb/h/h/f$c;Landroid/os/Handler;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p0, p1, v0, p2, p4}, Lb/h/h/e;->e(Landroid/content/Context;Lb/h/h/d;Lb/h/h/a;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p3, 0x0

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lb/h/h/e;->d(Landroid/content/Context;Lb/h/h/d;ILjava/util/concurrent/Executor;Lb/h/h/a;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
