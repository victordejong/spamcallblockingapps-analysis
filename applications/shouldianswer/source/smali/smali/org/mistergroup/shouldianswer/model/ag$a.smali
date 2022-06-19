.class public final Lorg/mistergroup/shouldianswer/model/ag$a;
.super Ljava/lang/Object;
.source "Rating.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ag$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/ag;)Ljava/lang/String;
    .locals 4

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    const-string v1, "context.getString(R.string.rating_unknown)"

    const v2, 0x7f1001bf

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 19
    :cond_0
    sget-object v3, Lorg/mistergroup/shouldianswer/model/ah;->a:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ag;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const p1, 0x7f1001bd

    .line 23
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.rating_neutral)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    const p1, 0x7f1001bc

    .line 22
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.rating_negative)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const p1, 0x7f1001be

    .line 21
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.rating_positive)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final a(I)Lorg/mistergroup/shouldianswer/model/ag;
    .locals 6

    .line 14
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/ag;->values()[Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v0

    .line 71
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 14
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Array contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final b(Lorg/mistergroup/shouldianswer/model/ag;)I
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ah;->b:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ag;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const p1, 0x7f08010e

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const p1, 0x7f08010a

    goto :goto_0

    :cond_2
    const p1, 0x7f080108

    goto :goto_0

    :cond_3
    const p1, 0x7f08010c

    :goto_0
    return p1
.end method

.method public final c(Lorg/mistergroup/shouldianswer/model/ag;)I
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ah;->c:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ag;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const p1, 0x7f08010d

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const p1, 0x7f080109

    goto :goto_0

    :cond_2
    const p1, 0x7f080107

    goto :goto_0

    :cond_3
    const p1, 0x7f08010b

    :goto_0
    return p1
.end method
