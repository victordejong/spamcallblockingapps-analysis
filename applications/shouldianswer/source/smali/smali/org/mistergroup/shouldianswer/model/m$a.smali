.class public final Lorg/mistergroup/shouldianswer/model/m$a;
.super Ljava/lang/Object;
.source "Category.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;
    .locals 2

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    .line 39
    sget-object v1, Lorg/mistergroup/shouldianswer/model/n;->a:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/m;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const p1, 0x7f10017e

    .line 60
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.non_profit)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_1
    const p1, 0x7f1000ea

    .line 59
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.company)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_2
    const p1, 0x7f1001ac

    .line 58
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.personal)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_3
    const p1, 0x7f1000bb

    .line 57
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_robocall)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_4
    const p1, 0x7f1000bd

    .line 56
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_service)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_5
    const p1, 0x7f1000b2

    .line 55
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_company)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_6
    const p1, 0x7f1000b5

    .line 54
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026tegory_financial_service)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_7
    const p1, 0x7f1000b8

    .line 53
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_other)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_8
    const p1, 0x7f1000c0

    .line 52
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_survey)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_9
    const p1, 0x7f1000bf

    .line 51
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_sms)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_a
    const p1, 0x7f1000ba

    .line 50
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_prank)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_b
    const p1, 0x7f1000bc

    .line 49
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_scam)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_c
    const p1, 0x7f1000b9

    .line 48
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_political)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_d
    const p1, 0x7f1000b6

    .line 47
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_nonprofit)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_e
    const p1, 0x7f1000b4

    .line 46
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_fax)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_f
    const p1, 0x7f1000b1

    .line 45
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_callcentre)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_10
    const p1, 0x7f1000c2

    .line 44
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_unsolicited)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_11
    const p1, 0x7f1000b7

    .line 43
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_nuisance)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_12
    const p1, 0x7f1000be

    .line 42
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_silent)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_13
    const p1, 0x7f1000b3

    .line 41
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026.category_dept_collector)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_14
    const p1, 0x7f1000c1

    .line 40
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.category_telemarketer)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final a(I)Lorg/mistergroup/shouldianswer/model/m;
    .locals 6

    .line 36
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/m;->values()[Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    .line 71
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 36
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/m;->a()I

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

.method public final a()[Lorg/mistergroup/shouldianswer/model/m;
    .locals 1

    .line 35
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/m;->b()[Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    return-object v0
.end method
