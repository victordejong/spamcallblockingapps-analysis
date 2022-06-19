.class public final enum Landroidx/lifecycle/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/lifecycle/j$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/lifecycle/j$a;

.field public static final enum ON_ANY:Landroidx/lifecycle/j$a;

.field public static final enum ON_CREATE:Landroidx/lifecycle/j$a;

.field public static final enum ON_DESTROY:Landroidx/lifecycle/j$a;

.field public static final enum ON_PAUSE:Landroidx/lifecycle/j$a;

.field public static final enum ON_RESUME:Landroidx/lifecycle/j$a;

.field public static final enum ON_START:Landroidx/lifecycle/j$a;

.field public static final enum ON_STOP:Landroidx/lifecycle/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 133
    new-instance v0, Landroidx/lifecycle/j$a;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;

    .line 137
    new-instance v1, Landroidx/lifecycle/j$a;

    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/lifecycle/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;

    .line 141
    new-instance v3, Landroidx/lifecycle/j$a;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/lifecycle/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;

    .line 145
    new-instance v5, Landroidx/lifecycle/j$a;

    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/lifecycle/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;

    .line 149
    new-instance v7, Landroidx/lifecycle/j$a;

    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/lifecycle/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;

    .line 153
    new-instance v9, Landroidx/lifecycle/j$a;

    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroidx/lifecycle/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;

    .line 157
    new-instance v11, Landroidx/lifecycle/j$a;

    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroidx/lifecycle/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/lifecycle/j$a;->ON_ANY:Landroidx/lifecycle/j$a;

    const/4 v13, 0x7

    new-array v13, v13, [Landroidx/lifecycle/j$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 128
    sput-object v13, Landroidx/lifecycle/j$a;->$VALUES:[Landroidx/lifecycle/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static downFrom(Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$a;
    .locals 1

    .line 169
    sget-object v0, Landroidx/lifecycle/j$1;->a:[I

    invoke-virtual {p0}, Landroidx/lifecycle/j$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 175
    :cond_0
    sget-object p0, Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;

    return-object p0

    .line 173
    :cond_1
    sget-object p0, Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;

    return-object p0

    .line 171
    :cond_2
    sget-object p0, Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;

    return-object p0
.end method

.method public static downTo(Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$a;
    .locals 1

    .line 191
    sget-object v0, Landroidx/lifecycle/j$1;->a:[I

    invoke-virtual {p0}, Landroidx/lifecycle/j$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_0
    sget-object p0, Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;

    return-object p0

    .line 197
    :cond_1
    sget-object p0, Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;

    return-object p0

    .line 195
    :cond_2
    sget-object p0, Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;

    return-object p0
.end method

.method public static upFrom(Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$a;
    .locals 1

    .line 213
    sget-object v0, Landroidx/lifecycle/j$1;->a:[I

    invoke-virtual {p0}, Landroidx/lifecycle/j$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_0
    sget-object p0, Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;

    return-object p0

    .line 219
    :cond_1
    sget-object p0, Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;

    return-object p0

    .line 217
    :cond_2
    sget-object p0, Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;

    return-object p0
.end method

.method public static upTo(Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$a;
    .locals 1

    .line 235
    sget-object v0, Landroidx/lifecycle/j$1;->a:[I

    invoke-virtual {p0}, Landroidx/lifecycle/j$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_0
    sget-object p0, Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;

    return-object p0

    .line 239
    :cond_1
    sget-object p0, Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;

    return-object p0

    .line 237
    :cond_2
    sget-object p0, Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/j$a;
    .locals 1

    .line 128
    const-class v0, Landroidx/lifecycle/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j$a;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/j$a;
    .locals 1

    .line 128
    sget-object v0, Landroidx/lifecycle/j$a;->$VALUES:[Landroidx/lifecycle/j$a;

    invoke-virtual {v0}, [Landroidx/lifecycle/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/j$a;

    return-object v0
.end method


# virtual methods
.method public final getTargetState()Landroidx/lifecycle/j$b;
    .locals 3

    .line 258
    sget-object v0, Landroidx/lifecycle/j$1;->b:[I

    invoke-virtual {p0}, Landroidx/lifecycle/j$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no target state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :pswitch_0
    sget-object v0, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    return-object v0

    .line 266
    :pswitch_1
    sget-object v0, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    return-object v0

    .line 264
    :pswitch_2
    sget-object v0, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    return-object v0

    .line 261
    :pswitch_3
    sget-object v0, Landroidx/lifecycle/j$b;->CREATED:Landroidx/lifecycle/j$b;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
