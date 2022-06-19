.class final Lorg/mistergroup/shouldianswer/MyApp$c;
.super Lkotlin/e/b/i;
.source "MyApp.kt"

# interfaces
.implements Lkotlin/e/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/MyApp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/a<",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/MyApp;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/MyApp;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/MyApp$c;->a:Lorg/mistergroup/shouldianswer/MyApp;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/MyApp$c;->b()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/text/DateFormat;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/MyApp$c;->a:Lorg/mistergroup/shouldianswer/MyApp;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method
