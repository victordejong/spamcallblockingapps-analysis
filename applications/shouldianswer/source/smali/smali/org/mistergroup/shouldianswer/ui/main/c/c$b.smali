.class final Lorg/mistergroup/shouldianswer/ui/main/c/c$b;
.super Lkotlin/c/b/a/d;
.source "LogItemNumber.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/c;->a(Lkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "LogItemNumber.kt"
    c = {
        0x34,
        0x38,
        0x3a,
        0x3b
    }
    d = "collectViewData"
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogItemNumber"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:J


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/c;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->a:Ljava/lang/Object;

    iget p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->b:I

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
