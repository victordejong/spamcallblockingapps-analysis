.class public final Lkotlin/reflect/jvm/internal/impl/resolve/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lkotlin/reflect/jvm/internal/impl/c/b;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(I)V

    .line 59
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(I)V

    .line 26
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(I)V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/a;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(I)V

    .line 43
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p0, v0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method private static synthetic a(I)V
    .locals 10

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v5, 0x2

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v9, "internalName"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_1
    aput-object v7, v6, v8

    goto :goto_2

    :pswitch_2
    const-string v9, "fqName"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_3
    const-string v9, "classId"

    aput-object v9, v6, v8

    :goto_2
    const-string v8, "byFqNameWithoutInnerClasses"

    const/4 v9, 0x1

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v7, v6, v9

    goto :goto_3

    :cond_2
    const-string v7, "getInternalName"

    aput-object v7, v6, v9

    goto :goto_3

    :cond_3
    const-string v7, "getPackageFqName"

    aput-object v7, v6, v9

    goto :goto_3

    :cond_4
    const-string v7, "getFqNameForClassNameWithoutDollars"

    aput-object v7, v6, v9

    goto :goto_3

    :cond_5
    aput-object v8, v6, v9

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v7, "byInternalName"

    aput-object v7, v6, v5

    goto :goto_4

    :pswitch_4
    const-string v7, "<init>"

    aput-object v7, v6, v5

    goto :goto_4

    :pswitch_5
    aput-object v8, v6, v5

    goto :goto_4

    :pswitch_6
    const-string v7, "byClassId"

    aput-object v7, v6, v5

    :goto_4
    :pswitch_7
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 4

    .line 89
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 4

    .line 94
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 95
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/c/b;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    if-nez v0, :cond_0

    const/4 v1, 0x7

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(I)V

    :cond_0
    return-object v0

    .line 96
    :cond_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v1, 0x8

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(I)V

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a:Ljava/lang/String;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 118
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a:Ljava/lang/String;

    return-object v0
.end method
