.class final Lorg/mistergroup/shouldianswer/ui/search/d$b;
.super Lkotlin/e/b/i;
.source "SearchItem.kt"

# interfaces
.implements Lkotlin/e/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/d;-><init>(Lorg/mistergroup/shouldianswer/ui/search/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/d;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/d;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d$b;->a:Lorg/mistergroup/shouldianswer/ui/search/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/search/d$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 27
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->a()Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/search/d$b;->a:Lorg/mistergroup/shouldianswer/ui/search/d;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/search/d;->h()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
