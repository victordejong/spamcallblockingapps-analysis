.class public abstract Lnz;
.super Lzy;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz$a;,
        Lnz$d;,
        Lnz$c;,
        Lnz$b;,
        Lnz$e;,
        Lnz$f;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lzy$d;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lnz;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lzy$d;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Lzy;-><init>(Landroid/content/Context;Lzy$d;)V

    return-void
.end method

.method public static A(Landroid/content/Context;Lnz$f;)Lnz;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lnz$a;

    invoke-direct {v0, p0, p1}, Lnz$a;-><init>(Landroid/content/Context;Lnz$f;)V

    return-object v0

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Lnz$d;

    invoke-direct {v0, p0, p1}, Lnz$d;-><init>(Landroid/content/Context;Lnz$f;)V

    return-object v0

    :cond_1
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    new-instance v0, Lnz$c;

    invoke-direct {v0, p0, p1}, Lnz$c;-><init>(Landroid/content/Context;Lnz$f;)V

    return-object v0

    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    new-instance v0, Lnz$b;

    invoke-direct {v0, p0, p1}, Lnz$b;-><init>(Landroid/content/Context;Lnz$f;)V

    return-object v0

    :cond_3
    new-instance p1, Lnz$e;

    invoke-direct {p1, p0}, Lnz$e;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public B(Ldz$i;)V
    .locals 0

    return-void
.end method

.method public C(Ldz$i;)V
    .locals 0

    return-void
.end method

.method public D(Ldz$i;)V
    .locals 0

    return-void
.end method

.method public E(Ldz$i;)V
    .locals 0

    return-void
.end method
