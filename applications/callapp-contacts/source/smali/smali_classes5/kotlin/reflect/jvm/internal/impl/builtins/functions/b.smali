.class public final enum Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;

.field public static final enum Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

.field public static final enum KFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

.field public static final enum KSuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

.field public static final enum SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;


# instance fields
.field private final classNamePrefix:Ljava/lang/String;

.field private final packageFqName:Lkotlin/reflect/jvm/internal/impl/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 13
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "Function"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    .line 14
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v4, "SuspendFunction"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    .line 15
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j;->j:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v6, "KFunction"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->KFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    .line 16
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/j;->j:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v8, "KSuspendFunction"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6, v8}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->KSuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    const/4 v6, 0x4

    new-array v6, v6, [Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->packageFqName:Lkotlin/reflect/jvm/internal/impl/c/b;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->classNamePrefix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 53
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final getClassNamePrefix()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->classNamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageFqName()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 12
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->packageFqName:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public final numberedClassName(I)Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    .line 18
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->classNamePrefix:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    const-string v0, "identifier(\"$classNamePrefix$arity\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
