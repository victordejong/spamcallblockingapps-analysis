.class public final Landroidx/core/e/e;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/e/e$f;,
        Landroidx/core/e/e$a;,
        Landroidx/core/e/e$b;,
        Landroidx/core/e/e$c;,
        Landroidx/core/e/e$e;,
        Landroidx/core/e/e$d;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/e/d;

.field public static final b:Landroidx/core/e/d;

.field public static final c:Landroidx/core/e/d;

.field public static final d:Landroidx/core/e/d;

.field public static final e:Landroidx/core/e/d;

.field public static final f:Landroidx/core/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Landroidx/core/e/e$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/e/e$e;-><init>(Landroidx/core/e/e$c;Z)V

    sput-object v0, Landroidx/core/e/e;->a:Landroidx/core/e/d;

    .line 39
    new-instance v0, Landroidx/core/e/e$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/core/e/e$e;-><init>(Landroidx/core/e/e$c;Z)V

    sput-object v0, Landroidx/core/e/e;->b:Landroidx/core/e/d;

    .line 47
    new-instance v0, Landroidx/core/e/e$e;

    sget-object v1, Landroidx/core/e/e$b;->a:Landroidx/core/e/e$b;

    invoke-direct {v0, v1, v2}, Landroidx/core/e/e$e;-><init>(Landroidx/core/e/e$c;Z)V

    sput-object v0, Landroidx/core/e/e;->c:Landroidx/core/e/d;

    .line 55
    new-instance v0, Landroidx/core/e/e$e;

    sget-object v1, Landroidx/core/e/e$b;->a:Landroidx/core/e/e$b;

    invoke-direct {v0, v1, v3}, Landroidx/core/e/e$e;-><init>(Landroidx/core/e/e$c;Z)V

    sput-object v0, Landroidx/core/e/e;->d:Landroidx/core/e/d;

    .line 62
    new-instance v0, Landroidx/core/e/e$e;

    sget-object v1, Landroidx/core/e/e$a;->a:Landroidx/core/e/e$a;

    invoke-direct {v0, v1, v2}, Landroidx/core/e/e$e;-><init>(Landroidx/core/e/e$c;Z)V

    sput-object v0, Landroidx/core/e/e;->e:Landroidx/core/e/d;

    .line 68
    sget-object v0, Landroidx/core/e/e$f;->a:Landroidx/core/e/e$f;

    sput-object v0, Landroidx/core/e/e;->f:Landroidx/core/e/d;

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
