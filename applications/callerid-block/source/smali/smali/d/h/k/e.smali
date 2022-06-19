.class public final Ld/h/k/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/h/k/e$f;,
        Ld/h/k/e$a;,
        Ld/h/k/e$b;,
        Ld/h/k/e$c;,
        Ld/h/k/e$e;,
        Ld/h/k/e$d;
    }
.end annotation


# static fields
.field public static final a:Ld/h/k/d;

.field public static final b:Ld/h/k/d;

.field public static final c:Ld/h/k/d;

.field public static final d:Ld/h/k/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ld/h/k/e$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/h/k/e$e;-><init>(Ld/h/k/e$c;Z)V

    sput-object v0, Ld/h/k/e;->a:Ld/h/k/d;

    new-instance v0, Ld/h/k/e$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ld/h/k/e$e;-><init>(Ld/h/k/e$c;Z)V

    sput-object v0, Ld/h/k/e;->b:Ld/h/k/d;

    new-instance v0, Ld/h/k/e$e;

    sget-object v1, Ld/h/k/e$b;->a:Ld/h/k/e$b;

    invoke-direct {v0, v1, v2}, Ld/h/k/e$e;-><init>(Ld/h/k/e$c;Z)V

    sput-object v0, Ld/h/k/e;->c:Ld/h/k/d;

    new-instance v0, Ld/h/k/e$e;

    invoke-direct {v0, v1, v3}, Ld/h/k/e$e;-><init>(Ld/h/k/e$c;Z)V

    sput-object v0, Ld/h/k/e;->d:Ld/h/k/d;

    sget-object v0, Ld/h/k/e$a;->b:Ld/h/k/e$a;

    sget-object v0, Ld/h/k/e$f;->b:Ld/h/k/e$f;

    return-void
.end method

.method static a(I)I
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

.method static b(I)I
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
