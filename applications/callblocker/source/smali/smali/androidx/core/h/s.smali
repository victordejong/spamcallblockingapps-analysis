.class public final Landroidx/core/h/s;
.super Ljava/lang/Object;
.source "PointerIconCompat.java"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroidx/core/h/s;->a:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroidx/core/h/s;
    .locals 2

    .prologue
    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Landroidx/core/h/s;

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/h/s;-><init>(Ljava/lang/Object;)V

    .line 133
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/h/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/h/s;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroidx/core/h/s;->a:Ljava/lang/Object;

    return-object v0
.end method
