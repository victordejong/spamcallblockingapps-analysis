.class public final enum Lcom/explorestack/iab/mraid/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/mraid/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/iab/mraid/j;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum BottomCenter:Lcom/explorestack/iab/mraid/j;

.field public static final enum BottomLeft:Lcom/explorestack/iab/mraid/j;

.field public static final enum BottomRight:Lcom/explorestack/iab/mraid/j;

.field public static final enum Center:Lcom/explorestack/iab/mraid/j;

.field public static final enum TopCenter:Lcom/explorestack/iab/mraid/j;

.field public static final enum TopLeft:Lcom/explorestack/iab/mraid/j;

.field public static final enum TopRight:Lcom/explorestack/iab/mraid/j;


# instance fields
.field private final gravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcom/explorestack/iab/mraid/j;

    const/16 v1, 0x33

    const-string v2, "TopLeft"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/explorestack/iab/mraid/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/iab/mraid/j;->TopLeft:Lcom/explorestack/iab/mraid/j;

    .line 13
    new-instance v1, Lcom/explorestack/iab/mraid/j;

    const/16 v2, 0x31

    const-string v4, "TopCenter"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/explorestack/iab/mraid/j;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/iab/mraid/j;->TopCenter:Lcom/explorestack/iab/mraid/j;

    .line 14
    new-instance v2, Lcom/explorestack/iab/mraid/j;

    const/16 v4, 0x35

    const-string v6, "TopRight"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/explorestack/iab/mraid/j;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/iab/mraid/j;->TopRight:Lcom/explorestack/iab/mraid/j;

    .line 15
    new-instance v4, Lcom/explorestack/iab/mraid/j;

    const/16 v6, 0x11

    const-string v8, "Center"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/explorestack/iab/mraid/j;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/iab/mraid/j;->Center:Lcom/explorestack/iab/mraid/j;

    .line 16
    new-instance v6, Lcom/explorestack/iab/mraid/j;

    const/16 v8, 0x53

    const-string v10, "BottomLeft"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/explorestack/iab/mraid/j;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/iab/mraid/j;->BottomLeft:Lcom/explorestack/iab/mraid/j;

    .line 17
    new-instance v8, Lcom/explorestack/iab/mraid/j;

    const/16 v10, 0x51

    const-string v12, "BottomCenter"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/explorestack/iab/mraid/j;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/explorestack/iab/mraid/j;->BottomCenter:Lcom/explorestack/iab/mraid/j;

    .line 18
    new-instance v10, Lcom/explorestack/iab/mraid/j;

    const/16 v12, 0x55

    const-string v14, "BottomRight"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/explorestack/iab/mraid/j;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/explorestack/iab/mraid/j;->BottomRight:Lcom/explorestack/iab/mraid/j;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/explorestack/iab/mraid/j;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    .line 10
    sput-object v12, Lcom/explorestack/iab/mraid/j;->$VALUES:[Lcom/explorestack/iab/mraid/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/explorestack/iab/mraid/j;->gravity:I

    return-void
.end method

.method public static fromJsString(Ljava/lang/String;)Lcom/explorestack/iab/mraid/j;
    .locals 1

    .line 31
    sget-object v0, Lcom/explorestack/iab/mraid/j;->TopRight:Lcom/explorestack/iab/mraid/j;

    invoke-static {p0, v0}, Lcom/explorestack/iab/mraid/j;->fromJsString(Ljava/lang/String;Lcom/explorestack/iab/mraid/j;)Lcom/explorestack/iab/mraid/j;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsString(Ljava/lang/String;Lcom/explorestack/iab/mraid/j;)Lcom/explorestack/iab/mraid/j;
    .locals 2

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "top-center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "bottom-center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "bottom-right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "bottom-left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "top-left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "top-right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    .line 51
    :pswitch_0
    sget-object p0, Lcom/explorestack/iab/mraid/j;->TopCenter:Lcom/explorestack/iab/mraid/j;

    return-object p0

    .line 53
    :pswitch_1
    sget-object p0, Lcom/explorestack/iab/mraid/j;->BottomCenter:Lcom/explorestack/iab/mraid/j;

    return-object p0

    .line 49
    :pswitch_2
    sget-object p0, Lcom/explorestack/iab/mraid/j;->BottomRight:Lcom/explorestack/iab/mraid/j;

    return-object p0

    .line 47
    :pswitch_3
    sget-object p0, Lcom/explorestack/iab/mraid/j;->BottomLeft:Lcom/explorestack/iab/mraid/j;

    return-object p0

    .line 41
    :pswitch_4
    sget-object p0, Lcom/explorestack/iab/mraid/j;->TopLeft:Lcom/explorestack/iab/mraid/j;

    return-object p0

    .line 43
    :pswitch_5
    sget-object p0, Lcom/explorestack/iab/mraid/j;->TopRight:Lcom/explorestack/iab/mraid/j;

    return-object p0

    .line 45
    :pswitch_6
    sget-object p0, Lcom/explorestack/iab/mraid/j;->Center:Lcom/explorestack/iab/mraid/j;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_6
        -0x4e5f7c5c -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/mraid/j;
    .locals 1

    .line 10
    const-class v0, Lcom/explorestack/iab/mraid/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/mraid/j;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/mraid/j;
    .locals 1

    .line 10
    sget-object v0, Lcom/explorestack/iab/mraid/j;->$VALUES:[Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0}, [Lcom/explorestack/iab/mraid/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/mraid/j;

    return-object v0
.end method


# virtual methods
.method public final getGravity()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/explorestack/iab/mraid/j;->gravity:I

    return v0
.end method
