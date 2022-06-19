.class public Li8/d;
.super Ly8/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 1
    iput p2, p0, Li8/d;->e:I

    invoke-direct {p0, p1}, Ly8/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget v0, p0, Li8/d;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "set_block_all_except_contacts"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "set_silence_ringer"

    .line 2
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    .line 3
    :pswitch_1
    sget-object v0, Lv8/c;->c:Lv8/c;

    const-string v1, "alternativeName"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    .line 4
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "checked"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "nameType"

    .line 5
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    .line 6
    :pswitch_2
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "blockmethod"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "dnd"

    .line 7
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "system_vibrate"

    .line 8
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    .line 9
    :goto_0
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "set_use_sim1"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "set_use_sim2"

    .line 10
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
