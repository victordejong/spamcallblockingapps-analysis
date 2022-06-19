.class final Lorg/mistergroup/shouldianswer/utils/e$c;
.super Lkotlin/c/b/a/d;
.source "CallHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "CallHelper.kt"
    c = {
        0x37,
        0x3e,
        0x3f,
        0x40,
        0x41,
        0x42,
        0x50,
        0x51,
        0x5b,
        0x60,
        0x61
    }
    d = "checkNumber"
    e = "org.mistergroup.shouldianswer.utils.CallHelper"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/utils/e;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:J

.field m:Z


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/e;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$c;->c:Lorg/mistergroup/shouldianswer/utils/e;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$c;->a:Ljava/lang/Object;

    iget p1, p0, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/e$c;->c:Lorg/mistergroup/shouldianswer/utils/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
