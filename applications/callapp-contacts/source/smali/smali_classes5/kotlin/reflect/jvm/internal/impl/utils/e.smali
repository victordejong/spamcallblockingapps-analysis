.class public final Lkotlin/reflect/jvm/internal/impl/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/utils/e$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/utils/e$a;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/utils/g;

.field public static final j:Lkotlin/reflect/jvm/internal/impl/utils/e;

.field public static final k:Lkotlin/reflect/jvm/internal/impl/utils/e;

.field public static final l:Lkotlin/reflect/jvm/internal/impl/utils/e;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/impl/utils/g;

.field public final c:Lkotlin/reflect/jvm/internal/impl/utils/g;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/utils/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Lkotlin/reflect/jvm/internal/impl/utils/g;

.field public final g:Z

.field public final h:Z

.field private final m:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->a:Lkotlin/reflect/jvm/internal/impl/utils/e$a;

    .line 64
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/g;->WARN:Lkotlin/reflect/jvm/internal/impl/utils/g;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->i:Lkotlin/reflect/jvm/internal/impl/utils/g;

    .line 67
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/e;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/utils/g;->WARN:Lkotlin/reflect/jvm/internal/impl/utils/g;

    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/utils/e;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/g;Lkotlin/reflect/jvm/internal/impl/utils/g;Ljava/util/Map;ZLkotlin/reflect/jvm/internal/impl/utils/g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->j:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 70
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/e;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/utils/g;->IGNORE:Lkotlin/reflect/jvm/internal/impl/utils/g;

    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x18

    const/16 v16, 0x0

    move-object v9, v0

    move-object v10, v11

    invoke-direct/range {v9 .. v16}, Lkotlin/reflect/jvm/internal/impl/utils/e;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/g;Lkotlin/reflect/jvm/internal/impl/utils/g;Ljava/util/Map;ZLkotlin/reflect/jvm/internal/impl/utils/g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->k:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 73
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/e;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/utils/g;->STRICT:Lkotlin/reflect/jvm/internal/impl/utils/g;

    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object v4

    move-object v1, v0

    move-object v2, v3

    invoke-direct/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/utils/e;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/g;Lkotlin/reflect/jvm/internal/impl/utils/g;Ljava/util/Map;ZLkotlin/reflect/jvm/internal/impl/utils/g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->l:Lkotlin/reflect/jvm/internal/impl/utils/e;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/utils/g;Lkotlin/reflect/jvm/internal/impl/utils/g;Ljava/util/Map;ZLkotlin/reflect/jvm/internal/impl/utils/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/utils/g;",
            "Lkotlin/reflect/jvm/internal/impl/utils/g;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/utils/g;",
            ">;Z",
            "Lkotlin/reflect/jvm/internal/impl/utils/g;",
            ")V"
        }
    .end annotation

    const-string v0, "globalJsr305Level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userDefinedLevelForSpecificJsr305Annotation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jspecifyReportLevel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/e;->b:Lkotlin/reflect/jvm/internal/impl/utils/g;

    .line 35
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/utils/e;->c:Lkotlin/reflect/jvm/internal/impl/utils/g;

    .line 36
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/utils/e;->d:Ljava/util/Map;

    .line 37
    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/utils/e;->e:Z

    .line 38
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/utils/e;->f:Lkotlin/reflect/jvm/internal/impl/utils/g;

    .line 40
    new-instance p4, Lkotlin/reflect/jvm/internal/impl/utils/e$b;

    invoke-direct {p4, p0}, Lkotlin/reflect/jvm/internal/impl/utils/e$b;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/e;)V

    check-cast p4, Lkotlin/jvm/functions/Function0;

    invoke-static {p4}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/utils/e;->m:Lkotlin/Lazy;

    .line 54
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/utils/g;->IGNORE:Lkotlin/reflect/jvm/internal/impl/utils/g;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p4, :cond_0

    .line 55
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/utils/g;->IGNORE:Lkotlin/reflect/jvm/internal/impl/utils/g;

    if-ne p2, p1, :cond_0

    .line 56
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/e;->g:Z

    if-nez p1, :cond_2

    .line 58
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/utils/g;->IGNORE:Lkotlin/reflect/jvm/internal/impl/utils/g;

    if-ne p5, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/e;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/utils/g;Lkotlin/reflect/jvm/internal/impl/utils/g;Ljava/util/Map;ZLkotlin/reflect/jvm/internal/impl/utils/g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 38
    sget-object p5, Lkotlin/reflect/jvm/internal/impl/utils/e;->i:Lkotlin/reflect/jvm/internal/impl/utils/g;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 33
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/utils/e;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/g;Lkotlin/reflect/jvm/internal/impl/utils/g;Ljava/util/Map;ZLkotlin/reflect/jvm/internal/impl/utils/g;)V

    return-void
.end method
