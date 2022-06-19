.class public final Lorg/mistergroup/shouldianswer/utils/l;
.super Ljava/lang/Object;
.source "MigrationHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/utils/l$a;,
        Lorg/mistergroup/shouldianswer/utils/l$c;,
        Lorg/mistergroup/shouldianswer/utils/l$b;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/l$b;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/utils/l$b;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/l;->a:Lorg/mistergroup/shouldianswer/utils/l$b;

    const/4 v0, 0x1

    .line 19
    sput v0, Lorg/mistergroup/shouldianswer/utils/l;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 17
    sget v0, Lorg/mistergroup/shouldianswer/utils/l;->b:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MigrationHelper.migrate start"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/l$d;->a:Lorg/mistergroup/shouldianswer/utils/l$d;

    check-cast v0, Lkotlin/e/a/b;

    invoke-virtual {p0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/l;->a(Landroid/content/Context;Lkotlin/e/a/b;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lkotlin/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/l$a;

    invoke-direct {v0, p1}, Lorg/mistergroup/shouldianswer/utils/l$a;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/utils/l$a;->a(Lkotlin/e/a/b;)V

    return-void
.end method
