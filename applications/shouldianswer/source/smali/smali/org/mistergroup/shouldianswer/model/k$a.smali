.class public final Lorg/mistergroup/shouldianswer/model/k$a;
.super Ljava/lang/Object;
.source "CallType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/k;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lorg/mistergroup/shouldianswer/model/l;->b:[I

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/k;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const v0, 0x7f0401ea

    const v1, 0x7f0401e8

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 64
    :pswitch_0
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {p2, p1, v1}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 63
    :pswitch_1
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {p2, p1, v1}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 62
    :pswitch_2
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {p2, p1, v1}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 61
    :pswitch_3
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {p2, p1, v1}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 60
    :pswitch_4
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {p2, p1, v0}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 59
    :pswitch_5
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {p2, p1, v0}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result p1

    :goto_0
    return p1

    nop

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

.method public final a(I)Lorg/mistergroup/shouldianswer/model/k;
    .locals 5

    .line 28
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/k;->values()[Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/k;->a()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/k;)Z
    .locals 1

    const-string v0, "callType"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->f:Lorg/mistergroup/shouldianswer/model/k;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->e:Lorg/mistergroup/shouldianswer/model/k;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->c:Lorg/mistergroup/shouldianswer/model/k;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->d:Lorg/mistergroup/shouldianswer/model/k;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b(Lorg/mistergroup/shouldianswer/model/k;)I
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/mistergroup/shouldianswer/model/l;->a:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/k;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0800ea

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0800ac

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0800a3

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0800b2

    goto :goto_0

    :pswitch_4
    const p1, 0x7f0800ae

    goto :goto_0

    :pswitch_5
    const p1, 0x7f0800b4

    :goto_0
    return p1

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

.method public final b(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/k;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callType"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lorg/mistergroup/shouldianswer/model/l;->c:[I

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/k;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 95
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    const p2, 0x7f10021c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.unknown)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const p2, 0x7f10008d

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.answered_externally)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const p2, 0x7f1000a2

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.blocked)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const p2, 0x7f1001c3

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.rejected)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const p2, 0x7f100225

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.voicemail)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const p2, 0x7f100173

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.missed_call)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const p2, 0x7f1001a1

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.outgoing_call)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const p2, 0x7f10014c

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.incoming_call)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    nop

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
