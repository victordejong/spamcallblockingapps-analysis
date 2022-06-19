.class public final enum Lcom/yanzhenjie/nohttp/RequestMethod;
.super Ljava/lang/Enum;
.source "RequestMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yanzhenjie/nohttp/RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yanzhenjie/nohttp/RequestMethod;

.field public static final enum DELETE:Lcom/yanzhenjie/nohttp/RequestMethod;

.field public static final enum GET:Lcom/yanzhenjie/nohttp/RequestMethod;

.field public static final enum HEAD:Lcom/yanzhenjie/nohttp/RequestMethod;

.field public static final enum OPTIONS:Lcom/yanzhenjie/nohttp/RequestMethod;

.field public static final enum PATCH:Lcom/yanzhenjie/nohttp/RequestMethod;

.field public static final enum POST:Lcom/yanzhenjie/nohttp/RequestMethod;

.field public static final enum PUT:Lcom/yanzhenjie/nohttp/RequestMethod;

.field public static final enum TRACE:Lcom/yanzhenjie/nohttp/RequestMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/RequestMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/yanzhenjie/nohttp/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    .line 2
    new-instance v1, Lcom/yanzhenjie/nohttp/RequestMethod;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/yanzhenjie/nohttp/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/yanzhenjie/nohttp/RequestMethod;->POST:Lcom/yanzhenjie/nohttp/RequestMethod;

    .line 3
    new-instance v3, Lcom/yanzhenjie/nohttp/RequestMethod;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/yanzhenjie/nohttp/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/yanzhenjie/nohttp/RequestMethod;->PUT:Lcom/yanzhenjie/nohttp/RequestMethod;

    .line 4
    new-instance v5, Lcom/yanzhenjie/nohttp/RequestMethod;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/yanzhenjie/nohttp/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/yanzhenjie/nohttp/RequestMethod;->DELETE:Lcom/yanzhenjie/nohttp/RequestMethod;

    .line 5
    new-instance v7, Lcom/yanzhenjie/nohttp/RequestMethod;

    const-string v9, "HEAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/yanzhenjie/nohttp/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/yanzhenjie/nohttp/RequestMethod;->HEAD:Lcom/yanzhenjie/nohttp/RequestMethod;

    .line 6
    new-instance v9, Lcom/yanzhenjie/nohttp/RequestMethod;

    const-string v11, "PATCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/yanzhenjie/nohttp/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/yanzhenjie/nohttp/RequestMethod;->PATCH:Lcom/yanzhenjie/nohttp/RequestMethod;

    .line 7
    new-instance v11, Lcom/yanzhenjie/nohttp/RequestMethod;

    const-string v13, "OPTIONS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/yanzhenjie/nohttp/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/yanzhenjie/nohttp/RequestMethod;->OPTIONS:Lcom/yanzhenjie/nohttp/RequestMethod;

    .line 8
    new-instance v13, Lcom/yanzhenjie/nohttp/RequestMethod;

    const-string v15, "TRACE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/yanzhenjie/nohttp/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/yanzhenjie/nohttp/RequestMethod;->TRACE:Lcom/yanzhenjie/nohttp/RequestMethod;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/yanzhenjie/nohttp/RequestMethod;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/yanzhenjie/nohttp/RequestMethod;->$VALUES:[Lcom/yanzhenjie/nohttp/RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/RequestMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static reverse(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/RequestMethod;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GET"

    if-eqz v0, :cond_0

    move-object p0, v1

    .line 2
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DELETE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "TRACE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "PATCH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "HEAD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "PUT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "OPTIONS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 4
    sget-object p0, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object p0

    .line 5
    :pswitch_0
    sget-object p0, Lcom/yanzhenjie/nohttp/RequestMethod;->DELETE:Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object p0

    .line 6
    :pswitch_1
    sget-object p0, Lcom/yanzhenjie/nohttp/RequestMethod;->TRACE:Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object p0

    .line 7
    :pswitch_2
    sget-object p0, Lcom/yanzhenjie/nohttp/RequestMethod;->PATCH:Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object p0

    .line 8
    :pswitch_3
    sget-object p0, Lcom/yanzhenjie/nohttp/RequestMethod;->POST:Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object p0

    .line 9
    :pswitch_4
    sget-object p0, Lcom/yanzhenjie/nohttp/RequestMethod;->HEAD:Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object p0

    .line 10
    :pswitch_5
    sget-object p0, Lcom/yanzhenjie/nohttp/RequestMethod;->PUT:Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object p0

    .line 11
    :pswitch_6
    sget-object p0, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object p0

    .line 12
    :pswitch_7
    sget-object p0, Lcom/yanzhenjie/nohttp/RequestMethod;->OPTIONS:Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x1faded82 -> :sswitch_7
        0x11336 -> :sswitch_6
        0x136ef -> :sswitch_5
        0x21c5e0 -> :sswitch_4
        0x2590a0 -> :sswitch_3
        0x4862828 -> :sswitch_2
        0x4c5f925 -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/RequestMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/yanzhenjie/nohttp/RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/yanzhenjie/nohttp/RequestMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->$VALUES:[Lcom/yanzhenjie/nohttp/RequestMethod;

    invoke-virtual {v0}, [Lcom/yanzhenjie/nohttp/RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yanzhenjie/nohttp/RequestMethod;

    return-object v0
.end method


# virtual methods
.method public allowRequestBody()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod$1;->$SwitchMap$com$yanzhenjie$nohttp$RequestMethod:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/RequestMethod;->value:Ljava/lang/String;

    return-object v0
.end method
