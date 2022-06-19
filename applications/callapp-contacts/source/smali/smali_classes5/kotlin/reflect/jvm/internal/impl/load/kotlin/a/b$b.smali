.class final Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;)V

    return-void
.end method

.method private static synthetic a(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_3

    const/4 v3, 0x7

    if-eq p0, v3, :cond_2

    const/4 v3, 0x4

    if-eq p0, v3, :cond_1

    const/4 v3, 0x5

    if-eq p0, v3, :cond_0

    const-string v3, "name"

    aput-object v3, v0, v2

    goto :goto_0

    :cond_0
    const-string v3, "enumEntryName"

    aput-object v3, v0, v2

    goto :goto_0

    :cond_1
    const-string v3, "enumClassId"

    aput-object v3, v0, v2

    goto :goto_0

    :cond_2
    const-string v3, "classId"

    aput-object v3, v0, v2

    goto :goto_0

    :cond_3
    const-string v3, "classLiteralValue"

    aput-object v3, v0, v2

    :goto_0
    const-string v2, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "visitClassLiteral"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_0
    const-string/jumbo p0, "visitAnnotation"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_1
    const-string/jumbo p0, "visitEnum"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_2
    const-string/jumbo p0, "visitArray"

    aput-object p0, v0, v1

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a(I)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a(I)V

    .line 174
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "d1"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b$1;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;)V

    return-object p1

    :cond_1
    const-string v0, "d2"

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1198
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b$2;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b$2;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "k"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 137
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->getById(I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    return-void

    :cond_1
    const-string v0, "mv"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    instance-of p1, p2, [I

    if-eqz p1, :cond_6

    .line 142
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;

    check-cast p2, [I

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;[I)[I

    return-void

    :cond_2
    const-string v0, "bv"

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    instance-of p1, p2, [I

    if-eqz p1, :cond_6

    .line 147
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    check-cast p2, [I

    invoke-direct {v0, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/c;-><init>([I)V

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Lkotlin/reflect/jvm/internal/impl/b/c/a/c;)Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    return-void

    :cond_3
    const-string/jumbo v0, "xs"

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 152
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_4
    const-string/jumbo v0, "xi"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 157
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;I)I

    return-void

    :cond_5
    const-string v0, "pn"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 161
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 162
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->b(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x4

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 p1, 0x5

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a(I)V

    :cond_2
    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a(I)V

    :cond_1
    return-void
.end method
