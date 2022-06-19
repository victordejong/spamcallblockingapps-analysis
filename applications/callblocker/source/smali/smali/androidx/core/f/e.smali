.class public final Landroidx/core/f/e;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/f/e$f;,
        Landroidx/core/f/e$a;,
        Landroidx/core/f/e$b;,
        Landroidx/core/f/e$c;,
        Landroidx/core/f/e$e;,
        Landroidx/core/f/e$d;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/f/d;

.field public static final b:Landroidx/core/f/d;

.field public static final c:Landroidx/core/f/d;

.field public static final d:Landroidx/core/f/d;

.field public static final e:Landroidx/core/f/d;

.field public static final f:Landroidx/core/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Landroidx/core/f/e$e;

    invoke-direct {v0, v1, v2}, Landroidx/core/f/e$e;-><init>(Landroidx/core/f/e$c;Z)V

    sput-object v0, Landroidx/core/f/e;->a:Landroidx/core/f/d;

    .line 39
    new-instance v0, Landroidx/core/f/e$e;

    invoke-direct {v0, v1, v3}, Landroidx/core/f/e$e;-><init>(Landroidx/core/f/e$c;Z)V

    sput-object v0, Landroidx/core/f/e;->b:Landroidx/core/f/d;

    .line 47
    new-instance v0, Landroidx/core/f/e$e;

    sget-object v1, Landroidx/core/f/e$b;->a:Landroidx/core/f/e$b;

    invoke-direct {v0, v1, v2}, Landroidx/core/f/e$e;-><init>(Landroidx/core/f/e$c;Z)V

    sput-object v0, Landroidx/core/f/e;->c:Landroidx/core/f/d;

    .line 55
    new-instance v0, Landroidx/core/f/e$e;

    sget-object v1, Landroidx/core/f/e$b;->a:Landroidx/core/f/e$b;

    invoke-direct {v0, v1, v3}, Landroidx/core/f/e$e;-><init>(Landroidx/core/f/e$c;Z)V

    sput-object v0, Landroidx/core/f/e;->d:Landroidx/core/f/d;

    .line 62
    new-instance v0, Landroidx/core/f/e$e;

    sget-object v1, Landroidx/core/f/e$a;->a:Landroidx/core/f/e$a;

    invoke-direct {v0, v1, v2}, Landroidx/core/f/e$e;-><init>(Landroidx/core/f/e$c;Z)V

    sput-object v0, Landroidx/core/f/e;->e:Landroidx/core/f/d;

    .line 68
    sget-object v0, Landroidx/core/f/e$f;->a:Landroidx/core/f/e$f;

    sput-object v0, Landroidx/core/f/e;->f:Landroidx/core/f/d;

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_0

    .line 86
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 81
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static b(I)I
    .locals 1

    .prologue
    .line 91
    sparse-switch p0, :sswitch_data_0

    .line 102
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 95
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method
