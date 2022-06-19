.class public final Lb/h/i/d$a;
.super Ljava/lang/Object;
.source "SplashScreen.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/c/a/a;)V
    .locals 0

    invoke-direct {p0}, Lb/h/i/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Lb/h/i/d;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/c/a/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lb/h/i/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb/h/i/d;-><init>(Landroid/app/Activity;Lkotlin/c/a/a;)V

    .line 2
    invoke-static {v0}, Lb/h/i/d;->a(Lb/h/i/d;)V

    return-object v0
.end method
