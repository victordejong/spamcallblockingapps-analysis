.class final Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/load/kotlin/k<",
        "Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;
    .locals 10

    const-string v0, "representation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-boolean v4, Lkotlin/x;->a:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "empty string as JvmType"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 126
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 128
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->values()[Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    move-result-object v4

    .line 186
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x0

    if-ge v6, v5, :cond_5

    aget-object v8, v4, v6

    .line 128
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v1, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move-object v8, v7

    :goto_4
    if-eqz v8, :cond_6

    .line 129
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    invoke-direct {p1, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/c/d;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object p1

    :cond_6
    const/16 v4, 0x56

    if-ne v1, v4, :cond_7

    .line 133
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    invoke-direct {p1, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/c/d;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object p1

    :cond_7
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_8

    .line 134
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;->c(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object v0

    :cond_8
    const/16 v4, 0x4c

    if-ne v1, v4, :cond_a

    const-string v1, "$this$endsWith"

    .line 1835
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1836
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_9

    invoke-static {v0}, Lkotlin/h/p;->d(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1, v3}, Lkotlin/h/a;->a(CCZ)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_a

    const/4 v3, 0x1

    .line 136
    :cond_a
    sget-boolean v0, Lkotlin/x;->a:Z

    if-eqz v0, :cond_c

    if-eqz v3, :cond_b

    goto :goto_6

    .line 137
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type that is not primitive nor array should be Object, but \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 140
    :cond_c
    :goto_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;
    .locals 1

    const-string v0, "internalName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    const-string v0, "java/lang/Class"

    .line 6168
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;->d(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 114
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    const-string v0, "possiblyPrimitiveType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3117
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    .line 4095
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;->b:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    if-eqz v1, :cond_0

    .line 5095
    iget-object p1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;->b:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    .line 3119
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "byFqNameWithoutInnerClasses(possiblyPrimitiveType.jvmPrimitiveType.wrapperFqName).internalName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3118
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;->d(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    :cond_0
    return-object p1
.end method

.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;->c(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Ljava/lang/Object;
    .locals 1

    const-string v0, "primitiveType"

    .line 114
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5146
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l$a;->a:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/h;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 5154
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$b;

    .line 6110
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->h()Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    move-result-object p1

    .line 5154
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object p1

    .line 5153
    :pswitch_1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$b;

    .line 6109
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->g()Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    move-result-object p1

    .line 5153
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object p1

    .line 5152
    :pswitch_2
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$b;

    .line 6108
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->f()Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    move-result-object p1

    .line 5152
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object p1

    .line 5151
    :pswitch_3
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$b;

    .line 6107
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->e()Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    move-result-object p1

    .line 5151
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object p1

    .line 5150
    :pswitch_4
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$b;

    .line 6106
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->d()Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    move-result-object p1

    .line 5150
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object p1

    .line 5149
    :pswitch_5
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$b;

    .line 6105
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->c()Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    move-result-object p1

    .line 5149
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object p1

    .line 5148
    :pswitch_6
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$b;

    .line 6104
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    move-result-object p1

    .line 5148
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object p1

    .line 5147
    :pswitch_7
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$b;

    .line 6103
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    move-result-object p1

    .line 5147
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;)Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;

    .line 2098
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    .line 162
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "["

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    if-eqz v0, :cond_3

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;

    .line 3095
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$d;->b:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    const-string v0, "V"

    if-nez p1, :cond_1

    return-object v0

    .line 163
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p1

    .line 164
    :cond_3
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;

    .line 3097
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;->b:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;->d(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 114
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/l;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
