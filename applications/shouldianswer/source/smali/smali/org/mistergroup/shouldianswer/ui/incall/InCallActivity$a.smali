.class public final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;
.super Ljava/lang/Object;
.source "InCallActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 663
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x20000

    .line 667
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p2
.end method
