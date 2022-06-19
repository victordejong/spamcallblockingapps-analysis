.class public Li8/f;
.super Ly8/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 1
    iput p2, p0, Li8/f;->e:I

    invoke-direct {p0, p1}, Ly8/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget v0, p0, Li8/f;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    sget-object v0, Lv8/c;->c:Lv8/c;

    const-string v1, "realCallLogName"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    .line 2
    :pswitch_1
    sget-object v0, Lv8/c;->c:Lv8/c;

    const-string v1, "inventoryPrice"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "inventoryPriceCurrencyCode"

    .line 3
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "inventoryType"

    .line 4
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "inventoryTitle"

    .line 5
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "inventoryDescription"

    .line 6
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    const-string v1, "inventoryPriceAmountMicros"

    .line 7
    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    .line 8
    :goto_0
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "appvc"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    .line 9
    sget-object v0, Lv8/c;->c:Lv8/c;

    const-string v1, "endcall_result"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
