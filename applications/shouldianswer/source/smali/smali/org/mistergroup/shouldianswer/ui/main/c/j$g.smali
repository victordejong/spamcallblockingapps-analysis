.class final Lorg/mistergroup/shouldianswer/ui/main/c/j$g;
.super Lkotlin/c/b/a/d;
.source "LogsDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Ljava/util/ArrayList;Lkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "LogsDataSource.kt"
    c = {
        0xc3
    }
    d = "update"
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/main/c/j;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->c:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->a:Ljava/lang/Object;

    iget p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->b:I

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->c:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Ljava/util/ArrayList;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
