.class public final Lfa;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa$f;,
        Lfa$a;,
        Lfa$b;,
        Lfa$c;,
        Lfa$e;,
        Lfa$d;
    }
.end annotation


# static fields
.field public static final a:Lea;

.field public static final b:Lea;

.field public static final c:Lea;

.field public static final d:Lea;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfa$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfa$e;-><init>(Lfa$c;Z)V

    sput-object v0, Lfa;->a:Lea;

    new-instance v0, Lfa$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lfa$e;-><init>(Lfa$c;Z)V

    sput-object v0, Lfa;->b:Lea;

    new-instance v0, Lfa$e;

    sget-object v1, Lfa$b;->a:Lfa$b;

    invoke-direct {v0, v1, v2}, Lfa$e;-><init>(Lfa$c;Z)V

    sput-object v0, Lfa;->c:Lea;

    new-instance v0, Lfa$e;

    invoke-direct {v0, v1, v3}, Lfa$e;-><init>(Lfa$c;Z)V

    sput-object v0, Lfa;->d:Lea;

    sget-object v0, Lfa$a;->b:Lfa$a;

    sget-object v0, Lfa$f;->b:Lfa$f;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
