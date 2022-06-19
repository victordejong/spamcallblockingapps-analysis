.class public final Lorg/mistergroup/shouldianswer/model/x;
.super Ljava/lang/Object;
.source "NumberInfo.kt"


# direct methods
.method public static final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_6

    .line 943
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-2"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 944
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "HIDDEN"

    return-object p0

    .line 945
    :cond_1
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 946
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    if-lez v0, :cond_4

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 950
    :cond_4
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 953
    :cond_5
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const-string p0, "EMPTY"

    return-object p0
.end method

.method public static final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 959
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static final b(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 964
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-2"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 969
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-2"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final d(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z
    .locals 0

    .line 973
    invoke-static {p0}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 978
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 979
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-1"

    invoke-static {v1, v3, v2}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 980
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-2"

    invoke-static {v1, v3, v2}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 981
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UNAVAILABLE"

    invoke-static {v1, v3, v2}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 982
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ABSENT NUMBER"

    invoke-static {v1, v3, v2}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 983
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NNN"

    invoke-static {v1, v3, v2}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 984
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PRIVATE NUMBER"

    invoke-static {v1, v3, v2}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 985
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ANONYMOUS"

    invoke-static {p0, v1, v2}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method
