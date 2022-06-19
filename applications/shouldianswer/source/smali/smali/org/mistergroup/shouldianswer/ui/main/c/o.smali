.class public final Lorg/mistergroup/shouldianswer/ui/main/c/o;
.super Ljava/lang/Object;
.source "NumberInfoCache.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/ui/main/c/o;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/o;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/o;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/o;->a:Lorg/mistergroup/shouldianswer/ui/main/c/o;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/o;->b:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/o;->c:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;)Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 10

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callType"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/p;->a:[I

    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/model/k;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 17
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/o;->b:Ljava/util/HashMap;

    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/o;->c:Ljava/util/HashMap;

    .line 20
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-eqz v2, :cond_1

    const-string p1, "it"

    invoke-static {v2, p1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 21
    :cond_1
    new-instance v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    .line 22
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public final a()V
    .locals 4

    .line 26
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "NumberInfoCache.invalidate"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/o;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
