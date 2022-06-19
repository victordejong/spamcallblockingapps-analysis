.class final Lorg/mistergroup/shouldianswer/ui/main/b$e;
.super Lkotlin/c/b/a/d;
.source "MainBanners.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b;->b(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "MainBanners.kt"
    c = {
        0x68,
        0x6c
    }
    d = "checkBlockingNotActive"
    e = "org.mistergroup.shouldianswer.ui.main.MainBanners"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/main/b;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->c:Lorg/mistergroup/shouldianswer/ui/main/b;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->a:Ljava/lang/Object;

    iget p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->b:I

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$e;->c:Lorg/mistergroup/shouldianswer/ui/main/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lorg/mistergroup/shouldianswer/ui/main/b;->b(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
