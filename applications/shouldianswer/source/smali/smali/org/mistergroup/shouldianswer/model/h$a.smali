.class public final Lorg/mistergroup/shouldianswer/model/h$a;
.super Ljava/lang/Object;
.source "BlockReason.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/h;)Ljava/lang/String;
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    .line 45
    sget-object v1, Lorg/mistergroup/shouldianswer/model/i;->a:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/h;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown"

    return-object p1

    :pswitch_0
    const p1, 0x7f100098

    .line 56
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.block_reason_exception)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_1
    const p1, 0x7f100097

    .line 55
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026eason_blocked_group_list)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_2
    const p1, 0x7f100096

    .line 54
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026son_blocked_contact_list)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_3
    const p1, 0x7f10009b

    .line 53
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026eason_masked_number_list)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_4
    const p1, 0x7f10009d

    .line 52
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026on_negative_local_rating)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_5
    const p1, 0x7f1000a0

    .line 51
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026ock_reason_unallowed_any)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_6
    const p1, 0x7f10009a

    .line 50
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.block_reason_hidden)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_7
    const p1, 0x7f100099

    .line 49
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.block_reason_foreign)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_8
    const p1, 0x7f10009f

    .line 48
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.block_reason_premium)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_9
    const p1, 0x7f10009c

    .line 47
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026egative_community_rating)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_a
    const p1, 0x7f10009e

    .line 46
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026k_reason_not_in_contacts)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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
