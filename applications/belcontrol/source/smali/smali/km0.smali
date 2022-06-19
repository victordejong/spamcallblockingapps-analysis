.class public final Lkm0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkm0$c;,
        Lkm0$d;
    }
.end annotation


# direct methods
.method public static a(Lkm0$d;Lkm0$c;)V
    .locals 1

    new-instance v0, Lkm0$a;

    invoke-direct {v0, p1, p0}, Lkm0$a;-><init>(Lkm0$c;Lkm0$d;)V

    invoke-static {v0}, Llm0;->j(Llm0$c;)V

    return-void
.end method

.method public static b(Lkm0$d;)Z
    .locals 1

    sget-object v0, Lkm0$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lkm0$d;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FBSDKFeature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkm0$d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkm0;->b(Lkm0$d;)Z

    move-result p0

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Llm0;->g(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Lkm0$d;)Z
    .locals 3

    sget-object v0, Lkm0$d;->b:Lkm0$d;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lkm0$d;->c:Lkm0$d;

    const/4 v2, 0x1

    if-ne v0, p0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lkm0$d;->b()Lkm0$d;

    move-result-object v0

    if-ne v0, p0, :cond_2

    invoke-static {p0}, Lkm0;->c(Lkm0$d;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {v0}, Lkm0;->d(Lkm0$d;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lkm0;->c(Lkm0$d;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
