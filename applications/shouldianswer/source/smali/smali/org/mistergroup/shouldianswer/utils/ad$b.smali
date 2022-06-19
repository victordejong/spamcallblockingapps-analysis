.class final Lorg/mistergroup/shouldianswer/utils/ad$b;
.super Lkotlin/c/b/a/d;
.source "WebService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/ad;->a(ZLkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "WebService.kt"
    c = {
        0xa8,
        0xa9,
        0xbd,
        0xcb,
        0xee,
        0xef
    }
    d = "uploadData"
    e = "org.mistergroup.shouldianswer.utils.WebService"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/utils/ad;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:Ljava/lang/Object;

.field n:Ljava/lang/Object;

.field o:Ljava/lang/Object;

.field p:Z

.field q:J

.field r:J

.field s:I


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/ad;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/ad$b;->c:Lorg/mistergroup/shouldianswer/utils/ad;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/ad$b;->a:Ljava/lang/Object;

    iget p1, p0, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/ad$b;->c:Lorg/mistergroup/shouldianswer/utils/ad;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lorg/mistergroup/shouldianswer/utils/ad;->a(ZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
