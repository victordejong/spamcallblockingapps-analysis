.class final Lorg/mistergroup/shouldianswer/utils/t$b;
.super Lkotlin/c/b/a/d;
.source "RingingAlertHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/t;->a(Lkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "RingingAlertHelper.kt"
    c = {
        0x3a,
        0x41,
        0x48,
        0x49
    }
    d = "init"
    e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/utils/t;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/t;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$b;->c:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$b;->a:Ljava/lang/Object;

    iget p1, p0, Lorg/mistergroup/shouldianswer/utils/t$b;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/mistergroup/shouldianswer/utils/t$b;->b:I

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$b;->c:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/utils/t;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
