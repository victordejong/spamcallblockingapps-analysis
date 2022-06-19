.class final Lorg/mistergroup/shouldianswer/model/NumberInfo$g;
.super Lkotlin/c/b/a/d;
.source "NumberInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/model/NumberInfo;->u(Lkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "NumberInfo.kt"
    c = {
        0x240,
        0x24d,
        0x261,
        0x268,
        0x299
    }
    d = "computeBlockingIncoming"
    e = "org.mistergroup.shouldianswer.model.NumberInfo"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Z

.field j:Z


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->a:Ljava/lang/Object;

    iget p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->b:I

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/NumberInfo$g;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->u(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
