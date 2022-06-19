.class public final Lb/h/i/d;
.super Ljava/lang/Object;
.source "SplashScreen.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CustomSplashScreen"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/i/d$a;,
        Lb/h/i/d$d;,
        Lb/h/i/d$c;,
        Lb/h/i/d$b;
    }
.end annotation


# static fields
.field public static final a:Lb/h/i/d$a;


# instance fields
.field private final b:Lb/h/i/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/h/i/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/h/i/d$a;-><init>(Lkotlin/c/a/a;)V

    sput-object v0, Lb/h/i/d;->a:Lb/h/i/d$a;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/h/i/d$b;

    invoke-direct {v0, p1}, Lb/h/i/d$b;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lb/h/i/d$c;

    invoke-direct {v0, p1}, Lb/h/i/d$c;-><init>(Landroid/app/Activity;)V

    .line 4
    :goto_0
    iput-object v0, p0, Lb/h/i/d;->b:Lb/h/i/d$c;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Lkotlin/c/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/h/i/d;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic a(Lb/h/i/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/h/i/d;->b()V

    return-void
.end method

.method private final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/i/d;->b:Lb/h/i/d$c;

    invoke-virtual {v0}, Lb/h/i/d$c;->b()V

    return-void
.end method

.method public static final c(Landroid/app/Activity;)Lb/h/i/d;
    .locals 1

    sget-object v0, Lb/h/i/d;->a:Lb/h/i/d$a;

    invoke-virtual {v0, p0}, Lb/h/i/d$a;->a(Landroid/app/Activity;)Lb/h/i/d;

    move-result-object p0

    return-object p0
.end method
