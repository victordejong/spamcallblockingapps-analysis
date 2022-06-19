.class public Li8/b;
.super Ly8/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 1
    iput p2, p0, Li8/b;->e:I

    invoke-direct {p0, p1}, Ly8/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget v0, p0, Li8/b;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "invisible"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    .line 2
    :pswitch_1
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "isDefaultPhoneApp"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "defaultPhoneAppOption"

    .line 3
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    .line 4
    :pswitch_2
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "set_second_call"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    .line 5
    :pswitch_3
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "category"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    .line 6
    :goto_0
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "set_block_all_except_whitelist"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "preset"

    .line 7
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "set_use_calendar"

    .line 8
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    .line 9
    sget-object v0, Lv8/c;->c:Lv8/c;

    const-string v1, "calendar"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
