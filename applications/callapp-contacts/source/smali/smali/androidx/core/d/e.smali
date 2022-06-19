.class public final Landroidx/core/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/d/e$f;,
        Landroidx/core/d/e$a;,
        Landroidx/core/d/e$b;,
        Landroidx/core/d/e$c;,
        Landroidx/core/d/e$e;,
        Landroidx/core/d/e$d;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/d/d;

.field public static final b:Landroidx/core/d/d;

.field public static final c:Landroidx/core/d/d;

.field public static final d:Landroidx/core/d/d;

.field public static final e:Landroidx/core/d/d;

.field public static final f:Landroidx/core/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Landroidx/core/d/e$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/d/e$e;-><init>(Landroidx/core/d/e$c;Z)V

    sput-object v0, Landroidx/core/d/e;->a:Landroidx/core/d/d;

    .line 39
    new-instance v0, Landroidx/core/d/e$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/core/d/e$e;-><init>(Landroidx/core/d/e$c;Z)V

    sput-object v0, Landroidx/core/d/e;->b:Landroidx/core/d/d;

    .line 47
    new-instance v0, Landroidx/core/d/e$e;

    sget-object v1, Landroidx/core/d/e$b;->a:Landroidx/core/d/e$b;

    invoke-direct {v0, v1, v2}, Landroidx/core/d/e$e;-><init>(Landroidx/core/d/e$c;Z)V

    sput-object v0, Landroidx/core/d/e;->c:Landroidx/core/d/d;

    .line 55
    new-instance v0, Landroidx/core/d/e$e;

    sget-object v1, Landroidx/core/d/e$b;->a:Landroidx/core/d/e$b;

    invoke-direct {v0, v1, v3}, Landroidx/core/d/e$e;-><init>(Landroidx/core/d/e$c;Z)V

    sput-object v0, Landroidx/core/d/e;->d:Landroidx/core/d/d;

    .line 62
    new-instance v0, Landroidx/core/d/e$e;

    sget-object v1, Landroidx/core/d/e$a;->a:Landroidx/core/d/e$a;

    invoke-direct {v0, v1, v2}, Landroidx/core/d/e$e;-><init>(Landroidx/core/d/e$c;Z)V

    sput-object v0, Landroidx/core/d/e;->e:Landroidx/core/d/d;

    .line 68
    sget-object v0, Landroidx/core/d/e$f;->a:Landroidx/core/d/e$f;

    sput-object v0, Landroidx/core/d/e;->f:Landroidx/core/d/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
