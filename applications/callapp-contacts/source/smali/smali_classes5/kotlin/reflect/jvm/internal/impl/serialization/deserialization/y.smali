.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y$a;
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$i;)Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y$a;->a:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$i;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    .line 19
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    return-object p0

    .line 18
    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DELEGATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    return-object p0

    .line 16
    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    return-object p0

    .line 15
    :cond_4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$w;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 31
    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y$a;->c:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$w;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_0
    const-string p1, "PRIVATE"

    packed-switch p0, :pswitch_data_0

    .line 38
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 37
    :pswitch_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const-string p1, "LOCAL"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 36
    :pswitch_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const-string p1, "PUBLIC"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 35
    :pswitch_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const-string p1, "PROTECTED"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 34
    :pswitch_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const-string p1, "PRIVATE_TO_THIS"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 33
    :pswitch_4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 32
    :pswitch_5
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const-string p1, "INTERNAL"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
